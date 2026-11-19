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

![[Pasted image 20261108161025.png]]

#### Test 6B: `./smoker 1000`

![[Pasted image 20261108161912.png]]

#### Test 7B: `./smoker 10000`

![[Pasted image 20261108194853.png]]

## Problem 3: TA Problem

### Pseudocode

```pseudo
\begin{algorithm}
\caption{Sleeping Barber Problem}
\begin{algorithmic}
\procedure{main}{argc, argv}
	\state{Seed random number generator}
	\state{Validate command-line arguments and parse positive integers}
	\state{Set configuration: chairs, num\_students, maximum\_time}
	\state{Initialize chair\_occupied array of size chairs to false}
	\state{Spawn TA thread (ID 0)}
	\state{Spawn student threads (IDs 1 to num\_students)}
	\For{each student thread}
		\state{Join student thread}
	\EndFor
	\state{Lock mutex, set shutdown\_TA to true, and notify TA\_cv}
	\state{Join TA thread}
	\state{Print final statistics report}
\endprocedure

\procedure{teaching_assistant}{id}
	\state{Initialize barber's VectorClock}
	\while{true}
		\state{Lock mutex}
		\If{Waiting queue is empty AND the program is still running}
			\state{TA takes a nap waiting for students}
			\state{Release the lock until waiting is not empty or the program is ready to terminate. Stalls until this is true}
			\If{The waiting queue becomes not empty}
				\state{The lock is reaquired as the TA wakes up}
            \EndIf
        \EndIf
        \state{Read message from next student in queue}
        \if{Student was waiting in a chair outside}
	        \state{TA calls student in from the hallway}
	    \Else
		    \state{TA allows student to sit in the office seat}
	    \endif
	    \state{Update vector clock}
	    \state{Signal to student that the session started}
	    \state{Wait until session is over}
	    \state{Update vector clock}
	    \state{Signal to current student that the session is over}
	    \state{Notify the next student that she is ready for another session}
	\endwhile
\endprocedure

\procedure{student}{id}
	\state{Initialize customer's VectorClock}
	\state{Lock Mutex}
	\state{Update vector clock}
	\state{Arrive at the TA office}
	\while{true}
		\if{Office is empty}
			\state{Walk into office and wake up the TA}
		\elseif{There is a free hallway chair}
			\state{Choose the closest seat and wait until it is their turn}
			\state{Push vector clock to queue}
			\state{Notify the TA that a student arrived}
			\state{Wait unitl the TA responds to their message and teaches them}
			\state{Update vector clock}
			\state{Leave office hours}
		\Else
			\state{Leave the office for a random amount of time and try again later}
		\endif
	\endwhile
\endprocedure
\end{algorithmic}
\end{algorithm}
```
### Instructions

This implementation and testing is done completely via the bash command line and was compiled using the current stable`g++` build and tested on an Arch Linux personal system. The `.cpp` file is provided in the zip uploaded to Canvas as instructed. The syntax is as follows:

```bash
g++ main.cpp -o teaching
./teaching <num_of_chairs> <num_of_students> <maximum_duration>
```
### Alpha Testing

The primary objective of the alpha testing is to ensure that the program functions as intended with intended inputs and boundaries. The following needs to be analyzed:
1. TA fall asleep *only* when there are no students in the office
2. TA’wake up when a student signals that they arrived after downtime
3. TA choose the next student in line in a FCFS fashion
4. TA signals specific student to come in
5. TA teaches student and then releases them when done
6. Student signals the TA to wake up if they are asleep
7. If busy, the student will take the closest seat and queue and notify their time with the TA
8. Student will go into the office once notified by the TA
9. Student will leave once the session is over as notified by the TA
10. Student will leave and come back later if everything is full

#### Test 1A: `./teaching 3 5 2`

![[Pasted image 20261109085536.png]]

```ad-summary
All objectives are completed by this run except the 10th one!
```

#### Test 2A: `./teaching 3 15 1`

![[Pasted image 20261109085746.png]]
![[Pasted image 20261109085821.png]]
![[Pasted image 20261109085841.png]]

```ad-summary
Objective 10 is also true! All the students eventually got taught even if they had to wait and return.
```
### Beta Testing

The beta testing for this project revolves around finding any problems that come with long-term runs of this program and testing input sanitation.

#### Test 1B: `./teaching`

![[Pasted image 20261109090102.png]]

#### Test 2B: `./teaching 1`

![[Pasted image 20261109090136.png]]

#### Test 3B: `./teaching 1 1`

![[Pasted image 20261109090153.png]]

### Test 4B: `./teaching 0 1 1`

![[Pasted image 20261109090213.png]]

