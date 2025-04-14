Date: 28th March 2025
Date Modified: 28th March 2025
File Folder: Week 9
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Concurrency Day 3
## Review

**Part 1**: Hardware Concurrency
- Disable interrupts
- compare and swap
- Lack of deadlock or starvation protection

## Monitors

Semaphores provide synchronization through `semSignal()` and `semWait()`
- However, both of these commands can be scattered over different parts of an application
- It is difficult to envision the overall effect of the semaphores

```ad-summary
title: Defintion
**Monitors**:
- #comebacklater 
```

### Monitor Characteristics

1. Local data variables are accessible only by the monitor’s procedures and no by any external procedure
2. Process enters monitor by invoking one of its procedures
3. …

### Monitor Advantages

1. Eaier to verify that synch is done correctly
2. With semaphores, resources access is correct *only if* all the processes hat access the resources are programmed correctly
3. Once the monitor is correct, all accesses are correct

### Disadvantages of Monitor

When a process gives a signal, a process waiting in a condition queue on hat signal should immediately run
- The process issuing the `csignal` must either immediately exit the monitor or be blocked and moved to the urgent queue

This means two things:
= If the process issuing the signal is not done, then two additional process switches are required; to block and then to unblock
Processes scheduling must be perfect to allow he waiting process in the condition queue to immediately run. No other process should enter the monitor that can change the monitor’s state.


