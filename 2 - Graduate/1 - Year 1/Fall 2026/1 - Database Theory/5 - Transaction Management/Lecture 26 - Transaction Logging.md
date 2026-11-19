---
creation_date: 2026-10-30 09:00
last_modified: 2026-10-30 09:00
folder: 5 - Transaction Management
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

## Logging

Record redo and undo information for every update in a *log*

```ad-summary
A log is an ordered list of redo and undo actions
- Transaction id
- Old/new data
- Location of the data
- Which operations have been executed
- Which operations are reflected on disk.
```

### Undo Logging

Makes repairs to the database by *undoing* the effect of transactions that **have not completed**
- Uncommited transactions can be rolled back after a crash or if they were aborted

**Types of Undo Logging**:
1. `<T, start>`: transaction $T$ has begun.
2. `<T, commit>`: transaction $T$ has completed successfully
3. `<T< abort>`: Transaction $T$ could not be completed

*Triplet Form*: `T, X, v`
- $T$: Transaction
- $x$: changed element
- $v$: former value

#### Example: Sucessful Logging

*Start Transaction and log the first change*
![[Pasted image 20261030091815.png]]

*Log the second change*
![[Pasted image 20261030091820.png]]

*Move the values over to the disk*
![[Pasted image 20261030091832.png]]

*On success, commit*
![[Pasted image 20261030091840.png]]

```ad-warning
Make sure that you commit and flush the log *only* when the disk reflects all the new changes.
```
#### Undo Logging Rules

1. For every action, generate undo log record (containing old value)
2. Before $x$ is modified on disk, log records pertaining to $x$ must be on disk (**WAL**: Write Ahead Logging)
3. Before commit is flushed to log, all writes of transaction must be reflected on disk.

#### Recovery Rules

Let $S$ = set of transactions with $T_{i}$ with $\left <T_{i}, start \right >$
- If $\left < T_{i}, commit \right >$ or $\left < T_{i}, abort \right >$ in log: *do nothing*
- For each $\left < T_{i}, x, v \right >$ in log:
	- In reverse order (latest → earliest) do if $T_{i} \in S$
		- Write $(X,v)$
		- Output $X$
	- For each $T_{i} \in S$ do:
		- Write $\left < T_{i}, abort \right >$ to log.

##### Example: Failure and Recovery with Logging

*Failure happens when writing $B$ to the disk*
![[Pasted image 20261030092815.png]]

*Undo changes to $A$ in memory*
![[Pasted image 20261030092844.png]]

*Undo Changes to $B$ in memory*
![[Pasted image 20261030092908.png]]

*Rollback$A$ in memory→disk*
![[Pasted image 20261030092940.png]]

*Raise the abort flag*
![[Pasted image 20261030092953.png]]

#### Failure During Recovery

```ad-question
What happens when failure occurs during recovery?
```

It is **idempotent**: Even if we have to restart, as long as we have the original log, it will just over-write the memory again.
- We can restart the recovery process even if the recovery process crashes

#### Drawbacks of Undo Logging

1. A lot of I/O to commit (write all changes to disk)
2. Cannot bring backup DB copies up-to-date (it will have the old data before recovery)

### Redo Logging

```ad-summary
Make repair to the database by *redoing* the effect of transactions that have completed successfully.
- Committed transactions before a crash
```

**Types**: are the *same* as undo logging, **except**:
- $v$ is the new value instead of the old value

#### Example: Deferred Modification

*Ready to commit*
![[Pasted image 20261030094207.png]]

*Start write later on*
![[Pasted image 20261030094220.png]]

*Send end to sohw that we are done*
![[Pasted image 20261030094226.png]]

```ad-important
Even if we lose the modified values information in memory, we can still redo it as long as we still have the log!
```

#### Redo Logging Rules

1. For every action, generate a redo log record (containing new value)
2. Before $X$ is modified on disk, all log records for transaction that modified $X$ (including commit) must be on disk.
3. Flush log at commit
4. Write `END` record after DB updates flushed to disk

#### Recovery Rules for Redo Logging

Let $S=$ set of transaction with:
- $\left < T_{i}, commit \right>$ and *no* $\left < T_{i}, end \right >$ in log: *do nothing*
- For each $\left < T_{i}, X, v \right > $ in log
	- In forward order (earliest → latest) do if $T_{i} \in S$
		- Write $(X, v)$
		- Output $X$
- For each $T_{i} \in S$: Write $\left < T_{i}, end \right >$ to log

### Undo vs. Redo Comparision


| UNDO                                                                                  | REDO                                                                                 |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| **Cancels** the effect of incomplete transactions                                     | *ignores* incomplete transactions                                                    |
| *ignores* commited ones                                                               | **repeats** the changes made by committed ones                                       |
| Requires writing changed elements to disk **before** the commit log record is written | Requires writing changed elements to disk **after** the commit log record is written |
| $\left <T_{i}, X, u \right >$ where $u$ is the old value of $X$                       | $\left <T_{i}, X, v \right >$ where $v$ is the old value of $X$                      |

### Big Example

Transfer \$30 from $A$ to $B$, , and charge a \$2 fee from $A$ to do so.

```
Read(A, t); t := t-30; Write(A, t);
Read(B, u); u := t+30; Write(B, u);
Read(A, t); t := t-2;  Write(A, t);
Read(F, v); v := v+2;  Write(F, v);
```


| Step  | Action      | A   | B   | F   |
| ----- | ----------- | --- | --- | --- |
| start | -           | 100 | 200 | 10  |
| 1     | A := A - 30 | 70  | 200 | 10  |
| 2     | B := B + 30 | 70  | 230 | 10  |
| 3     | A := A -2   | 68  | 230 | 10  |
| 4     | F := F + 2  | 68  | 230 | 12  |

#### Apply Undo Logging

```
<T, start>
<T, A, 100>
<T, B, 200>
<T, A, 70>
<T, F, 10>
```

- Output(A), Output(B), Output(F) ← all
- <T, commit>

### Apply Redo Logging

```
<T, start>
<T, A, 70>
<T, A, 230>
<T, B, 68>
<T, F, 12>
<T, COMMIT>
```

- Output(A), Ouput(B), Output(F) ← data to disk only afer commit
- Write `<T, output>`
# 3. Action Items & Follow-Up
- [x] Review Lecture 26 for Databases 📅 2026-11-02 ✅ 2026-11-02