## Problem 1: Sleeping Barber Problem

### Psuedocode

```pseudo
\begin{algorithm}
\caption{Sleeping Barber Problem}
\begin{algorithmic}
\procedure{main}{argc, argv}
	\state{Seed random number generator}
	\state{Validate command-line arguments and parse positive integers}
	\state{Set configuration: chairs, num\_customers, maximum\_time}
	\state{Initialize chair\_occupied array of size chairs to false}
	\state{Spawn barber thread (ID 0)}
	\state{Spawn customer threads (IDs 1 to num\_customers)}
	\For{each customer thread}
		\state{Join customer thread}
	\EndFor
	\state{Lock mutex, set shutdown\_barber to true, and notify barber\_cv}
	\state{Join barber thread}
	\state{Print final statistics report}
\endprocedure

\procedure{barber}{id}
	\state{Initialize barber's VectorClock}
	\while{true}
		\state{Lock mutex}
		\If{queue is empty and shutdown\_barber is false}
			\state{Print "going to sleep"}
			\state{Wait on barber\_cv until queue is non-empty OR shutdown\_barber is true}
			\If{queue is not empty}
				\state{Print "awakened by a customer"}
			\EndIf
		\EndIf
		\If{queue is empty}
			\state{Break loop and exit (only possible when shutdown\_barber is true)}
		\EndIf
		\state{Dequeue next customer message}
		\state{Calculate wait duration and update served count, total, min, and max wait statistics}
		\state{Update local VectorClock with customer's VC and tick}
		\state{Unlock mutex}
		\state{Simulate haircut duration (200 ms)}
		\state{Lock mutex}
		\state{Tick local VectorClock}
		\state{Store barber's VC in customer's return\_vector\_clock}
		\state{Set customer's haircut\_done flag to true}
		\state{Notify customer via its customer\_done\_cv}
		\state{Unlock mutex}
	\endwhile
\endprocedure

\procedure{customer}{id}
	\state{Initialize customer's VectorClock}
	\state{Sleep for random arrival delay of 1 to maximum\_time seconds}
	\state{Lock mutex and tick local VectorClock}
	\state{Record arrival timestamp}
	\state{Search chair\_occupied for the first unoccupied chair}
	\If{an unoccupied chair is found}
		\state{Mark chair as occupied}
		\state{Push message to queue with VC, assigned chair, arrival time, and sync handles}
		\state{Notify barber via barber\_cv}
		\state{Wait on customer\_done\_cv until haircut\_done is true}
		\state{Mark chair as unoccupied}
		\state{Update local VectorClock with barber's returned VC}
		\state{Customer leaves shop}
	\Else
		\state{Increment total\_turned\_away}
		\state{Customer leaves shop (all chairs occupied)}
	\EndIf
\endprocedure
\end{algorithmic}
\end{algorithm}
```
### Instructions

This implementation and testing is done completely via the bash command line and was compiled using `g++` and tested on an Arch Linux personal system. The `.cpp` file is provided in the zip uploaded to Canvas as instructed. The syntax is as follows:

```bash
g++ main.cpp -o barber
./barber <number of chairs> <number of customers> <maximum wait time>
```
### C++ Implementation

