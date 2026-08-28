---
creation_date: 2026-08-28 10:15
last_modified: 2026-08-28 10:15
folder: Lectures
tags:
  - type/lecture
  - field/distributed-operating-systems
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

## Pre-Class Notes
- Make sure to get the pre-readings into obsidian from Zotero
# 2. Lecture & Discussion Notes

## Review

```mermaid
flowchart LR
A(Software)-->B(Programs)-->C(Processes)-->D(Threads)
```

```ad-important
The real motivation behind Distributed Operating Systems is to minimize the amount of resources since we are limited by how much we can use across the network
```

**Example**: The Internet
- Computers → Architecture → OS
- All made of distributed systems

```ad-quote
"Resources are limited"
- Thanos, Endgame
```

## Distributed Operating Systems Basics

### How many layers are there?

**Basic**
```mermaid
flowchart LR
A(User)-->B(Compiler)-->C(Hardware)
```

**More Advanced (Computer Architecture)**

```mermaid
flowchart LR
A(User)-->B(CPU)-->C(Caches)-->D(Main Memory)
```

**Networks Perspective (TCP/IP)**

**Operating Systems Perspective**

```ad-important
We use the $N$ layer model
```

![[Pasted image 20260828102622.png]]

### Differences in Processes

```ad-note
title: Remember 
A process is a part of a program under execution at a particular time stamp $\Delta t$ at the critical section (CS)
```

Can be broken down into two large categories
1. Heavy weight
2. Light weight

### Differences in Threads

```ad-note
title: Remember
If an OS consists of millions of processes, then an OS consists of billions of threads that run under those processes
- They run in parallel on your CPU
```

![[Lecture 3 - Operating Systems Fundamentals Day 2 2026-08-28 10.30.04.excalidraw]]

We always want to make sure that processes and threads arrive at the corect time such that:
$$
\Delta t_{1} > \Delta t_{2}
$$

- We have events
- And that each event falls within a timestamp in order to make time events

```ad-important
Associate numbers with timestamps
```
### Leslie Lamport

The main scientist that came up with the theory behind Distributed Operating Systems, specifically time graphs and how to line up processes to ensure max utilization and minimum holdups
- Told us that we have to consider **clocks**
- Without clocks, we get distributed *locks*, which will cause issues down the road

```ad-important
Instead of using numbers; however, he said to use **vectors** instead
```

#### Research Papers

There are *three* clocks:
1. Logical clocks → Failed in the market
2. Vector logical clocks → Very widely adopted
3. Matrix logical clocks → Even more widely adopted

Clocks need to associated with events/threads to ensure proper timing



### Universal Times

There is a universal time that needs to be pasted to all systems to ensure proper synchronization
- Handed out by *time servers*
- Very similar to how timezones work

```ad-warning
We have to worry not only about local timings of processes and threads, but we also need to work about the global timing of processes and threads
```
## From the Pre-Reading

Make sure you pay attention to the following:
1. Uniprocessor systems (“Celeron”)
2. Multiprocessor systems 
	- Multiprogramming
	- Multiprocessing
	- Time-Sharing
	- Multitasking
3. Single Core vs. Multi-core Systems

```ad-important
Read the definitions!
```

## Blockchain Stuff

- Remix IDE with Rust or Python
- If I get bored or something

# 3. Action Items & Follow-Up
- [ ] Get ch1 and ch2 zotero notes into obsidian 📅 2026-08-31 