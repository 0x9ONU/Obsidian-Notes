---
creation_date: 2026-09-02 10:10
last_modified: 2026-09-02 10:10
folder: 1 - Fundamental Concepts
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

- Remember to do pre-readings
- The notes are up in classroom with some of them being extended
- Also fundamentals of each chapter are given in the annoucements
# 2. Lecture & Discussion Notes

## Distributed Technologies

![[Pasted image 20260902103528.png]]

### Example: Blockchain

- In another class, Dr. Nitin teaches how to build a blockchain
- In the blockchain, distributed systems, networks, and architecture work together
- Some blockchains are built on *Python*, which is a good distributed language

### Best Programming Model for Distributed Architecture/OS

1. ORCA
2. LINDA
3. Parallel Programming Model 
	- Solidity → Smart contracts
	- RUST
	- Python

```ad-note
All the parallel programming languages listed are **conservative** (less overhead) then compared to ORCA and LINDA
```

```ad-important

```
#### Security Protocols

```ad-note
The primary normal OS security protocol is KERBEROS v.(5)
```

For the D-OS, **Secure Hash Algorithm (SHA-256)** is the standard
- It is a one-way hash
- “Impossible” to break → Will take trillions of years to crack without any leverage
- Increase the bit amount to make it even stronger to keep up with computational brute force (256→512→1028, etc.)

#### Management

```ad-example
An analogy can be drawn to a zookeeper/ring master. Similarly, a cloud management system has to ensure that all nodes within a distributed system have processes that line up with each other efficiently
```

```ad-note
title: Reminder
Procedure is a piece of code that needs to be run on an operating system. Becomes a process
```

Request Procedure Call (*RPC*): 
1. Ping operation
2. 

##### Client-Server Model

```ad-note
Bidirectional relationship, the client and server can be either *transmitters* or *receivers* interchangably
```

**Scenario 1: Good Scenario**

![[Lecture 5 - D-OS Fundamentals Part 4 2026-09-02 10.37.00.excalidraw]]



- The timer does *expire* → for another lecture

```ad-warning
Remember that IPv4 has 32-bit addresses, while IPv6 has 128-bit addresses
```

**Scenario 2: Evil and Fucked Up Graph**

![[Lecture 5 - D-OS Fundamentals Part 4 2026-09-02 10.46.37.excalidraw]]

```ad-warning
We have to keep sending requests until we get a reply (**repeated packets**).
```

```ad-check
title: Solution
**Binary Backoff Exponential Algorithm**: Send packets exponentially slower until a response is returned properly
- $2^k\text{ where } \lim_{ k \to \infty }DNE$
```

#### Group Communication

```ad-example
- A group mailbox
```

```ad-note
title: Remember
$\text{multicasting} \ne \text{broadcasting}$
```

## Today’s HW

### Question 1

```ad-question
Define concurrency vs. transparency
```

**Concurrency**



**Transparency**

- Concurrency is the most critical part of an operating system.
- In the D-OS, **Extended Concurrency** and **Transparency** is critical

#### Types of Transparency

- **Access** Transparency: Users access local and remote resources using the same operations without needing to know the specific method of access. 
- **Location** Transparency: Users are shielded from the physical or network location of resources, allowing them to be accessed by name rather than address. 
- **Migration** Transparency: The movement of resources or processes within the system is hidden from users, allowing for load balancing or fault tolerance without disrupting operation. 
- **Replication** Transparency: The existence of multiple copies of data or resources is concealed, so users interact with them as if they were a single entity. 
- **Concurrency** Transparency: Manages concurrent access to shared resources by multiple users or processes, ensuring that their actions do not interfere with each other. 
- **Failure** Transparency: Hides the occurrence of faults, such as component failures or network issues, from users, allowing the system to recover and continue operating. 
- **Performance** Transparency: Ensures that the performance of the system remains consistent, despite variations in workload, network conditions, or hardware capabilities. 
- **Scaling** Transparency: Allows the system to gracefully expand or contract in size to meet changing performance requirements without affecting applications.

```ad-note
Check the announcements for the good example
```
# 3. Action Items & Follow-Up
- [ ] D-OS Chapter 3 & 4 Pre-Reading🔼 📅 2026-09-04
- [x] Copy fundamentals for chapters 1-4 into obsidian 🔼 📅 2026-09-04 ✅ 2026-09-02
- [ ] Review D-OS Lecture 5 📅 2026-09-04 
- [x] Do today’s HW [[Lecture 5 - Basic D-OS Fundamentals#Today’s HW]] ⏫ 📅 2026-09-04 ✅ 2026-09-02
- [ ] D-OS Assignment 1 ⏫ 📅 2026-10-2