```c++
#include <chrono>
#include <condition_variable>
#include <iostream>
#include <mutex>
#include <queue>
#include <thread>
#include <vector>
#include <cstdlib>
#include <cerrno>
#include <climits>
#include <ctime>

using namespace std;

// Define Vector Clock
struct VectorClock {
    vector<int> timestamps;
    int id;

    VectorClock(int num_processes, int pid)
        : timestamps(num_processes, 0), id(pid) {}

    void tick() { timestamps[id]++; }

    void update(const vector<int> &incoming) {
        for (size_t i = 0; i < timestamps.size(); i++) {
            timestamps[i] = max(timestamps[i], incoming[i]);
        }
        tick();
    }

    void print() const {
        cout << "[ ";
        for (int t : timestamps)
            cout << t << " ";
        cout << "]";
    }
};

// Define messages for vector clock & statistics
struct Message {
    int sender_id;
    string type;
    vector<int> vector_clock;
    int assigned_chair; 
    chrono::high_resolution_clock::time_point arrival_time;
    vector<int>* return_vector_clock;
    condition_variable* customer_done_cv;
    bool* haircut_done_flag;
};

// Global Synchronization Primitives
mutex mtx;                  
condition_variable barber_cv; 
queue<Message> waiting;

// Global Configuration Variables
int chairs = 1;        
int num_customers = 5; 
int maximum_time = 5;  
bool shutdown_barber = false;

// Global Statistics Variables
int total_turned_away = 0;
int total_served = 0;
chrono::milliseconds min_wait(LONG_MAX);
chrono::milliseconds max_wait(0);
long long total_wait_ms = 0;

// Chair occupancy tracking array
vector<bool> chair_occupied;

// Function Prototypes
void barber(int id);
void customer(int id);
bool parsePositiveInt(const char *str, long &outVal);

int main(int argc, char *argv[]) {
    // Seed random number generator properly
    srand(static_cast<unsigned int>(time(nullptr)));

    cout << "[DEBUG] Main function started successfully." << endl;

    if (argc != 4) {
        cerr << "Usage: ./barber <number_of_chairs> <number_of_customers> <maximum_wait_time>" << endl;
        return 1;
    }

    long vals[3];
    for (int i = 1; i <= 3; i++) {
        if (!parsePositiveInt(argv[i], vals[i - 1])) {
            cerr << "Error: Argument " << i << " ('" << argv[i] << "') must be a positive integer" << endl;
            return 1;
        }
    }

    chairs = vals[0];
    num_customers = vals[1];
    maximum_time = vals[2];

    chair_occupied.resize(chairs, false);

    cout << "Number of chairs: " << chairs << " | Customers: " << num_customers << " | Max Wait: " << maximum_time << endl;

    // --- Generate Threads ---
    thread barber_thread(barber, 0);

    vector<thread> customers;
    for (int i = 1; i <= num_customers; i++) {
        customers.emplace_back(customer, i);
    }

    for (auto &c : customers) {
        c.join();
    }

    // Signal barber to shut down cleanly
    {
        lock_guard<mutex> lock(mtx);
        shutdown_barber = true;
        barber_cv.notify_one();
    }

    barber_thread.join();
    
    // --- Print Final Statistics Report ---
    cout << "\n=========================================" << endl;
    cout << "         SIMULATION STATISTICS REPORT    " << endl;
    cout << "=========================================" << endl;
    cout << " Total Customers Processed : " << num_customers << endl;
    cout << " Total Customers Served    : " << total_served << endl;
    cout << " Total Customers Turned Away : " << total_turned_away << endl;
    if (total_served > 0) {
        cout << " Minimum Wait Time         : " << min_wait.count() << " ms" << endl;
        cout << " Maximum Wait Time         : " << max_wait.count() << " ms" << endl;
        cout << " Average Wait Time         : " << (total_wait_ms / total_served) << " ms" << endl;
    } else {
        cout << " Wait Times                : N/A (No customers served)" << endl;
    }
    cout << "=========================================" << endl;
    cout << "[DEBUG] Program finished successfully." << endl;
    return 0;
}

void barber(int id) {
    VectorClock vc(num_customers + 1, id);

    while (true) {
        Message msg;
        {
            unique_lock<mutex> lock(mtx);

            // Only sleep (and only announce a wake-up) when the shop is empty.
            // If a customer is already waiting, skip straight to the haircut.
            if (waiting.empty() && !shutdown_barber) {
                cout << "[Barber] No customers in shop. Barber is going to sleep..." << endl;

                barber_cv.wait(lock, [] { return !waiting.empty() || shutdown_barber; });

                if (!waiting.empty()) {
                    cout << "[Barber] Awakened by a customer!" << endl;
                }
            }

            // Only reachable with an empty queue if shutdown was requested
            if (waiting.empty()) {
                break;
            }

            msg = waiting.front();
            waiting.pop();

            auto dequeue_time = chrono::high_resolution_clock::now();
            auto wait_duration = chrono::duration_cast<chrono::milliseconds>(dequeue_time - msg.arrival_time);

            total_served++;
            total_wait_ms += wait_duration.count();
            if (wait_duration < min_wait) min_wait = wait_duration;
            if (wait_duration > max_wait) max_wait = wait_duration;

            vc.update(msg.vector_clock);
            cout << "[Barber] Starting haircut for Customer " << msg.sender_id 
                 << " (from Chair " << msg.assigned_chair << ", Wait: " << wait_duration.count() << "ms) at VC: ";
            vc.print();
            cout << endl;
        }

        // Simulate haircut duration
        this_thread::sleep_for(chrono::milliseconds(200));
        
        {
            unique_lock<mutex> lock(mtx);
            vc.tick();
            cout << "[Barber] Finished haircut for Customer " << msg.sender_id << " at VC: ";
            vc.print();
            cout << endl;

            if (msg.return_vector_clock) {
                *(msg.return_vector_clock) = vc.timestamps;
            }

            *(msg.haircut_done_flag) = true;
            msg.customer_done_cv->notify_one();
        }
    }
}

void customer(int id) {
    VectorClock vc(num_customers + 1, id);
    
    this_thread::sleep_for(chrono::seconds(rand() % maximum_time + 1));
    
    condition_variable customer_done_cv;
    bool haircut_done = false;
    vector<int> barber_returned_vc;

    unique_lock<mutex> lock(mtx);
    vc.tick();
    cout << "[Customer " << id << "] Arrives with VC: ";
    vc.print();
    cout << endl;

    auto arrival_timestamp = chrono::high_resolution_clock::now();

    int assigned_chair = -1;
    for (int i = 0; i < chairs; i++) {
        if (!chair_occupied[i]) {
            chair_occupied[i] = true;
            assigned_chair = i;
            break;
        }
    }

    if (assigned_chair != -1) {
        cout << "[Customer " << id << "] Takes Chair " << assigned_chair << endl;

        waiting.push({id, "ARRIVE", vc.timestamps, assigned_chair, arrival_timestamp, &barber_returned_vc, &customer_done_cv, &haircut_done});
        barber_cv.notify_one();

        customer_done_cv.wait(lock, [&haircut_done] { return haircut_done; });

        chair_occupied[assigned_chair] = false;

        vc.update(barber_returned_vc);
        
        cout << "[Customer " << id << "] Haircut complete. Vacating Chair " << assigned_chair << ". Final VC: ";
        vc.print();
        cout << " | Leaving shop." << endl;
    } else {
        total_turned_away++;
        cout << "[Customer " << id << "] All " << chairs << " chairs are occupied. Turning away." << endl;
    }
}

bool parsePositiveInt(const char *str, long &outVal) {
    char *end;
    errno = 0;
    long val = strtol(str, &end, 10);
    if (end == str || *end != '\0' || errno == ERANGE || val <= 0) {
        return false;
    }
    outVal = val;
    return true;
}
```

