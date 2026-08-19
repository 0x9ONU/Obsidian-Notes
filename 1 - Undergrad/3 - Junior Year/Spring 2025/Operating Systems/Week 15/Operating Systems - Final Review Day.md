Date: 7th May 2025
Date Modified: 7th May 2025
File Folder: Week 15
#operatingsystems

![[finalStudyGuide_eccs3661_25S.pdf]]

```ad-note
Final will be longer, but not *twice as long* as the midterms. Maybe 50% more content
```
# Mutex

```ad-summary
title: Definition
C++ implementation of mutual exclusion mechanism
```

- Contains both the object and the lock guard class
- Everything below the lock is where mutual exclusion can happen
- The agreed upon exclusive access to one or more resource(s)

In C++, there are two parts:
- `mutex` obj
- `lock_guard` obj

`lock_guard` to begin the mutual exclusion
- Lock ends at the end of the scope of the function


# Segmentation

```ad-question
If we have a problem about segmentation translaiton, will it be in binary or decimal
```

Either works, but it will most likely be in *decimal*

## Exercise

Consider a simple segmentation system that has the following table:


| Segment Number | Starting Address | Length (bytes) |
| -------------- | ---------------- | -------------- |
| 0              | 660              | 248            |
| 1              | 1752             | 422            |
| 2              | 222              | 198            |
| 3              | 996              | 604            |

Translate the following:
1. Segment 2, offset 200 → $200 \not \le 198$, so there is a *segmentation fault*
2. Segment 3, offset 300 → $300 \le 604$, so there is **no segment fault**. $996 + 300 = 1296$
3. Segment 0, offset 50 → $50 \leq 248$, so there is **no segment fault**. $660+50=710$

# Deadlocks

## Unsafe Stages Diagram

![[Pasted image 20250507083828.png]]

![[Pasted image 20250507083841.png]]

The cross-hatched area CANNOT be moved into. There is no way to get into that state.

```ad-important
A safe state contains at least one path *without a deadlock*
```

![[Operating Systems - Final Review Day 2025-05-07 08.42.51.excalidraw]]

```ad-note
Only *one* unsafe state in the second diagrams. THe first diagram does **not** have *any* unsafe states
```

# General Questions

## Process vs. Thread

| Process                                                                                | Thread                                                                               |
| -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| Structures in an OS that is used to *manage resource allocation* to executing programs | Structure of an OS that keeps track of *scheduling and state* for executing programs |

```ad-note
Typically, the process is like a house, and the threads are the residents/roommates of the house.
```
## Snippets of Code on the Final

- ANYTHING from he slides
- Don’t expect highly novel code

## How Much Content will be From Previous Exams

Mostly weighted towards the content *since* Midterm 2

## Are There any Linux Commands?

*Definitely no coding*, and there is a highly unlikely chance of commands being on there as well