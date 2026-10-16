---
creation_date: 2026-09-18 09:26
last_modified: 2026-09-18 09:26
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
- In-Class Posgresql Activity
- Check Statements
- Views
- Transactions
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## In-Class Activity

### Part 1 - Creating the Table

```sql
CREATE TABLE accounts (
	account_id serial NOT NULL,
	owner_name varchar(100),
	balance numeric(10,2) NOT NULL CHECK (balance >= 0)
);
CREATE TABLE transactions_log (
	txn_id SERIAL PRIMARY KEY,
	from_account INT REFERENCES accounts(account_id),
	to_account INT REFERENCES accounts(account_id),
	amount NUMERIC(10,2) NOT NULL CHECK (amount > 0),
	txn_time TIMESTAMP DEFAULT now()
);
```

![[Pasted image 20260918092736.png]]


```sql
/* Select from the tables */
SELECT * FROM accounts;
SELECT * FROM transaction_log;

/* Add tuples to tables */
INSERT INTO accounts (owner_name, balance) VALUES ('Alice Chen', 500.00);
INSERT INTO accounts (owner_name, balance) VALUES ('Brianna Lopez', 250.00);
INSERT INTO accounts (owner_name, balance) VALUES ('Carlos Diaz', 10.00);
```

### Part 2: Creating Views

```sql
/* Part 2: Create Views */

CREATE VIEW account_summary as (
	SELECT account_id, owner_name, balance
	FROM accounts
	WHERE accounts.balance > 0
);

CREATE VIEW low_balance_accounts as (
	SELECT account_id, owner_name, balance
	FROM accounts
	WHERE accounts.balance < 50
);

SELECT * FROM account_summary;
SELECT * FROM low_balance_accounts
```

### Part 3: A Money-Transaction

```sql
/* Part 3: Transactions */
BEGIN;
	UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
	UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;
	INSERT INTO transaction_log(from_account, to_account, amount) VALUES (1, 2, 100);

COMMIT;

SELECT * FROM account_summary;

SELECT * FROM transaction_log
WHERE from_account = 1 AND to_account = 2;
```

## Integrity Constraints

```ad-summary
Guards against *accidental damage* to the database; it ensures taht authorized changes to the database do not result in a loss of data consistency.
```

*Examples*:
1. A checking account must have a balance greater than $10,000 
2. A salary of a bank employee must be a
t least $40.00 an hour
A customer must have a (non-null) phone number

Assigned as part of the database schema design process
- But can also be assigned post-existence

### Single Relation Constraints

1. **Not Null**: Prohibits the insertion of a null value for the attribute

```sql
name varchar(20) not null
budget numeric(12,2) not null
```

2. **Unique**: The attributes $A_{1}, A_{2},\dots,A_{m}$ form a **superkey**

### Check Clause

```ad-summary
Specificies a predicate $P$ must be satisfied by every tuple in a relation
- Permits attribute domains to be restricted in powerful ways
```

```sql
create table section (
	course_id varchar(8),
	sec_id varchar(8),
	semester varchar(6),
	year numeric(4,0),
	building varchar(15),
	room_number varchar(7),
	time_slot_id varchar(4),
	primary key (course_id, sec_id, semester, year)
	check (semester in ("Fall", "Winter", "Spring", "Summer"))
);
```

#### Complex Check Conditions

```ad-important
The predicate in the cehec k clause can be an arbitrary predicate that can include a *subquery*
```

```sql
check (time_slot_id in (select time_slot_id from time_slot))
```

- The check condition states that the `time_slot_id` in each tuple in the `section` relation is actually the identifier of a time slot in the `time_slot` relation
- The condition has to be checked when a tuple is inserted/modified in `section`, **and** when the relation `time_slot` changes
## Assertions

#comebacklater 

# 3. Action Items & Follow-Up
- [x] Review in class activity for databases 📅 2026-09-21 ✅ 2026-09-21