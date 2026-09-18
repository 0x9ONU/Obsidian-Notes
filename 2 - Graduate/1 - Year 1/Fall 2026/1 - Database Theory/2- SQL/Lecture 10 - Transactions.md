---
creation_date: 2026-09-16 09:09
last_modified: 2026-09-16 09:09
folder: 2- SQL
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

### Comprehensive Exam

- No electronics
- 2 Pages of “Cheat Sheet”
- 25% of the final grade
- During the last week of the semester (Finals)
# 2. Lecture & Discussion Notes

## Transactions

```ad-summary
A unit of work, which conssits of a sequence of query and/or update statements
```

**Atomic Transaction**:
- Either fully executed or rolled back as if it never occurred
- Isolated from concurrent transactions

```ad-note
Used to avoid inconsistencies in data. Kind of like a checkpoint
```

Transactions **begin** implictly when an SQL statemtn is executed
- Ended by `commit (work)` or `rollback (work)` 

```ad-note
Defaulted to each SQL statements committing
```

### Atomicity (All-or-NOthing)

- Relation `accounts(accID, cust, type, balance)`
- A customer wants to transfer $100 from his saving to his checking (`accID=100` and `accID=101`)

```sql
UPDATE accounts SET balance = balance - 100 WHERE accID = 100;
UPDATE accounts SET balance = balance + 100 WHERE accID = 101;

COMMIT
```

```ad-important
If something bad happens between the top and COMMIT, it can be rolled back to before the balance was change, so no money is lost.
```

```ad-warning
This can cause inconsistencies if the system crashes after the frist update
- The user would end up loosing money
```

To prevent this, we can begint he transaction with the `begin` statement so either both or none of these statement will be executed:

```sql
BEGIN
	UPDATE accouns SET balance = balance - 100 WHERE accID = 100;
	UPDATE accounts SET balance = balance + 100 WHERE accID = 101;
COMMIT
```

### Transactions and Concurrency

Also used to isolate concurrent actions of different users

```ad-note
Recall that if several users are modifying the database at the same time, that an lead to *inconsistencies*
```

## Integrity Constraints

```ad-summary
Integrity constraints the *guard against accidental* damage to the database.
- Ensures taht authorized chagnes to the database do not result in a loss of data consistency
```

```ad-example
1. A checking account must have a balance greater than $10,000
2. A salary of a bank employee must be at least $40.00 an hour
3. A customer must have a (non-null) phone number
```

Usually defined as part of the database schema design process:
- Can also be added to an existing relation

### Non-`null` Constraints

Prohibits the insertion of a null value for the attribute

```ad-example
Declare `name` and `budget` to be *not null*
```

```sql
name varcahr(20) not null
budget numeric(12,2) not null
```

### Unique Constraints

Checks if a list of attributes $A_{1}, A_{2},\dots,A_{m}$ form a superkey
- This permits certain values to be null, which might be important depending on the database




# 3. Action Items & Follow-Up
- [ ] Review Databases Lecture 10 📅 2026-09-18 
- [ ] Report 1 for Databases 📅 2026-09-27 ⏫ 