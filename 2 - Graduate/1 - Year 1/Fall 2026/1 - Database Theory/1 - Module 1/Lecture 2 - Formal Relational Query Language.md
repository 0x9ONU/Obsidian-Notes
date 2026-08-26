---
creation_date: 2026-08-26 08:42
last_modified: 2026-08-26 08:42
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
- Relational math/algebra
- Query Languages
- Tuple Relational Calc
- Domain Relational Calc
```

## Pre-Class Notes

- Need to go over SQL still see the previous task.
- Looks like to be a lot of cryptography, which is cool

[[02-relational-model.pdf]]
[[03-formal-relational-query-language-RA.pdf]]
# 2. Lecture & Discussion Notes

## Relational Query Languages

```ad-question
What is a query language?
```

**Query Language**: A language in which a user requests information from a database

### Types of Query Languages

1. **Imperative**: The user instructs the system to perform a specific sequence of operators to compute the results
	- Ex. Java, C++
2. **Functional**: The computation is expressed as the evaluation of functions
	- Relational algebra (RA) forms the theoretical basis of SQL
3. **Declarative**: The suer describes he desired information without a specific seuqence of steps or function calls
	- SQL is based upon this

### Main Parts of a Query Language

1. Relational algebra
2. Tuple relaitonal calculus
3. Domain relational calculus

```ad-summary
title: Expressive Power
- A query language is able to create new values based on the previous data due to aggregation. 
- The expressiveness is based on what the querty can compute
```

## Relational Algebra (RA)

```ad-summary
title: Definition
Set of operators that that one or more relations as inputs and produce new relations as output
```

- It is **composable**, so multiple operators can be combined
	- The output of evluating an expression in RA can be used as *input* to another relational algebra expression
	- Inputs and outputs can be used interchangably
- A *table* is an example of a structure relational algebra can work on

### Basic Operators

| Unary            | Binary                      |
| ---------------- | --------------------------- |
| Select: $\sigma$ | Union: $\cup$               |
| Project: $\prod$ | Set difference: $-$         |
| Rename: $\rho$   | Cartesian product: $\times$ |

```ad-example
![[Pasted image 20260826092006.png]]
```

#### Select Operator $\sigma$

Filtering out a subset of tuples in relation $r$
- Notation: $\sigma_{p}(r)$
- $p$ is called the *selection predicate*

**Definition**


$$
\sigma_{p}(r)= 
\left\{ t | t \in r \land p(t)\right\}
$$

- Where $p$ is a formula in propositional calculus consisting of *terms* connected by: and ($\land$), or ($\wedge$), not ()
- Each term is one of: \<attribute\> *op* \<attribute\> or \<constant\>
	- Where *op* is one of: $=, \not =, >, \ge, <, \le$

##### Example of Select

```ad-question
Give relation $r$, what is the RA expression?
```

![[Pasted image 20260826092631.png]]
![[Pasted image 20260826092728.png]]


$$
\sigma_{A=B \land D> 6}(r)
$$

```ad-note
More examples can be found in the slides
```


#### Project Operation ($\prod$)

**Notation**:


$$
\Pi_{A_{1}, A_{2}, \dots, A_{k}}(r)
$$
The result is defined as the relation of $k$ columns obtained by erasing the columns that are not listed
- **Duplicate roews removed** from the result, since relations are *sets*
- Some tuples may be the same (two of the same names) but may have a different title
- Be careful because you may loose data
- Returns a set of tuples over the select operators over the subscript of the given operator as long as the tuple exceeds the table

Given $A$ is a sube of the attributes of relation $r$ then:

$$
\pi_{A}(r)= \left \{ t . A | t \in r \right \}
$$
##### Example 1

```ad-question
Eliminate the `dept_name` attribute of `instructor` 
```

![[Pasted image 20260826093323.png]]



$$
\Pi_{ID, name, salary}(instructor)
$$

```ad-important
Select class in SQL is project
```

##### Example 2

```ad-question
Find the name of all instructors in the Physics department
```

![[Pasted image 20260826093552.png]]


$$
\Pi_{name}(\sigma_{dept\_name="{physics}"}(instructor))
$$
```ad-note
**RelaX**: the Relational Algebra Calculator
```embed
title: "Single Page Apps for GitHub Pages"
image: ""
description: ""
url: "https://dbis-uibk.github.io/relax/landing"
favicon: ""
```

#### Union ($\cup$)

**Notation**:


$$
r \cup s
$$

**Defined as:**

$$
r \cup s = \left \{ t | t \in r \vee t \in s \right \}
$$

- Returns a set of tuples that exist in both relation $r$ and relation $s$
- $r$ **IN** $s$

```ad-warning
For $r \cup s$ to be valid:
1. $r, s$ muast have the *same* **ariy** (# of attributes)
2. The attribute domains must be **union compatible**
   - 2nd column of $r$ deals iwht the same type of values as does the 2nd column of $s$
```






### Why is RA Important?

1. Strong formal foundation that is fairly simple
2. Widely used for query optimization
3. 
# 3. Action Items & Follow-Up
- [ ] Form Groups 🔼 📅 2026-08-31 
- [ ] Review lecture 2 for databases