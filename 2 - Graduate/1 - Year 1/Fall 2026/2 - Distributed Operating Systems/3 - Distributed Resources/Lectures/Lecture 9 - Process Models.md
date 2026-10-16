---
creation_date: 2026-09-14 10:13
last_modified: 2026-09-14 10:13
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

## Introduction

We can often show synchronous processes, asynchronous communication, and time-space using a graph 

**Synchronous**
- Built of of many *confounding variables* that have cause and effect relationships
- We want to minimize the amount of relationship to ensure proper communication

**Asynchronous**:
- Server to client, client to server, and peer-to-peer communication
- ex. Bitcoin

```ad-note
- Programs like web browsers, games, etc. are heavyweight processes
- Lightweight process is everything on the backend that supports the heavyweight process
	- ex. downloading objects, request and reply on the presentation layer, etc.
```

## Role of CPU in all Multi-


| Multiprogramming | Multitasking | Multiprocessing                                                                  |
| ---------------- | ------------ | -------------------------------------------------------------------------------- |
| Single core      | Single core  | Multiple logical cores                                                           |
|                  |              | Time-sharing component where resources need to be shared from process-to-process |

## Concurreny & Transparency

```ad-note
title: Remember
The two most important problems that must be solved for a successful D-OS
```

### Example: Starbucks

```ad-question
Two people order a cake pudding at the same time in the store. How does this relate to concurrency and transparency?
```

**Transparency**
- We do not need to know who makes the cake pudding, how the ordering system works, and which cake pudding it is
- Much like transparency, the user only needs to know what they want to request, not the background processes that make it happen

**Concurrency**:
- When two cake pudding orders come in, we have to make sure both orders don’t come in at the same time if only one cake pudding can be made at once time.

### How to Ensure This Happens

- Clocks make sure that resources are unlocked and locked within a reasonable amount of time to ensure timing guarantees

### Scheduling

Types:
1. First-Come-First-Serve (FCFS)
2. Shortest-Job-First (SJF)
	- Can run into deadlocks if a long process keeps getting superseded by shorter processes
	- This can turn into starvation at the most serious condition
	- Ex. a car cannot merge onto the highway because it is completely backed up

```ad-note
Check notes on scheduling algorithms for more
```


# 3. Action Items & Follow-Up
- [x] Review D-OS lecture 📅 2026-09-16 ✅ 2026-09-16