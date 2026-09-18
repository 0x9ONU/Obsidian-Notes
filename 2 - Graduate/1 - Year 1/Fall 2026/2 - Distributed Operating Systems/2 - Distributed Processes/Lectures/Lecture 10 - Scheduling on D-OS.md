---
creation_date: 2026-09-16 10:11
last_modified: 2026-09-16 10:11
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

## Scheduling for D-OS

Where does D-OS fall in terms of scheduling algorithms?
1. Rate-monotonic Scheduling (RMS):  
2. Earliest-Deadline-First (EDF): 

```ad-note
Single CPUs run threads in order, while a multi-core CPU will run threads on its various cores in parallel
```

*Super Computer OS Scheduling*:
- An “infinite” amount of jobs are given to the system
- $2^\infty -1$ is used to represent this
- Where $\infty \rightarrow$ you keep adding memory everyday
- A queue is maintained to ensure guarantees that every process will run

```ad-important
To ensure a system is running properly, we want to make sure we use **metrics** to access the chose algorithm. These include:
1. Waiting Time
2. Turnaround Time
3. Execute Time
4. Response Time
```

## Round-Robin Example

We break up the processes into time quantum slices
- Ex. lets set the time quantum to $3ms$


| Process | Time  |
| ------- | ----- |
| $P_{1}$ | $5ms$ |
| $P_{2}$ | $3ms$ |
| $P_{3}$ | 8ms   |
| $P_{4}$ | $9ms$ |

**Process Order**
![[Lecture 10 - Scheduling on D-OS 2026-09-16 10.53.37.excalidraw]]

*Example: Office Hours*

If 2 hours of office hours broken up among 22 student, we will have:

$$
\frac{120m}{22 \text{ Students}} \approx 5 \text{ Minutes per Student}
$$


# 3. Action Items & Follow-Up
- [ ] Review Lecture 10 for D-OS 📅 2026-09-18