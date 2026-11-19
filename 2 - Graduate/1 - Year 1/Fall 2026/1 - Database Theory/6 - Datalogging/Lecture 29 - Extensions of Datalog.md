---
creation_date: 2026-11-13 09:06
last_modified: 2026-11-13 09:06
folder: 6 - Datalogging
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

## Negated Goals

```ad-summary
**NOT ($\neg$)**: IN front of a goal means that an assignemtn of values to the variables must make it false in order for the body to be true.
```

```ad-question
Find drinkers who frequent some bar that Joe **does not** frequent
```


$$
\text{JoeFrequents}(W) :-\text{ Frequents}('Joe', W)
$$
$$
Q(X) :- \text{Frequents}(X, W), \neg\text{JoeFrequents}(W)
$$

## Constants are Arguments

We use numbers, lower-case letter, or quoted strigns to indicate a constant:
$$
\text{JoeFrequents}(W) :- \text{Frequents}(X, W), X = \text{'}Joe\text{'}
$$
```ad-note
Mixed constants and variables are *okay*
```

## Arithmetic Atoms

Comparisons like $<$ may be thought of as infiite, binary relations. 
- The set of all tuples $(x,y)$ such that $x < y$.
- Use the *infix notation* for these predicates

```ad-example
$$
\text{Composite}(A) :- \text{Divided}(B, A), B > , B \neq A
$$
$$
\text{JoeFrequents}(W) :- \text{Frequents}(X, W), X = \text{'}Joe\text{'}
$$
```

```ad-warning
Some extensions allows arithmetic operations in the goal itself.
```

*Equivalent SQL Example*
```sql
SELECT (B+A)*2 AS X, Y
FROM R
WHERE B+A > 1 AND B != A;
```

$$
Q((B+A)/2, Y) :- R(A, B, Y), B+A>1, B\neq A
$$

### Example 1: Salaries

```ad-question
Find the resultant salaries of gross salaries after taxes for salaries 6 figures and over.
```

$$
\text{Composite}((A+10)/2) :- \text{Divided}(B,A), B > 1
$$
$$
\text{SalaryAfterTax}((S \times -0.94)) :-\\ \text{Instructor}(I, N, D, S), S > 100000
$$
### Example 2: Aggregation

```ad-note
Some systems can *also* take aggregation
```

```ad-question
Find the average salary per department that are greater than 6 figures
```
$$
\text{AvgSalary}(\text{avg}(S)) :- \text{Instructor}(I, N, D, S)
$$
$$
\text{TotalSalaryPerDept}(D, \text{sum}(S))\\ :- \text{Instructor}(I, N, D, S), S > 100000
$$
## Safety

When we apply a rule to finite relations, we need to get a **finite result**

```ad-summary
title: Definition
**Safety**: *All variables appear* in some **non-negated**, *relational* (not arithmetic) goal of the body.
- A simple guarantee
- Start witht he join of the non-negated, relational goals
- Select/delete from there
```

### Examples

$$
p(X) :- q(Y)
$$
- $X$ does not appear in the body, which means it can be any amount of values

$$
\text{bachelor}(X) :- \neg \text{Married}(X,Y)
$$
- The negation of the married table could be literally anything. It is unbounded

*Fixes*:
$$
\text{bachelor}(X) :- \text{person}(X), \text{person}(y), \neg\text{married}(X,Y)
$$
- Finds the joins of all people $X, Y$, and *then* removes any pairs that may be married to get the bachelors $X$.

## Graph Example

### Example 1: Paths of Length = 2

```ad-question
Write a Datalog program to find **paths of length two (P2)**
```


| $V_{1}$ | $V_{2}$ |
| ------- | ------- |
| $a$     | $c$     |
| $b$     | $a$     |
| $b$     | $d$     |
| $c$     | $d$     |
| $d$     | $a$     |
| $d$     | $e$     |

![[Pasted image 20261113094842.png]]


$$
Q(X, Z) :- E(X,Y), E(Y, Z)
$$
```ad-note
Same as:
$$E \bowtie_{E.V2 = E.V1} E$$
```

```ad-question
How about starting from $D$ only?
```

$$
Q(X, Z) :- E(X,Y), E(Y, Z), X = \text{'d'}
$$
*Equivalent SQL*:
```sql
SELECT 'd', Z
FROM E e1 JOIN e e2 ON (e1.Y = e2.Y);
```

### Example 2: $v$ is reachable from $u$

```ad-question
Write a SQL and Datalog program to find **all pairs of verticies** $(u, v)$ such that $v$ is reachable from $u$
```

```ad-important
To figure this out, we need to use **recursion**:
- Path of length $1, 2, 3, \dots, N$
```

**IN SQL**
```sql
WITH RECURSIVE reaches(Frm, to) AS (
	SELECT frm, to FROM E
	UNION
	SELECT e1.frm, e2.to
	FROM E e1, reaches e2
	WHERE e1.to = e2.frm
)
SELECT * FROM reaches;
```

**IN DATALOG**

$$
R(X, Y) :- E(X, Y)
$$
$$
R(X, Y) :- E(X, Z), R(Z, Y)
$$
# 3. Action Items & Follow-Up
- [ ] Review Lecture 29 for Databases 📅 2026-11-16 