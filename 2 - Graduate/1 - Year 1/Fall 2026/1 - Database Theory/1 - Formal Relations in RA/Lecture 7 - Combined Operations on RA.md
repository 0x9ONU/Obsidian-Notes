---
creation_date: 2026-09-09 08:56
last_modified: 2026-09-09 08:56
folder: 1 - Formal Relations in RA
tags:
  - type/lecture
  - field/database-theory
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
- Bags
- Dupicate Elimination
- Sorting
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Operations on Bags

```ad-summary
A **bag** is a set with repeated elements. 
- Relational engines do *work with* bags
- Important because bags are common in practice
```

All operations need to be defined *carefully* on bags:
- $\left \{ a,b,b,c\right\} \cup \{a,b,b,b,e,f,f\}=\{a,a,b,b,b,b,b,c,e,f,f\}$
	- If a union is done between these two tables, the elements all appear multiple times
- $\{a,b,b,b,c,c\}- \{b,c,c,c,d\} = \{a,b,b\}$

```ad-note
Select, project, and join work for bags as well as **sets**:
- $\sigma$: Preserve the number of occurances
- $\pi$ No duplicate elimination
- $\times$ and $\bowtie$: No duplicate elimination
```

Both **commutative** and **assocaitive** properties hold for bags on union and intersection.

```ad-warning
However, for **distributivity**, it does *not* hold as order of operations matters here
$$R \cap (S \cup T) \not \equiv (R \cap S) \cup (R \cap T)$$
```

### Duplicate Elimination

$\delta(R)$ is the relation with one copy of each tuple that appears one or more times in $R$:

![[Pasted image 20260909092724.png]]

### Sorting

$\tau_{L}(R)$ makes a **list** of tuples of $R$, ordered according to the attributes on list $L$

```ad-note
The result type is *outside* the normal type (set or bag) for relational algebra. It returns a **list** instead.
```

This means that $\tau$ CANNOT be followed by any other relational operators

![[Pasted image 20260909092839.png]]

$$
\tau_{B}(R) =[(5,2), (1,3), (3,4)]
$$
## Complex RA Expression Example

![[Pasted image 20260909093128.png]]

1. Finds the person where the social security number of $x$ is equal to the buyer’s social security number $y$
2. Find what the person bought based on the pid
3. Find the seller based on if the social secuirty numbers matching up
4. Find the sellers who are named fred
5. Find the Product $u$ that is sold by fred

```sql
WITH gizmo AS ( 
	SELECT pid 
	FROM Product 
	WHERE name = 'gizmo' ), 
seller AS ( 
	SELECT * 
	FROM Purchase y JOIN 
		(SELECT ssn FROM Person WHERE name = 'fred') z 
			ON (y.seller-ssn=z.ssn) ), gizmoproductbyfred AS ( 
			SELECT * FROM seller s JOIN gizmo g ON (s.pid = g.pid) ) 
			
SELECT u.name, count(*) FROM Person x JOIN gizmoproductbyfred u ON (x.ssn = u.buyer-ssn) GROUP BY u.name
```

```ad-note
With some IDEs, you can use the `explain` or `explain analyze` function to layout exactly what it does step-by-step and try to simplify the query and increase its efficiency
```


## Modifying a Database

The following three operators can be used to modify a database:
1. Deletion
2. Insertion
3. Updating

```ad-important
All these operators can be expresse dusing the **assignment** operator
```

```ad-example
Delete instructors with a salary over $1,000,000

$$R \leftarrow R - (\sigma_{salary>1000000}(R)$$

```

### Restrictions of Modification

Consider the following modification where $R=(A,B)$ and $S=(C)$":

$$
R \leftarrow \sigma_{C>5}(S)
$$
- This changes the schema of $R$
- Should *not be allowed*

```ad-summary
title: Requirements for Modification
1. The name $R$ on the left-hand side of the assignemtn operator refers to an existing relation in the database schema
2. The expression on the right-hand side of thea ssignemtn operator should be *union-compatible* with $R$
```

## Recursive Query

```ad-question
Find all direct and indirect relatives of Fred
```

![[Pasted image 20260909095449.png]]


```sql
SELECT l.name1, r.name2
FROM relatives l,
relatives r
WHERE l.name2 = r.name1;

WITH RECURSIVE(...)
```

```ad-warning
- Cannot compute "transitive closure"
- Cannot be expressed with RA
```
# 3. Action Items & Follow-Up
- [x] Review Lecture 7 for Database 📅 2026-09-11 ✅ 2026-09-11
- [x] Find out meeting time for group 📅 2026-09-11 ✅ 2026-09-16