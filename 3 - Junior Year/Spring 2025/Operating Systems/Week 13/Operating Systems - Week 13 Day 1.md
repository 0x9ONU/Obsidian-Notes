Date: 21st April 2025
Date Modified: 21st April 2025
File Folder: Week 13
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Mutex and Syncrhonization

## Mutual Exclusion

To avoid race conditions between threads, use C++17 `mutex`

```c++
// Declared a mutex to be locked
std::mutex my_mutex;

void critical_func() {
	// Start of critical section
	std::lock_guard<std::mutex> my_lock (my_mutex);
	
	// Safe access to shared data by multiple threads
	// ...
	// end of critical section
	// my_lock is automatically unlocked and destroyed
}
```

### `lock_guard`

Used to lock the `mutex` over the critical section or a local scope
- Automatically unlocked and destroyed at the end of a local scope
- i.e. Incrementing a global variable by multiple threads

### Mutex vs. Semaphores

Mutex is *specifically made* for ensuring mutual exclusion

Semaphore is a *general term* for communicating between threads

### Avoiding Deadlock

`scope_lock` constructor can be used to lock two or more `mutex` objects at the same time with a single call

```c++
mutex forks[5];

void philosopher (int id) {
	// grab left and right fork at the same time!
	scope_lock guard (forks[id], forks[id +1] % 5);
	
	PrintThread{} << "Philosopher " << id;
	PrintThread{} << " tooke left & right forks" << endl;
	
	// Once a philosopher has two forks, he/she will
	// eat. If deadlock occurs no philosopher will eat!
	
	PrintThread{} << "Philosopher " << id;
	PrintThread{} << " had a good meal" << endl;
}
```

```ad-example
- Each philosopher will try to lock both the left and right forks at the same time.
- If one fork is already locked, he construcotr will release the other mutex
- Constructor will return when both mutexes are locked
```

## Synchronizing Threads

```ad-note
title: Remember
We have been simply managing access to resources
```

What if we want to synchronize *actions* beween threads?
- Threads can wait for events triggered by conditional variables

### Commands

```c++
std::condition_variable cv;
// thread waits for event

// "lock" protects access to predicate
std::unique_lock<std::mutex> lock(mtx);
while (!predicate) cv.wait(lock);

// thread notifies other thread to stop waiting
cv.notify_all();
```

The wait has to be on a `unique_lock` so that the waiting thread can unlock the `mutex`
- `unique_lock` is like `lock_guard` with a bit more flexibility

Threads can also notify other threads waiting on events associated with conditional variables so that they can proceed.

### Flavors of `wait` and `notify`

`condition_variable::notify_one()`
- Unblocks one of the threads currently waiting for this condition

`condition_variable:notify_all()`
- Unblocks all threads currently waiting for this condition

`condition_variable::wait()`


