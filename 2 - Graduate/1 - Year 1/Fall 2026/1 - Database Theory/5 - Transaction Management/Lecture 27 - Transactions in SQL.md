---
creation_date: 2026-11-02 09:07
last_modified: 2026-11-02 09:07
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

## Main Operators

1. **`BEGIN`**`WORK`: Start a new transactions
2. **`COMMIT`**: Finish and make all modifications of transactions persistent
3. **`ABORT`**/**`ROLLBACK`**: Finish and undo all changes of transaction

```ad-example
![[Pasted image 20261102090949.png]]
- The first transaction (green) tranfers money from account 9 to account 10
- The second transaction (red) adds interest to all accounts
```

What are the *problems* that could arise here?
1. Transactions are **interrupted**:
	- NO reduction in `bal` of `acc` 9
	- Only some accounts get interest
2. **Interleaving** of Transactions
	- `Acc` 9 too much interest (before 40 has been deducted)

## Modeling Transactions and Interleaving (Shorthand)

**Notations**:
- $\text{read}: r_{i}(x)$: transaction $i$ read item $x$
- $\text{write: } w_{i}(x)$: Transactions $i$ wrote item $x$
- $\text{commit: }c_{i}$: Transactions $i$ committed
- $\text{abort}: a_{i}$: transaction $i$ aborted

### Example 1: Transferring Money and Adding Interest

![[Pasted image 20261102092559.png]]

$$
T_{1}=r_{1}(a_{10}), w_{1}(a_{10}),r_{1}(a_{9}), w_{1}(a_{9}), c_{1}
$$

![[Pasted image 20261102092647.png]]

$$
T_{2}=r_{2}(a_{1}), w_{2}(a_{1}), r_{2}(a_{2}), r_{2}(a_{9}), w_{2}(a_{9}), r_{2}(a_{10}), w_{2}(a_{10}), c_{2}
$$
## Schedules

```ad-summary
A sequence of instructions that specify the chornological order in which instructions of concrrent transactions are executed
```

- A schedule for a set of transactions must consider *all instructions* of those transactions
- Must *preserve the order* in which the instructions appear in each individual transaction

**On Success**:
- `commit` instructions as the last statement
- By default, the transactions assumed to execute commit instruction as its last step

*On Failure*:
- It will send an `abort` as the last statement instead

### Schedule Examples

```ad-note
title: Order of Instructions
1. $T_1$ transfer \$50 from $A$ to $B$
2. $T_2$ transfer 10\% of the balance from $A$ to $B$
```

**Resultant Serial Schedules**:

Schedule 1 ($T_{1}$ then $T_{2}$)
![[Pasted image 20261102093519.png]]

Schedule 2 ($T_{2}$ then $T_{1}$)

![[Pasted image 20261102093703.png]]

**Non-Serial Schedules**:

Schedule 3 (Interleaving $T_{1}$ and $T_{2}$)

![[Pasted image 20261102093721.png]]

```ad-note
The schedule above is *not* a serial schedule, but it is **equivalent** to Schedule 1
```

#### Consistency Preservation?

For the three schedules provided, consistency is preserved since the sum of $A+B$ is preserved

*Lets say* we have a 4th potential schedule. Is it consistent?

![[Pasted image 20261102094710.png]]

**NO** the value of $A+B$ is not the same.
- $T_{2}$ does not see the 50 deduction in $A$ when it goes to apply a the 10% change
- $T_{2}$ also does not see the 50 addition on $B$ when it goes to sum the two values.

### Serializability

We want schedules that work:
1. regardless of initial state
2. the transaction semantics that happen

```ad-warning
We want to avoid serial schedules because they do not apply any concurrency!
```

We want to find the **equivalent serial schedule**:

```ad-example
![[Pasted image 20261102095117.png]]

$$
S_{3}=r_{1}(A)w_{1}(A)r_{2}(A)w_{2}(A)r_{1}(B)w_{1}(B)r_{2}(B)w_{2}(B)
$$
```

```ad-note
**Assume** that each transaction needs to preserve database consistency.
- Serial execution of a set of transactions preserves database consistency
```

A schedule is **serializable** if it is *equivalent* to a serial schedule.

#### Example: Bad Schedule

$$
S_{5}=r_{1}(A)w_{1}(A)r_{2}(A)w_{2}(A)r_{2}(B)w_{2}(B)r_{1}(B)w_{1}(B)
$$

![[Pasted image 20261102095718.png]]

- $S_{5}$ cannot be rearranged into a serial schedule
	- $T_{2} \not \to T_{1}$
	- $T_{1} \not \to T_{2}$
- NOT GOOD!
### Example: Good Schedule

![[Pasted image 20261102095812.png]]

No cycle, so $S_{3}$ is equivalent to the serial schedule

## Locking Mechanisms

Transactions can either:
1. Dirty read
2. Inconsistent read

And these happen regardless of what scheduling protocol is used!

Therefore, we can implement a **locking protocol** with *two new actions*:
1. Lock - $L_{i}(A)$
2. Unlock - $U_{i}(A)$

**Rules**:
1. Transaciton ahs to lock $A$ beofre it can access $A$
2. Transaction has to unlock $A$ eventually
3. Transaction cannot access $A$ after unlock

```ad-warning
Only one trasnaction can hold a lock on an element at a time.
``` 


# 3. Action Items & Follow-Up
- [x] Review Lecture 27 for Databases 📅 2026-11-04 ✅ 2026-11-06
- [x] HW3 for Databases ⏫ 📅 2026-11-06 ✅ 2026-11-13