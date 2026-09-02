---
creation_date: 2026-08-28 08:50
last_modified: 2026-08-28 08:50
folder: 1 - Module 1
tags:
  - type/lecture
  - field/database-theory
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
- Set difference
- Cartesian product
- Rename
```

![[03-formal-relational-query-language-RA.pdf]]
## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Relational Algebra Continued:

### Set Difference Operator ($-$)

**Notation:** $r-s$
- What is in $r$ that is **not** in $s$

*Defined as:*


$$
r - s = \left \{ t | \in r \wedge t \not \in s \right \}
$$

Set differences must be taken between **compatible** relations
- $r$ and $s$ must have the *same arity*
- Attribute domains of $r$ and $s$ must be compatible

#### Example

```ad-question
Find all courses taughti n the Fall 2009 semester, but *not* in the Spring 2010 semester
```


$$
\Pi_{course\_ id}(\sigma_{semester = \text{"}Fall\text{"} \wedge year = 2009}(section)) - \Pi_{course\_id}(\sigma_{semester = \text{"}Spring\text{"}\wedge year = 2010}(section))
$$

![[Pasted image 20260828091439.png]]

### Cartesian Product ($\times$)

```ad-note
Also known as the **cross product**
```

**Notation:** $r \times s$

*Defined as*:


$$
r \times s = \left \{ t, t^\prime| t \in r \wedge t^\prime \in s  \right\}
$$

```ad-warning
We must assume that the attributes of both $r(R)$ and $s(S)$ as **disjoint**
- $R \cap S = \emptyset$
```

If the attributes of $r(R)$ and $s(S)$ are not disjoint, we must use the *rename* operator

#### Example 1

![[Pasted image 20260828092145.png]]

```ad-note
We have to rename the the ID's seperately to ensure that they can be cross producted together
```

#### Example 2

```ad-question
![[Pasted image 20260828092446.png]]
```

$$
\sigma_{A=C}(r \times s)
$$

### Rename Operator ($\rho$)

```ad-summary
Allows to name, and therefore to refer to, the resutls of RA expressions
```

**Notation**: $\rho_{x}(r)$
- Returns the expression $E$ under the name $X$

If an RA expression $E$ has arity $n$, then

$$
\mathbb{\rho}_{x(A_{1}, A_{2},\dots,A_{n})}(r)
$$
returns the expression $E$ undenr the name $X$, and with the attributes renamed to $A_{1}, A_{2}, \dots, A_{n}$


$$
\rho_{x}(r)= \left \{ t(X) | t \in r\right \}
$$

$$
\rho_{X(A)}(r)=\left \{ t(X).A | t \in r \right \}
$$

#### Example 1

![[Pasted image 20260828092833.png]]

#### Example 2

```ad-warning
Not strictly required
```

Sometimes used for *alias (→)* to rename an attribute

$$
\Pi_{A,D2}(\sigma_{A=C}(r \times(\Pi_{C,D \to D_{2}}(s))))
$$

Possible to use a positional notaiotn for attribures
- $\Pi_{\$4}(\sigma_{\$4 < \$8})(instructor \times instructor)$
- $\$4 \space(\$8)$: attribute salary of the first (second) instructor

![[Pasted image 20260828094449.png]]
#### Composition of Operators Example

![[Pasted image 20260828092901.png]]

1. Rename the first table
2. Cross product the tables
3. Select where $A$ is equal to the new table’s $C$
4. Prod out only $A$ and the new table’s $D$

$$
\Pi_{A, d.D}(\sigma_{A=d.C}(r \times \rho_{d}(s)))
$$

### Examle Queries

#### Query #1

```ad-question
Fidn all instructors in the *Physics* department, along with the *course_id* of all the coruses they have taught
```

![[Pasted image 20260828094612.png]]

1. Cross-product the whole table
2. Select where only instructor ID is equal to their teaching ID
3. Select out only instructors that work in the physics department
4. Prod out so that we only get the instructor_id and course_id returned

$$
\Pi_{instructor.ID, course\_id}(\sigma_{dept\_name=\text{'}Physics\text{'}}(\sigma_{instructor.ID=teaches.ID}(instructor \times teaches)))
$$

```ad-note
There are multiple ways to obtain this answer using multiple different queries
![[Pasted image 20260828095210.png]]
```

```ad-important
Query 3, however, is the most efficient because we are selecting out the instructors in the physics department before we do the cross product. This leads to less extra rows after the cross product
```

#### Query #2

```ad-question
Find the **largest salary** in the university
```

![[Pasted image 20260828095814.png]]

Continued in: [[Lecture 4 - Formal Relational Query Language Part 3]]
# 3. Action Items & Follow-Up
- [x] Review Notes 📅 2026-08-31 ✅ 2026-08-31
- [x]  ✅ 2026-08-31