#### Test 5B: `./teaching 1 0 1`

![[Pasted image 20261109090232.png]]

#### Test 6B: `./teaching 1 1 0`

![[Pasted image 20261109090246.png]]

#### Test 7B: `./teaching abc 1 1`

![[Pasted image 20261109090323.png]]

#### Test 8B: `./teaching 30 100 25`

![[Pasted image 20261109090525.png]]

#### Test 9B: `./teaching 30 1000 100`

![[Pasted image 20261109090947.png]]

#### Test 10B: `./teaching 30 10000 1000`

![[Pasted image 20261109095149.png]]

## Problem 4: Reader-Writer Problem

### Psuedocode

```pseudo
\begin{algorithm}
\caption{Reader-Writer Problem}
\begin{algorithmic}
\procedure{VectorClock}{num\_processes, id}
	\state{Holds one timestamp per process, all starting at 0}
	\state{tick: increment this process's own timestamp}
	\state{update: take the element-wise maximum of the local and incoming clocks, then tick}
\endprocedure

\procedure{Message}{sender\_id, type, vector\_clock}
	\state{Carries the sender's clock and a type of REQUEST, GRANT, or RELEASE}
\endprocedure

\procedure{ThreadStats}{}
	\state{Each thread records its own operation count, immediate vs. waited accesses, total wait time, and max wait time}
\endprocedure

\procedure{Resource}{}
	\state{Holds a mutex, condition variable, active reader count, active writer flag, waiting writer count, and FCFS ticket counters}
	\state{Acts as its own process with its own VectorClock}
	\state{onRequest and onRelease merge the sender's clock into the resource clock}
	\state{makeGrant ticks the resource clock and returns it in a GRANT message}
	\procedure{startRead}{mode}
		\state{Lock mutex}
		\If{mode is Reader priority}
			\state{Readers wait only while a writer is active}
		\ElsIf{mode is Writer priority}
			\state{Readers wait while a writer is active or any writer is waiting}
		\Else
			\state{Reader takes a ticket and waits until it is being served and no writer is active}
			\state{Advance the serving ticket and notify all so a following reader can enter}
		\EndIf
		\state{If the reader had to block, print that it is waiting before blocking}
		\state{Increment active readers and return whether the reader waited}
	\endprocedure
	\procedure{endRead}{}
		\state{Lock mutex and decrement active readers}
		\state{If no readers remain, notify all waiting threads}
	\endprocedure
	\procedure{startWrite}{mode}
		\state{Lock mutex}
		\If{mode is Reader priority}
			\state{Writers wait until no readers and no writer are active}
		\ElsIf{mode is Writer priority}
			\state{Writer increments the waiting writer count, waits until no readers and no writer are active, then decrements the count}
		\Else
			\state{Writer takes a ticket and waits until it is being served and the resource is free}
			\state{Advance the serving ticket and notify all}
		\EndIf
		\state{If the writer had to block, print that it is waiting before blocking}
		\state{Set active writer to true and return whether the writer waited}
	\endprocedure
	\procedure{endWrite}{}
		\state{Lock mutex, set active writer to false, and notify all waiting threads}
	\endprocedure
\endprocedure

\procedure{main}{argc, argv}
	\state{Seed random number generator with rand}
	\state{Validate command-line arguments and parse positive integers and priority mode}
	\state{Set configuration: readers, writers, time ranges, priority, resources, simulation\_time}
	\state{Generate random string data and one Resource per string}
	\state{Initialize each resource's VectorClock as its own process after the reader and writer threads}
	\state{Spawn reader threads (IDs 0 to readers - 1)}
	\state{Spawn writer threads (IDs readers to readers + writers - 1)}
	\state{Sleep for the simulation time, then set stop flag to true}
	\For{each reader and writer thread}
		\state{Join thread}
	\EndFor
	\state{Print final statistics report}
\endprocedure

\procedure{reader}{id}
	\state{Initialize reader's VectorClock}
	\while{stop flag is false}
		\state{Sleep for a random think time and pick a random resource}
		\state{Tick the clock and send a REQUEST message to the resource}
		\state{Record the request time and print that the reader requests the resource}
		\state{Call startRead, which blocks if the priority mode does not allow access yet}
		\state{Record how long the reader waited and whether it waited at all}
		\state{Receive a GRANT message from the resource and update vector clock}
		\state{Print whether access was immediate or after waiting, and read the data}
		\state{Sleep for a random read time}
		\state{Tick the clock and send a RELEASE message to the resource}
		\state{Call endRead}
	\endwhile
\endprocedure

\procedure{writer}{id}
	\state{Initialize writer's VectorClock}
	\while{stop flag is false}
		\state{Sleep for a random think time and pick a random resource}
		\state{Tick the clock and send a REQUEST message to the resource}
		\state{Record the request time and print that the writer requests the resource}
		\state{Call startWrite, which blocks if the priority mode does not allow access yet}
		\state{Record how long the writer waited and whether it waited at all}
		\state{Receive a GRANT message from the resource and update vector clock}
		\state{Print whether access was immediate or after waiting, and overwrite the data with a new random string}
		\state{Sleep for a random write time}
		\state{Tick the clock and send a RELEASE message to the resource}
		\state{Call endWrite}
	\endwhile
\endprocedure
\end{algorithmic}
\end{algorithm}
```
### Instructions

