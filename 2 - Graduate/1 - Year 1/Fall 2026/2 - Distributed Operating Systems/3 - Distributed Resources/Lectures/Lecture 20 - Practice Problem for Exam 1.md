---
creation_date: 2026-10-09 10:11
last_modified: 2026-10-09 10:11
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
# 2. Lecture & Discussion Notes

## Question

Four processes $P_{1}, P_{2}, P_{3}, P_{4}$ generate the following vector timestamps:
- $e_{1} = [2,1,0,0]$
- $e_{2} = [2,3,0,0]$
- $e_{3} = [1,2,1,0]$
- $e_{4}=[2,3,2,1]$
- $e_{5} = [3,2,1,0]$

For every pair of events, determine whether the events are:
1. causally ordered, or
2. concurrent

Provide justification using the partial ordering relationship of vector timestamps

## Answer

```ad-note
title: Remember
![[Lecture 8 - Scheduling Algorithms#Vector Logical Lock]]
```

*Causality*: $e_{i}\to e_{j}$ to occur (aka casuality)
$$
Vc(e_{i}) \le Vc(e_{j})
$$ *Concurrency*: $e_{i} \not \to e_{j}$
$$
Vc(e_i) > Vc(e_j)$$

1. $e_{1} \to e_{2}$ is casually ordered
	- $e_{2} - e_{1}$ is positive
2. $e_{2} \to e_{3}$ is concurrent
	- $e_{3} - e_{2}$ is negative
3. $e_{3} \to e_{4}$ is casual
	- $e_{4} - e_{3}$ is positive
4. $e_{4} \to e_{5}$ is concurrent
	- $e_{5}-e_{4}$ is negative

## Lamport Logical Clock

```ad-important
1. Vector logical clock gives causality ordering
2. Physical Logical CLock preserve causality
```

## For Exam

1. Sl1
2. SL2
3. SL3
4. Hospital problem
# 3. Action Items & Follow-Up
- [x] review lecture 20 for D-OS 📅 2026-10-12 ✅ 2026-10-14