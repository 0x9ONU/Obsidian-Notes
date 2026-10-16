---
creation_date: 2026-10-05 10:09
last_modified: 2026-10-05 10:09
folder: 4 - Distributed Algorithms
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

![[DCLE.pdf]]
# 2. Lecture & Discussion Notes

## With the Hospital Problem, How Do We Ensure Concurrency Transparency?

```ad-note
title: Reminder
**Concurrency Transparency:** Manages concurrent access to shared resources by multiple users or processes, ensuring that their actions do not interfere with each other.
```

To ensure proper management of the system, we have to ensure the diplomacy of the system

A simple answer would be to ask the user themselves to set the number of consumers $n$ on a bounded buffer.
- This is not correct 

*Make the assumptions:*
- **Consumer**: Only a single consumer to simplify problem
- **Producer**: has multiple variations ($P_{1} \to P_{n}$)
	- We will set $n$ to 5 as our assumption
- **Buffer size** will be set to 5 to make it static
- **Vector Logic Clock**: 

![[Pasted image 20261005104343.png]]

## Request, Claim and Assignment

1. **Request**: When a process asks for a resource
2. **Claim**: A process can claim a source once the request has been accepted
3. **Assignment**: The process is given the resource by the leader without any request/claim


# 3. Action Items & Follow-Up
- [x] Review Lecture 18 📅 2026-10-07 ✅ 2026-10-07