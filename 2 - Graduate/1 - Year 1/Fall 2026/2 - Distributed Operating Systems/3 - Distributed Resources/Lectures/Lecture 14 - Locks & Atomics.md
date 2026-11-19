---
creation_date: 2026-09-23 10:29
last_modified: 2026-09-23 10:29
folder: Lectures
tags:
  - type/lecture
  - field/distributed-operating-systems
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Deadlock

### Deadlock Characterization

**A deadlock occurs when *four* Conditions hodl simultaneously**:
1. *Mutex*: Only one process at a time can use a resource
2. *Hold and Wait*: A process holding at least one resource is waiting to acquire additional resources held by other processes
3. *No preemption*: Resources cannot be preempted; a resource can be released only voluntairly
4. *Circular wait*

### The Dining Philosopher Problem

![[Pasted image 20260925102855.png]]

- To eat their meal, each philosopher must have two chopsticks and return them when they are done
- They cannot return a single chopstick because they are hungry
- However, if each philosopher grabs a a chopstick at the same time, they will be stuck with one chopstick that they cannot return
- They will cause a *deadlock* and will eventual *starve*.
- To solve this, we have to make sure that proper locks and timeouts are placed such that the philosopher will release their chopstick if they hold on to it for too long, so that the other philosophers can eat and not starve.

```ad-note
title: Remember
**Enermerated** data types are data types created by a user:
- ex. for the dining philosopher's problem: thinking, hungry, wait, and eats. 
```


## Locks

```ad-note
A potential solution to the CS problem
```

```cpp
do {
	acquire_lock();
		// critical section
	release_lock();
		//remainder section
} while (true);
```

```ad-summary
title: Defintions
1. **Mutex Lock**: A mutual exclusion lock; the simplest sfotware tool for assuring mutex
2. **Cotnended**: A term describign the condition of a lock when athread blocks while trying to acquire it.
3. **Uncontended**: A term describing a lock that is avaialbe when a thread attempts to acquire it.
4. **Busy Waiting**: A practice that allows a thread or process to use CPU time continuously whiel waiting for something. An I/O loop in which an I/O thread continuously reads status information while waiting for I/O to complete.
5. **Spinlock**: A locking mechanism that continuously uses the CPU while waiting for access to the lock. 
```
### Example: Bank Account

Assume that there are two functions:

```cpp
double deposit(double amount) {
	balance += amount;
	return balance;
}

double withdraw(double amount) {
	if (amount <= balance) {
		balance -= amount;
	}
	return balance;
}
```

These two functions share a **race condition** (someone who tries to deposit and withdraw at the same time. What would the new amount be?)

To avoid this, we can add a **lock** such that:

```cpp
double deposit (double amount) {
	acquire();
	balance += amount;
	release();
	return balance;
}
```

```cpp
double withdraw (double amount) {
	acquire();
	if (amount <= balance) {
		balance -= amount;
	}
	release();
	
	return balance;
}
```

### Atomic Operations

```ad-summary
A program instruciton or squence of actions that executes as a single, indivisible unit. Either a process fully executes, or does not at all
```

ex.
1. Mutex locks
2. I/O bursts

```ad-question
What is the best case to implement a mutex lock as a spinlock?
1. On a single-core system where the lock is held for a short duration.
2. On a multi-core system where the lock is held for a long duration
3. On a multi-core system where the lock is held for a short duration
```

The *third case* is the best scenario, where it may be fastest for one thread to briefly spin in the busywait loop while the other threads can run.
# 3. Action Items & Follow-Up
- [x] Review Lecture 14 for D-OS 📅 2026-09-28 ✅ 2026-09-28