This implementation and testing is done completely via the bash command line and was compiled using the current stable`g++` build and tested on an Arch Linux personal system. The `.cpp` file is provided in the zip uploaded to Canvas as instructed. The syntax is as follows:

```bash
g++ main.cpp -o smoker
./rw <num_of_readers> <r min_time> <r max_time> <num_of_writers> <w min_time> <w max_time> <priority> <num_of_resources> <simulation_time>
```

### Alpha Testing

All alpha testing files can be found in the `alpha_testing` sub-directory with its matching file name within the .zip file provided. The results of each test will be discussed here.

#### Test A1: `./rw 5 1 1 5 5 10 reader 3 1`

![[Pasted image 20261110165702.png]]

#### Test A2: `./rw 5 1 1 5 5 10 writer 3 1`

![[Pasted image 20261110165710.png]]

#### Test A3: `./rw 5 1 1 5 5 10 neutral 3 1`

![[Pasted image 20261110165737.png]]

### Beta Testing

Beta testing will further test input sanitation and test for any deadlocking and starvation issues that might come up with each type of implementation.

#### Test B1: `./rw`

![[Pasted image 20261110170534.png]]
#### Test B2: `./rw 0 1 1 5 5 10 neutral 3 1`

![[Pasted image 20261110170541.png]]

#### Test B3: `./rw 5 g 1 5 5 10 neutral 3 1`

![[Pasted image 20261110170930.png]]

#### Test B4: `./rw 5 1 h 5 5 10 neutral 3 1`

![[Pasted image 20261110170959.png]]

#### Test B5: `./rw 5 1 1 0 5 10 neutral 3 1`

![[Pasted image 20261110171022.png]]

#### Test B6: `./rw 5 1 1 5 p 10 neutral 3 1`

![[Pasted image 20261110171051.png]]

#### Test B7: `./rw 5 1 1 5 5 j neutral 3 1`

![[Pasted image 20261110171149.png]]

#### Test B8: `./rw 5 1 1 5 5 10 super_preference 3 1`

![[Pasted image 20261110171230.png]]

#### Test B9: `./rw 5 1 1 5 5 10 3 3 1`

![[Pasted image 20261110171353.png]]

#### Test B10: `./rw 5 1 1 5 5 10 neutral s 1`

![[Pasted image 20261110171526.png]]

#### Test B10: `./rw 5 1 1 5 5 10 neutral 3 f`

![[Pasted image 20261110171602.png]]

#### Test B11: `./rw 100 1 1 5 5 10 reader 10 10`

![[Pasted image 20261110172744.png]]

#### Test B12: `./rw 1000 1 1 5 5 100 reader 10 10`

![[Pasted image 20261110172915.png]]

#### Test B13: `./rw 10000 1 1 5 5 1000 reader 10 100`

![[Pasted image 20261110173712.png]]

#### Test B14: `./rw 10 1 1 100 5 10 writer 10 1`

![[Pasted image 20261110173947.png]]

#### Test B15: `./rw 10 1 1 1000 5 10 writer 10 10`

![[Pasted image 20261110174041.png]]

#### Test B16: `./rw 10 1 1 10000 5 10 writer 10 100`

![[Pasted image 20261110174326.png]]

#### Test B17: `./rw 100 1 1 5 5 10 neutral 10 10`

![[Pasted image 20261110174828.png]]

#### Test B18: `./rw 1000 1 1 5 5 100 neutral 10 10`

![[Pasted image 20261110174850.png]]

#### Test B19: `./rw 10000 1 1 5 5 1000 neutral 10 100`

![[Pasted image 20261110175048.png]]

#### Test B20: `./rw 10 1 1 100 5 10 neutral 10 1`

![[Pasted image 20261110175124.png]]

#### Test B21: `./rw 10 1 1 1000 5 10 neutral 10 10`

![[Pasted image 20261110175129.png]]

#### Test B22: `./rw 10 1 1 10000 5 10 neutral 10 100`

![[Pasted image 20261110175340.png]]
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