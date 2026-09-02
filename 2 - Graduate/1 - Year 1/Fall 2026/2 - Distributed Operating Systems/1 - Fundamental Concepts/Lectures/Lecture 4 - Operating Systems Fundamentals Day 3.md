---
creation_date: 2026-08-31 10:08
last_modified: 2026-08-31 10:08
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
Good question
```

## Pre-Class Notes

- Try to keep up and extract as much information as possible
# 2. Lecture & Discussion Notes

## What type of system are we using?

1. Linux OS 64 bit
2. Arm 64bit microprocessor
3. Ram: 4GB
4. SDD: 1TB
5. 512 MB of cahce (split between levels 1-3)
6. 3D cache from AMD

## Main Memory Diagram

![[Lecture 4 - Operating Systems Fundamentals Day 3 2026-08-31 10.14.43.excalidraw]]

- Where $N = 2-1$ Memory Page
- 1 Memory page has a capacity of **64 bits → 8 bytes** of information
- 1 Memory Page can be accessed through a *32-bit address*

## How To Locate a Thread $\star$

```ad-note
Remember, the critical section (CS) is the part of the code that is currently under execution
```

At the basic level, finding a thread is based on a few ingredients:
1. Arrays
2. Pointers
3. Vectors/templates
4. Base address of the array

```ad-important
Raw RAM at it's lowest structure represents a $Q_{ds}$ data structure
- Memory is segmented
```

### How to Calculate the Address of a “Thread”

```ad-warning
Direct example, not a definition
```

$$
P_{A}= (S_{A})_{16}*(16)_{10}+(E_{A})_{16}
$$
Where:
- $P_{A}$ = physical address
- $S_{A}$ = segment address
- $E_{A}$ = Effective Address

*To Find a Thread, we also need to worry about*:
1. Code segment ($CS$)
2. Date segment ($DS$)
3. Stack segment
4. Extra segment

$$
P_{A}= \left \{ \left( \frac{CS}{DS} \right)_{16}*(10)_{16} \right \} +(EA_{16})
$$

### Example - Intel 8086 16-bit Microcontroller

It has 16-bit addresses produced:
- $(53AF)_{16}*10_{16}$ → $53AF0$

```ad-important
Therefore, it produces a 20-bit address
```

```ad-warning
This is very inefficient since the address cannot be used on a single clock cycle ($16 + 4 = 20$)
```

Say a thread is 4 bytes away:

$$
53AF0 + 0101 = \boxed{54B00 \leftarrow \text{Location of Thread}}
$$

## OS: From a Memory Prespective

![[Lecture 4 - Operating Systems Fundamentals Day 3 2026-08-31 10.46.58.excalidraw]]

- *Intel 8086*: 256 kB/ = 64kB for all segments (overlapping)
- *ARM*: 4Gb → Has a **MMU (Mmemory Management Unit)** to determine each segment’s length

```ad-note
For the sake of this class:
- $
\boxed{\text{Frame} = \text{Page} \quad \star} 
$
- *Size of Frame is equal to the size of the page*

```

## Previous Lecture Gap: 

On a multi-core system, we can also run threads *in parallel*
- Remember that timing on execution is very strict, *like* a class schedule
- You cannot run indefinite events/threads on a single core
- To solve this, we have a **global clock** (processor)that runs above a set of *local clocks* (cores)
# 3. Action Items & Follow-Up
- [x] Review lecture 4 of D-OS 📅 2026-09-02 ✅ 2026-09-01