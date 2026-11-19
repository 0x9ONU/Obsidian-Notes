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
A database must provide a mechanism that will ensure that all possbile schedules are:
1. either conflict or view serializable, and
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

```ad-warning
title: Assumption
If $T$ starts with consistent state and $T$ executes in isolation, then $T$ leaves the database in a consistent state.
```

### ACID

1. **Atomicity**: Either all or no commands of transaction are executed
2. **Consistency**: After transaction DB is consistent (if before consistent)
3. **Isolation**: Transactions are running isolated from each other
	- Although multiple transactions may execute concurrently, each transaction must be unaware of other concurrently executing transactions.
4. **Durability**: Modifications of transactions are never lost.

### Transaction Model

**Operations**:
1. **Read($A$)**: read value of data item $A$
2. **Write($A$)**: Write a new value of data item $A$
3. **Commit**: Commit changes of the transaction
4. **Abort**: Revert changes made by the transaction

```ad-summary
title: Definition
**Data Items**: Objects in the database
- Usually we consider tuples(rows) or disk pages
```

#### Example: Applying ACID

Transaction to transfer $50 from account A to account B:

```
Read(A)
A := A - 50
Write(A)
Read(B)
B := B + 50
Write(B)
```

1. **Atomicity**: If the transaction fails after step 3 and before step 6
	- Money will be “lost”, leading to inconsistencies
	- Partially executed transaction should not be reflected
2. **Consistency**: The sum of A and B is unchanged by the execution of the transaction
	- Need to explicitly specified integrity constrains (*Primary* and *Foreign* keys)
	- Implict integrity constraints
	- A transaction must see a consistent database (*not*  **during transaction execution**)
	- When the transaction completes successfully, the database must be consistent
3. **Isolation**: If between steps 3 and 6,a another transaction $T_{2}$ is allowed to access the partially updated database (prints the total sum of A+B)
	- It will see an inconsistent database, which should not be possible
	- One solution is to keep a snapshot so that $T_{2}$ reads the data when it was consistent even when it is called during the transaction
	- **Locking Mechanisms** 
4. **Durability**: Once the user has been notified that the transaction has completed (ex. the transfer of the $50 has taken place)
	- The updates must persist to keep the user up-to-date on the state of the database

### Transaction State

![[Pasted image 20261028093458.png]]

**States**
1. **Active**: The initial state; the transactions stays in this state while it is executing
2. **Partially Committed**: After the final statement has been executed (still possible to be **aborted** even after the transaction is completed)
3. **Failed**: after the discovery that the normal execution can no longer proceed
4. **Aborted**: After the transaction has been rolled back and the database restored to its state prior to the start of the transaction
	- *Option 1*: Restart the transaction (if possible)
	- *Option 2*: Kill the transaction
5. **Committed**: After successful completion

*Operations*
1. $\text{Input}(x)$: Block containing $x \to$ memory
2. $\text{Output}(x)$: Block containing $x \to$ disk
3. $\text{Read}(x,t)$: Do $\text{Input(x)}$ if necessary
	- $t \leftarrow$ value of $x$ in block
4. $Write(x,t)$: Do $\text{Input}(x)$ if necessary
	- value of $x$ in block $\leftarrow t$

#### Example: Unfinished Transaction

```ad-note
- Constraint = $A = B$
- where:
	- $A \leftarrow A \times 2$
	- $B \leftarrow B \times 2$
```

![[Pasted image 20261028094033.png]]

```
Read(A, t);
t <- t x 2
Write(A, t);
Read(B, t);
t <- t x 2
Write(B, t)
Output(A);
Output(B);
```

**Successful!**

![[Pasted image 20261028094144.png]]

![[Pasted image 20261028094139.png]]

*Failure!*

![[Pasted image 20261028094318.png]]

```ad-important
1. **Atomicity** needs to be held: All actions of a transaction must be held or none at all
2. On *success*, we have to **commit**
3. On *failure*, we have to **abort** an instruction to the last statement (before either output)
```

### Restoring Consistent State After Crash

```ad-note
We want the following after recovery:
1. Changes of commited transactions should be reflected on the disk.
2. Changes of unfinished transactions should *not* be reflected on the disk.
```


From the previous example, we need to undo the write to $A$ to recover the consistent state.

![[Pasted image 20261028094855.png]]

```ad-question
What is the desired behavior here? Which transactions should be kept and which ones need to be aborted? 
```

- $T_{1}, T_{2}, T_{3}$ should be durable and written to the disk
- $T_{4}$ and $T_{5}$ should be aborted and re-written.

```ad-important
Therefore, after a crash we need to:
1. **Undo** changes of unfinished transactions
2. **Redo** changes of finished transactions

This can be done via:
1. Storing additional data for Undo/Redo
2. Avoid situations if possbile
```

See [[Lecture 26 - Transaction Logging]] For more information!

# 3. Action Items & Follow-Up
- [x] Review lecture 25 for Database theory 📅 2026-10-30 ✅ 2026-10-30