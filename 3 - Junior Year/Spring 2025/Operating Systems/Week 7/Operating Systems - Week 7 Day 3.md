Date: 7th March 2025
Date Modified: 7th March 2025
File Folder: Week 7
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Threads
```

# Thread Basics

## Objectives

- Understand the difference between process and thread
- Basic design for threads
- Understand the difference between user-related threads and kernel-threads

## Process Characteristics

**Resource Ownership**: Process control block maintains resource ownership
- Memory, I/O, channels, devices, files, etc.

**Scheduling/Execution**: 

## Single Vs. Multi-Threading

How different operating system configure processes and threads

![[Pasted image 20250307081000.png]]

### Process Vs. Thread

**Process**: Virtual address space that holds the process image
- Protected access to processors, other processes, files, I/O  resources, etc.

Within a process, a **thread** has its *own attributes*:
- Execution state
- Saved thread context when not running
- Storage for local variables
- Access to process memory is shared with all threads in that process

### Single vs. Multithreaded Process Models

![[Pasted image 20250307081543.png]]

## Thread Benefits

### For Single-Core Systems

- Foreground and background work
- Asynchronous processing
- Speed of execution
- Modular program structure

```ad-example
- Web client/server
- Database application
```

### Example: Web Server with One Thread

![[Operating Systems - Week 7 Day 3 2025-03-07 08.22.39.excalidraw]]

```ad-warning
This takes an extremely long amount of time and prevents smaller requests from going first and leaving space in the queue
```

### Example: Web Server with Multiple Threads

![[Operating Systems - Week 7 Day 3 2025-03-07 08.26.41.excalidraw]]

```ad-important
Threads will take turns downloading, greatly increasing the speed of each of the three downloads.
```

## Thread States

In on OS that supports threads, scheduling and dispatching is done on a thread basis

Most of the state information dealing with execution is maintained in thread-level data structures

```ad-warning
title: Exceptions

These have to happen on a global scale
- Suspension
- Termination
```



### Thread Operations to Change State

**Spawn**:
- When a new process is spawned
- Thread spawns a new threads
- Automatically put in the ready queue

**Block**:
- Waiting for I/O event
- Saves registers, PC, amd SP for context switches

**Unblock**:
- After I/O event is ready
- Restores registers, PC, and SP to context switch back

**Finish**:
- KIILLLLSS the THREAD MUWAHWUAHWUAH

![[SEI_146166954-67f6.webp | center]]

### *Design Question*: Thread Blocking

```ad-question
If a thread blocks, should it block its process, including all other threads in it?
```

![[Pasted image 20250307083326.png]]

# Types of Threads

## Overview

*Three* types of threads:
1. **User-Level**: Application manages its own thread through thread library
	- Kernel not aware of threads
2. **Kernel Level**: Kernel aware and manages all threads
3. **Combined Approach**

## User-Level Threads (ULT)

Where the application manages its own threads
- *Independent of Kernel*

![[Pasted image 20250307083731.png | center]]

### Case 1: Process-Thread Relationship in ULT

Assume uni-processing system. 
- **Process B** is executing through *thread 2*. 
- *Thread 2* maes a system call that results in **process B** changign state to blocked
- *Thread 2* data structure says running. However, thread is not running on processor

![[Pasted image 20250307083909.png]]

### Case 2: Process-Thread Relationship in ULT

- **Process B** is unblocked
- Time slice for process B expires
- Kernel changes that state of process B to ready
- Threads library still maintains data structure that thread 2 is running
- Thread 2 is not actually running on the processor
- Thread library does not have chance to update thread 2’s state.

![[Pasted image 20250307084142.png | center]]
![[Pasted image 20250307084200.png |center]]

### Case 3: 
### Advantages/Disadvantages of ULTs

**Advantages**”
- ULTs can run on any OS
- Scheduling of threads is done by a thread library
- threads switching does not require kernel intervention

*Disadvantages*:
- Multithreading applications cannot take advantage of multicore processors
- OS blocks other threads when one thread does a system call

### Overcoming ULTs Disadvantages

**Jacketing**: Converts a blocking system call into a non-blocking system call
- Thread calls a jacket routine that checks to determine if the I/O device is busy.
- if device is busy, control is passed to another thread

**Converting Threads into Processes**:
- Defeats the purpose of threads
- Can increase the overhead for process switching

## Kernel-Level Threads (KLT)

Thread management is done by the kernel
- OS maintains context for process and thread
- Application do not need to manage threads
- Applications use APIs to control threads
- Used by many modern OSes
- OS is responsible for scheduling threads

![[Pasted image 20250307084847.png | center]]
### Advantages/Disadvantages of KLT

**Advantages**:
- Threads can take advantage of multiprocessor/multicore systems
- One thread cannot block their threads in the same process
- Kernel routines themselves can be multithreaded

*Disadvantages*:
- The transfer of control from one thread to another within the same process requires context switch to and from the kernel.

## ULTs/KLTs/Process Comparison


| Operation             | User-Level Threads ($\micro s$) | Kernel-Level Threads ($\micro s$) | Processes |
| --------------------- | ------------------------------- | --------------------------------- | --------- |
| *Null Fork*           | 34                              | 948                               | 11,300    |
| *Some other bullshit* | 37                              | 1180                              | 932       |
## Combined Approach (ULT/KLT)

- Thread creation is done in user space
- 

## Homework Calls for Process Spawning

- `fork` funciton
- `sleep` function
- `wait` function
- `getpid` function

