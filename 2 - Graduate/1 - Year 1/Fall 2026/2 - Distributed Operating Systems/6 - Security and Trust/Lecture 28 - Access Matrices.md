---
creation_date: 2026-11-06 10:16
last_modified: 2026-11-06 10:16
folder: 5 - Deadlocking in DOS
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

### New Class Materials

- New numerical deadlock added to canvas
- New class pre-readings have been added as well (security and protection)
- Chapter 9 is added as well
- Chapter 10 relates the to the security and the protection

### Exam Extra Credit Question

- Quick version of the smoker’s problem

# 2. Lecture & Discussion Notes

## System Hardening

```ad-summary
Improving operating systems' resilence to attacks
- Reduce the attack vectors possible on the system
```

```ad-example
Using an Oracle-based operating system to run a project
- Requested the license to use it
- They got rejected thinking they needed the whole database
- They eventually came back around saying that they could attack the database and suspect them of fowl play
- They were aware of system hardening and did not want to make a new vector in the system
```

### Potential Vectors

- Distributed Denial of Service Attack (dDoS)

### How to Harden an OS

- Proper privilege management
- Strict Hierarchy 

## Access Matrix

View protection can be shown as a matrix
- Rows represent domains
- Columns represent objects

$\text{Access}(i, j)$ is the set of operations taht a process executing in $\text{Domain}_{i}$ can invoke on $\text{Object}_{j}$

*Example*

| Domain/Object | $F_{1}$    | $F_{2}$ | $F_{3}$    | Printer |
| ------------- | ---------- | ------- | ---------- | ------- |
| $D_{1}$       | Read       |         | Read       |         |
| $D_{2}$       |            |         |            | Print   |
| $D_{3}$       |            | Read    | Execute    |         |
| $D_{4}$       | Read/Write |         | Read/Write |         |

### Example 1

| $F_{1}$    | $F_{2}$ | $F_{3}$    | Printer | $D_{1}$ | $D_{2}$ | $D_{3}$<br> | $D_{4}$ |
| ---------- | ------- | ---------- | ------- | ------- | ------- | ----------- | ------- |
| Read       |         | Read       |         |         | Switch  |             |         |
|            |         |            | print   |         |         | switch      | switch  |
|            | read    | execute    |         |         |         |             |         |
| read/write |         | read/write |         | switch  |         |             |         |

### Use of Access Matrix

If a process in domain $D_{i}$ tries to do “op” on object, it must have the correct permissions to do so
1. Read
2. Write
3. Execute
4. Process Switch (domain only)

```ad-note
Very similar to how copyright works IRL
```
# 3. Action Items & Follow-Up
- [x] Review Lecture 28 for DoS 📅 2026-11-09 ✅ 2026-11-13