### Alpha Testing

For the alpha testing, we will be using very basic values and focusing on ensuring the following:
1. Program runs to completion
2. All problem requirements are followed:
	- Barber awakens and sleeps properly
	- Barber cuts hair and signals when he is finished
	- Customer takes their seat properly
	- Customer leaves if the barbershop is full
	- Customer signals the barber and awakens him
	- Customer waits until their hair is cut
	- Customer leaves when their hair is cut and leaves the chair empty

#### Test A1: `./barber 1 2 3`

![[Pasted image 20261107161935.png]]

```ad-summary
- Barber falls asleep during downtime
- Customers take their seat
- Barber is signaled by the customer and is awaken
- Barber starts and finishes haircuts
- Customers leave properly and leave their seat empty
- Program runs to completion
```

#### Test A2: `./barber 3 10 5`

![[Pasted image 20261107162309.png]]

```ad-summary
- Customers are able to take multiple seats
- Barber only goes to sleep when there are no seats full
- Some customers walk away because all the seats are taken
```

#### Test A3: `./barber 1 10 5`

![[Pasted image 20261107163302.png]]

```ad-summary
- A lot of customers were turned away
- No wait time due to there being only one chair
```
### Beta Testing

For the beta testing, we will be using very large and odd values to make sure that:
1. Starvation does not happen
2. The average waiting time is low enough based on the values provided
3. Ensure that errors are thrown to bad values

#### Test B1-3: `./barber`, `./barber 1`, `./barber 1 1`

![[Pasted image 20261107163506.png]]

![[Pasted image 20261107163558.png]]

![[Pasted image 20261107163617.png]]

```ad-note
- Program does not start without enough arguments
```

### Test B4-6: `./barber asdfas 1 1`, `./barber 1 asdfasd 1`, `./barber 1 1 asdfas`

![[Pasted image 20261107163821.png]]

![[Pasted image 20261107163836.png]]

![[Pasted image 20261107163848.png]]

```ad-note
Program does not start without non-integer values
```

### Test B7-9: `./barber 0 1 1`, `./barber 1 -1 1`, `./barber 1 1 0`

![[Pasted image 20261107163930.png]]

![[Pasted image 20261107163942.png]]

![[Pasted image 20261107163947.png]]

```ad-note
Ensure that non-zero integers are provided (we can't have zero customers)
```

### Test B 10: `./barber 100 1000 30`

![[Pasted image 20261107165109.png]]

### Test B11: `./barber 100 1000 50`

![[Pasted image 20261107165457.png]]

### Test B12: `./barber 100 1000 100`

![[Pasted image 20261107165918.png]]

### Test B13: `./barber 100 1000 250`

![[Pasted image 20261107170422.png]]

### Test B14: `./barber 1000 10000 100`

![[Pasted image 20261107170100.png]]

### Test B15: `./barber 1000 10000 300`

![[Pasted image 20261107170331.png]]

### Test B16: `./barber 1000 10000 1000`

![[Pasted image 20261107174442.png]]

## Problem 2: Smoker Problem

### Pseudocode

