---
creation_date: 2026-10-26 09:00
last_modified: 2026-10-26 09:00
folder: 4- Data Analytics
tags:
  - type/lecture
  - field/database-theory
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

```ad-summary
A **transaction** is a *unit* of a program execution that accesses and possibly updates various data items.
```

*Example*: A transaction to transfer $50 from account A to account B:

```
read(A)
A := A - 50
write(A)
read(B)
B := B + 50
write(B)
```

```ad-warning
Two main issues:
1. Failures of varoius kinds
2. Concurrent execution of multiple transactions
```

### Failure Classification

1. **Transactional Failure**
	- *Logical Errors*: Transaction fails due to some internal error condition such as a bad input, data not found, overflow, or resource limit exceeded
	- *System errors*: The database system must terminate an active transaction due to an error condition *ex. deadlock*.
2. **System Crash**:
	- A power failure or other hardware or software failure causes the system to crash
3. **Disk Failure**: 
	- A head crash or similar disk failure destroys all or part of disk storage.

## Recovery

A DBMS should enable to re-establish correctness of data in the presence of failures. Aka. restoring the correct state.

### Recovery Algorithms

**Two Main Parts**:
1. Actions taken during normal transaction processing to ensure enough information exists to recover from failures
2. Actions taken after a failure to recover the database contents to a state that ensures;
	- Atomicity
	- Consistency
	- Durability

## Concurrency

Multiple clients should be able to access the database concurrently
- This can lead to problems with correctness of data because of *interleaving of operations* form different clients
- Should ensure correctness via **concurrency control**

### Concurrency Control

#### Problem with Serial Schedules

```ad-summary
A database must provide a mehcanism that will esnure that all possbile scheudlaes are:
1. either conflict or view seriazable, and
2. recoverable and preferably cascadeless
```

```ad-warning
A policy in which only *one transaction* can execute at a time generates **serial schedules**, but bad concurrency
```

**Goal**: Develop concurrency control protocols that will assure serializability
- Testing a schedule for seralizability *after* it has executed is too late!

#### Keeping Integrity of Data

```ad-question
How would we keep data to be "accurate" or "correct" at all times?
```

![[Pasted image 20261026093301.png]]

**Predicates data must satisfy**

```ad-example
- $x$ is a key of relation $R$
- $x \to y$ holds in $R$
- $\text{Domain}(x) = \left \{ \text{Red, Blue, Green} \right \}$
- $\alpha$ is valid index for attribute $x$ of $R$
- No employee should make more than twice the average salary
```

**Note**: $x \to y$ shows functional dependancy
- Ex. $city \to state$ implies that the a city exists in a state, but not other other way around (A city cannot take up more than one state).

#### Definitions

**Consistent State**: Makes sure that all constraints are satisfied
- Specified in the schema
- Specified in any other constraints on the database that should hold

**Consistent DB**: DB in a consistent state
- Collection of all the stored data items in the database at a given point in time is consistent

#### Constraints

Sets ways for consistency. However, not always “fully correct”

```ad-example
title: Example: Transaction Constraints
- When account record is deleted: Balance = 0
- When sslary is updated: New salary > old salary
```

Could be “emulated” by simple constraints:
- We don’t delete any rows, but instead just mark the row if it is deleted or not

![[Pasted image 20261026094332.png]]

```ad-example
title: Exaple: Databases should reflect the real world
![[Pasted image 20261026095040.png]]
```

What happens if we set a constraint such that $a_{1}+a_{2}+\dots+a_{n}=TOT$:
- Deposit $\$100$ in $a_2$
- $A_{2} \leftarrow a_{2} + 100$
- $TOT \leftarrow TOT + 100$

![[Pasted image 20261026095221.png]]

```ad-important
These examples make it clear that we need to continue to use constraints and that he DB can't be *consistent always*.
```

## Transactions

```ad-summary
A collection of actions that *preserve consistency*

![[Pasted image 20261026095500.png]]
```


# 3. Action Items & Follow-Up
- [ ] Review lecture 25 for Database theory 📅 2026-10-28 