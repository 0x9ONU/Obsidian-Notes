---
creation_date: 2026-09-04 08:57
last_modified: 2026-09-04 08:57
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
Extended Operations:
1. Generalized Projection
2. Aggregate Fucntions
3. Duplciate ELimination
4. Sorting
```

## Pre-Class Notes

- Final day before break, we got our project today hopefully
- Lock in or whatever
# 2. Lecture & Discussion Notes

## Project

```ad-summary
title: Objectives
- To study recent database techniques
- To propose and evaluate your solution
- To share knowledge with the class
```

**Project Scope**
- Very open, aka. you can choose any topic within the realm of databases
- Class projects can vary in scope and topic. It is good to consider a project *related* to what we cover in class, but not limited to those.
- Example topics are provided later in this description

### Option One: Research Project

- Identify and model an interesting and unsolved real-world problem
- Propose and implement an algorithmic solution
- Perform experimental studies to demonstrate the soundness and efficiency of your solution

### Option Two: Fix and Win

- Pick a state of the art algorithm form a full research paper published within 10 years
- Show where it does not actually work (incorrectness, inefficiency, etc.)
- Propose and implement your solution
- Experimentally demonstrate your solution

### Due Dates

#### First Report (Due **September 22nd**)

```ad-summary
A rough idea and topic must be selected by this point
```

**Must Include**:

- Up to *2 pages* of information
- Project type
- The problem your project addresses
- Project goal and motivation
- Rough idea of the proposed method
- Testing plan
- Schedule/Milestone for the project
- Each member’s contribution

```ad-warning
title: FORMAT
- Arial 10pt
- 1 inch margin
```

#### Second Report (Due **October 13th**)

- Up to *2 pages* of information
- Clear and specific problem the project addresses
- The goal your team wants to achieve at the end of the porject
- Current status of the proposed solution
- Detailed evaluation plan (experimental goals, data used, etc.)
- Partial results based on the current status of the project
- Plan until the end
- Each team member’s contribution

#### Project Slides (Due **November 17th**)

- Submission to Canvas under the assignment

#### Final Report (Due **December 7th**)

- Up to *2 pages* of information
- Detailed description of the proposed solution
- Detailed explanations for the evaluation results
- Summary of how the goal has been achieved
- Link to the project outcomes
- Each team member’s contribution
#### Presentation (10 min) + Q&A (2~3 mins)

- Scheduling poll will be released by **Nov 2nd**
- Selection due by **Nov 7th**
- On **Nov 18th, 20th**, and **Dec 2nd**

```ad-warning
All these dates are TBD, and might get pushed back a little bit
```

### Grading Breakdown

| Part                  | Percentage |
| --------------------- | ---------- |
| Report 1              | 5%         |
| Report 2              | 5%         |
| Final Report          | 5%         |
| Presentation and Code | 20%        |
| Bonus                 | up to 16%  |

*Bonus Includes*:
1. Using real-world datasets (3%)
2. Comparison with the closest work (3%)
3. Provide the implementation as a fully fucntional framework (10%)

```ad-danger
title: Late Policy
- *-10%* per day
- No exception (except health issue)
```

```ad-note
Potential topics at the end of the slides
```

## Extended Operations

```ad-note
These are pretty practical and useful
```

### Generalized Project

```ad-summary
Extends the projection operation by *allowing arithmetic fucntions* to be used in the projection list
```


$$
\pi_{f_{1,\dots} F_{n}}(E)
$$

Where:
1. $E$ is any RA expression
2. Each of $F_{1}, F_{2},\dots, F_{n}$ are arithmetic expressions and function calls involing constants and attributes in the schema of $E$

```sql
SELECT *, salary/12 AS monthly
FROM ...
```

```ad-important
This adds *flexiblility* as it allows you to make new types of data from only one function. Therefore, *increasing* the query's **expressive power** 
```

### Aggregation Operation

Takes a set of values and returns a single value as a result:
- `avg`: Average
- `min`: Minimum
- `max`: Maximum
- `sum`: Sum of values
- `Count`: Number of values

*In Relational Algebra*:


$$
_{G_{1},G_{2},\dots,G_{M}}\mathbb{G}_{F_{1}(A_{1}),F_{2}(A_{2}),\dots,F_{n}(A_{n})}(E)
$$

$E$ is any RA expression:
- $G_{1}, G_{2}, \dots, G_{m}$ is a list of attributes on which to group (can be *empty*)
- Each $F_{i}$ is an aggregate function
- Each $A_{i}$ is an attribute name

```ad-note
SOme books/articles use $\gamma$ instead
```

```sql
SELECT avg(age),  sum(age)/count(*), 
FROM person
```

#### Example

```ad-question
Find the RA expression of the following relation $r$
```

![[Pasted image 20260904094737.png]]

$$
\mathbb{G}_{\text{sum}(c)}(r)
$$

#### Example 2

```ad-question
Find the *average salary* of each department
```

![[Pasted image 20260904094906.png]]


$$
_{dept\_name}\mathbb{G}_{\text{avg}(salary)}(instructor)
$$

#### Aggregate Renaming (Permit Renaming)

```ad-warning
Names for attributes in aggregation results are not automatic
```

We must use the *permit renaming* function as part of the operation

$$
_{dept\_name}\mathbb{G}_{\text{avg}(salary) \text{ as} \space avg\_sal}(instructor)
$$
OR

$$
_{dept\_name}\mathbb{G}_{\text{avg}(salary) \mathbb{\rightarrow} \space avg\_sal}(instructor)
$$

```sql
SELECT *
FROM (
	SELECT Occupation, avg
)
```

#comebacklater 

#### Example 3

```ad-question
Find instructors (name) whose salary is larger than the average salary
```

![[Pasted image 20260904095402.png]]

**Steps**

1. Find the average salary
2. Cross product the tables
3. Use it as a selection criteria where their salary is larger than the average salary
4. Prod out the name

$$
avgSalary \leftarrow _{dept\_name} \mathbb{G}_{avg(salary) \to avgsal}(instructor)
$$
$$
\Pi_{name}(\sigma_{salary>avgsal}(instructor \times avgSalary))
$$

# 3. Action Items & Follow-Up
- [x] Review Lecture 6 for databases 📅 2026-09-09 ✅ 2026-09-09
- [x] Update due dates for database project 📅 2026-09-09 ✅ 2026-09-10
- [x] Database HW1 ⏫ 📅 2026-09-15 ✅ 2026-09-10