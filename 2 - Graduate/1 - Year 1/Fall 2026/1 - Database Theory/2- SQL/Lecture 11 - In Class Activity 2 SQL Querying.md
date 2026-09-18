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

## Verify Integrity Constraint Violations

## Assertions

#comebacklater 

# 3. Action Items & Follow-Up
- [ ] Review in class activity for databases 📅 2026-09-21 