```pseudo
\begin{algorithm}
\caption{Sleeping Barber Problem}
\begin{algorithmic}
\procedure{main}{argc, argv}
	\state{Seed random number generator}
	\state{validate command-line argument parse for a positive integer}
	\state{Set total time running to integer in seconds}
	\state{Spawn agent thread (ID 0)}
	\state{Spawn smoker threads (IDs 1 to 3)}
	\state{Wait for execution time to elapse}
	\state{Lock mutex, notify agent and smoker that the process is ending}
	\For{each smoker thread}
		\state{Join smoker thread}
	\EndFor
	\state{Join agent thread}
	\state{Print final statistics report}
\endprocedure

\procedure{agent}{id}
	\state{Initialize agent's VectorClock}
	\While{true}
		\state{Lock Mutex}
		\If{Message in Queue OR Thread just got initalized}
			\state{Receive unlock from smoker}
			\state{Notify that it received the unlock event}
			\state{Update vector clock based on message}
			\state{Remove vector clock message from queue}
			\state{Gather ingredients for 200 milliseconds}
			\state{Add 2 of the 3 ingredients at random}
			\state{Signal smokers that the ingredients are ready}
			\state{Update for vector clock}
			\state{Calculate statistics}
		\else
			\state{Wait for signal from smokers}
        \EndIf
    \EndWhile
\endprocedure

\procedure{Smoker}{id}
	\state{Initialize smoker's VectorClock}
	\state{Smoker brings one of three ingredients}
	\state{Increment vector clock}
	\state{Lock mutex and notify arrival to agent}
	\While{true}
		\If{Table contains neeeded ingredients}		
			\state{Calculate time statistics}
			\state{Update vector clock}
			\state{Take ingredients from table}
			\state{Notify that ingredients were taken}
			\state{Lock as cigarette is being rolled and smoked}
			\state{Notify that agent that smoker is done}
			\state{Update vector clock}
			\state{Unlock for agent to add more ingredients}
		\Else
			\state{Wait for the proper ingredients to arrive}
        \EndIf
    \EndWhile
\endprocedure
\end{algorithmic}
\end{algorithm}
```
### Instructions

This implementation and testing is done completely via the bash command line and was compiled using the current stable`g++` build and tested on an Arch Linux personal system. The `.cpp` file is provided in the zip uploaded to Canvas as instructed. The syntax is as follows:

```bash
g++ main.cpp -o smoker
./smoker <duration_of_test>
```
### Alpha Testing

The main checks for the alpha testing is to ensure the proper implementation of the algorithm. We will be looking for the following:
1. Any potential deadlocks or starvation
2. Smoker only taking ingredients when he is able to
3. Smokers notifying the agent when he finishes smoking
4. The agent placing ingredients during the first cycle and then after a smoker is finished.
5. The agent signals the smokers when the ingredients are ready to be taken from the tabel

#### Test 1A: `./smoker 2`

![[Pasted image 20261108153332.png]]

```ad-summary
- The agent arrives and initally places papers and matches on the table
- Each smoker arrives with a different ingredient concurrently
- The proper smokers take the ingredients only if they are able to roll a cigarette between what is on the plate and what is in their hand
- Smoker signals back to the agent when they are done
- The agent responds to the signal and places the new ingredients on the table
- The agent will then signal the smokers again to pick up their ingredients
```
### Beta Testing

Both the input testing and the performance will be evaluated. Input vectors that contain bad data will be entered to ensure no bad inputs are provided. Also, long duration of inputs will be taken to get a good minimum, maximum, and average wait for how long the ingredients wait on the table and how long it takes between turns for each smoker. The vector clock will also be looked into to see if the processes are properly concurrent.

#### Test 1B: `./smoker`

![[Pasted image 20261108155145.png]]

#### Test 2B: `./smoker -1`

![[Pasted image 20261108155207.png]]

#### Test 3B: `./smoker 0`

![[Pasted image 20261108155224.png]]

#### Test 4B: `./smoker abc`

![[Pasted image 20261108155702.png]]

#### Test 5B: `./smoker 100`

#### Test 6B: `./smoker 1000`

#### Test 7B: `./smoker 10000`
## Problem 3: TA Problem

### Pseudocode

Main
- Takes and sanitizes inputs
	1. Number of chairs
	2. Number of students
	3. Maximum arrival time
- Assigns inputs to variables
- Creates the TA thread
- Creates that many student threads
- Waits until all students have joined back
- Signal TA to shutdown
- Join TA back
- Print out statistics

TA thread
- 

Student(s) thread




### Instructions

### Alpha Testing

### Beta Testing

## Problem 4: Reader-Writer Problem

### Instructions

### Alpha Testing

### Beta Testing

## Problem 5: Bridge Problem

### Instructions

### Alpha Testing

### Beta Testing

## Problem 6: Monkey-Rope Problem

### Psuedocode

### Instructions

### Alpha Testing

### Beta Testing

## Problem 7: Philosopher’s Problem 

### Psuedocode

### Instructions

### Alpha Testing

### Beta Testing