Date: 30th September 2024
Date Modified: 30th September 2024
File Folder: Week 6
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Interrupt Concepts

```

# Interrupt Concepts

## Overview

**Concept**
- What are interrupts?
- Why hav einterrupts?
- How do they work?

**Implementation**:
- Vectors
- Priority
- Synchronization

## Interrupt Basics

```ad-summary
Mechanism by which other modules may interrupt the normal sequencing of the processor
```

### Example Uses of Interrupts

- External I/O devices
	- When you bump into an obstacle
	- Process a key-press
- Internal Event
	- Memory fault, divide by zero
- Periodic Event
	- PWM
	- Switching between two concurrent tasks

### Why are they important

- Embedded systems need to be as low latency as possible
- Prevents a delay on entering an input that needs to happen as soon as possible
- These *infrequent* but **IMPORTANT** tasks
- Interrupts allows an embedded system to respond quickly to external events.

```ad-important
Embedded systems need to have low latency with fast reponse times
```

*Latency*: Time between request and service initiation

*Response time:* Time between request and service completion.


### How are interrupts created

```ad-important
Leverage hardware to automatically transfer software execution from one thread to another:

$$\mbox{Hardware Event} \Rightarrow \mbox{Software Response}$$
```

This puts interrupt management out of the hands of software writers

It creates a new *thread* is created to handle the event.

## What is a thread?

A process is a program that is running on a CPU
- **A thread is an independent sub-task of a process**

They run independently of each other until they are joined

```ad-example
- Run physically in parallel (running oneseparate cores_
- Logically in parallel (time sharing with another thread or process on a single core)
```

Threads have access to the resources from the *parent process*.

## Multi-threading Using Interrupts

**Steps**:
1. CPU is running on current thread
2. Interrupt occurs!
	1. Save state (on stack)
	2. Change PC (vector)
3. Run the interrupt service routine
	1. Input/Output as needed
	   Communicate with global
	2. Return from interrupt
4. Jump back to step 1

## Interrupt Vectors, Number, Priority

```ad-note
Each hardware itnerrupt source has a unique interrupt number
```

This number is used as an index into interrupt vector table to find the right ISR for that hardware

```ad-note
The complier sets up this table
```

```ad-example
SysTick has an interrupt number of `15`
```

## Interrupts Implementation on MSP432

### Hardware Action

```ad-summary
title: Definition
**Hardware Action**: The execution of the main program is suspended
```

1. The current instruction is finished
2. Suspend execution and push `8` register on the stack
3. `LR` set to `0xFFFFFFF9` (indicates interrupt return) & set interrupt flag to true
4. IPSR set to interrupt number
5. Sets PC to ISR address

### Software Action

```ad-summary
title: Defintion
**Software Response**: The interrupt service routine (ISR) is executed
```

1. Clears the flag that requested the interrupt
2. Performs necessary operations
3. Communicates using global variables

### Return form the Interrupt

The main program is resumed when ISR return (`BX LR`)
1. Pops the 8 registers from the stack
2. Original PC is restored
3. IPSR is set to 0
