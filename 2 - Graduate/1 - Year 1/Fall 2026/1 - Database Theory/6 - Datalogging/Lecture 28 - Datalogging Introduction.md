---
creation_date: 2026-11-06 09:05
last_modified: 2026-11-06 09:05
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

### Additional Requirement

- Each team needs to submit a summary of at least one team each day that is being presented for the projects’

### Final Exam

- December 4th
- Closed Note/Book
- Cheat sheet allowed
- Pen/paper only
- In-class quizzes, activites, hws are all fair game
- Might have questions where you can choose on over the other

# 2. Lecture & Discussion Notes

## History

- Started in 1979 by Aho and Ullman, where they realized that SQL *cannot* express recursive queries
- IN 1982, Chandra and Harel embarked on the study of expressive power of Datalog
- Use waned during the late 90s
- However, it has make a great comeback due to the need of much more complex queries today

## Introduction

```ad-summary
A query language that is based on *logical rules* and *facts*
- Similar to other logic programming languages
- Purely declarativesemantics
- NO function symbols are available
```

**Use-Cases**:
- Data integration
- Declarative networking
- Programming analysis
- Security

*Systems supporting Datalog*
- Lixto
- LogicBlox
- Semmle
- Boom/Dedalus
- RaDlog
- Coral
- LDL++

### Syntax

![[Pasted image 20261109092100.png]]

```ad-important
The head is true **if** all the goals are true
```

**Terminology**:
- Head and goals are the **atoms**.
- An atom consists of a *predicate* (lower/upper case) applied to zero or more *arguments* (upper case letters or constants)

```ad-example
$$R(x) :\text{-} \space \text{flight}(A,\dots,E)$$
$$R(x) :\text{-} \space \text{flight}(TC, UC, FL, FC)$$
```

```ad-warning
Either simple $A$ like variables can be used or more complex variables. HOWEVER, variables cannot be used more than once for the whole query.
```

*Semantics*
- Predicates represent relations
- An atom is true for given values of its variables if the arguments form a tuple of the relation
- Whenever an assignment of values to all variables makes all goals true, the rule asserts that the resulting head is also true.

### Example - Bars and Beers

We have three tables:
- Likes(drinker, beer)
- Frequents(drinker, bar)
- Serves(bar, beer)

#### Question 1

```ad-question
Find drinkers who frequent some bar that serves some beer they like.
```

- We will use the variable X to represent drinkers

![[Pasted image 20261109093821.png]]


$$
Q(X) :\text{-} \space F(X, Y), S(Y, Z), L(X, Z)
$$

#### Question 2

```ad-question
Find drinkers who:
1. Frequent some bar that serves some beer they like, OR
2. Like beer "BestBeer", OR
3. Frequents bars that JOE frequents
```

To specify OR, e need to write **multiple rules** with the **same head**

$$
Q(X) :\text{-} \space F(X,Y), S(Y,Z), Likes(X,Z)
$$
$$
Q(X) : \text{-} \space L(X, \text{"}BestBeer\text{"})
$$
```ad-note
title: Alternative
$$
Q(X) : \text{-} \space L(X, Z), Z = \text{"}BestBeer\text{"}
$$
```


$$
\text{JoeFrequents}(W) : \text{-} \space F(\text{"Joe"}, W)
$$
$$
Q(X) : \text{-} \space F(X, W),\text{JoeFrequents}(W)
$$

```ad-note
Variables *can* be re-used across each query, but not recommended. This *cannot* be done if the variable is used in the same head across multiple queries
```

# 3. Action Items & Follow-Up
- [x] Review Lecture 28 for Databases 📅 2026-11-13 ✅ 2026-11-13