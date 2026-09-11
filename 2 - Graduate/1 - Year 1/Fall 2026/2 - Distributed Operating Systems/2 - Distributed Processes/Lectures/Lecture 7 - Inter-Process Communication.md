---
creation_date: 2026-09-09 10:03
last_modified: 2026-09-09 10:03
folder: 2 - Distributed Processes
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

- Make sure to keep up with the pre-readings as they come out to not get swamped in the long run
# 2. Lecture & Discussion Notes

## Timestamps and Inter-Process Communication

```ad-question
Consider that we have four vectors (`1000`, `0100`, `0010`, and `0001`) for four different groups of processes
```

- The first event ($\Delta t_{1}$) occurs before the second event ($\Delta t_{2}$) and so on
- These are the **timestamps** on each vector and determines when and where we run a process
- In the previous class (OS), we only had to worry about the computation time
	- The default unit is often given in miliseconds (ms)
- For this class, we need to worry about the computation time **and** the *communication* time

### Example: Cincinnati Reds Baseball Game

![[Lecture 7 - 2026-09-09 10.25.32.excalidraw]]

```ad-important
Much like how runners, the ball, and the batter moves from base to base, process information can move from **vector-to-vector**. This is called **inter-process communication (IPC)**
``` 

### Example: Pipe Operation

```ad-summary
In Linux, the pipe operation (`||`), the output of one program is acting as the input to *another program*
```

- The output of one process is often the input for another process!

### Example: Process Graph

![[Lecture 7 - Inter-Process Communication 2026-09-09 10.39.42.excalidraw]]

In this case, event 10 *happens before* event 01
- A good way to describe when processes run

Ordered in an ascending order
- This means that we can use a **binary search** to find a specific process

```ad-question
What if through IPC, we learn that the second event  on the second processo rneeds to move to the first process. What would the new name be?
```

You would take the highest values of both the first vector and the second vector and add them together:

$$
01+02=12
$$
```ad-note
Remember, regardless of this, `01` will happen *before* `12`
```

## Global Events

For global events, we want to take them in *increasing* order

```ad-note
What if there is a tie (ex. `12`)? This will be explained in a further class
```

## Calculating Time Lag

What goes into time lag?:
1. **Passive Phase**: the time to run the algorithm (aka a wait time)
	- Will increase over time as more and more information is needed from other processes in a distributed OS

```ad-important
Linear algebra is used!
```

$$
bs[P]
$$
$$
bs[P^l\dots Q^h]
$$

$$
bs[p^l\dots p^{m-1}p^{m}p^{m+1}\dots Q^h]
$$

$$
bs[p^l\dots p^hp^mp^l\dots Q^{h2}]
$$


# 3. Action Items & Follow-Up
- [ ] Review Lecture 7 for D-OS 📅 2026-09-11