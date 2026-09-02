---
creation_date: 2026-09-02 08:52
last_modified: 2026-09-02 08:52
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
- Operators
	- Semijoin
	- Assignment
	- Division
```

## Pre-Class Notes

- Continuing from last lecture, I believe we will be wrapping up the basic theory very soon and going into the next topic
- Around 30ish slides left
- Remember to look into reviewing SQL since it has been awhile since u have worked on that gulp
- Project will be released **Friday**
	- 50 minute presentations + 3 minutes of questions
	- oh boy

# 2. Lecture & Discussion Notes

## Final Operators

### Semijoin

```ad-summary
title: Definition
Returning rows from the first tabel where one or more matches are found in the second table
```

**Formal Expression**:


$$
R \ltimes_{C} S = \Pi_{A_{1}, \dots, A_{n}}(R \bowtie_{C}S)
$$
- The attributes $A_{1},\dots,A_{n}$ are from $R$

```ad-note
The difference is that the schema is different when compared to the regular join(s). The regular join has no prodjection on top it it, while the semijoin does.
```

#### Example

```ad-question
Return isntructors who have taught courses since 2018
```

![[Pasted image 20260902092315.png]]


$$
instructor \ltimes_{instructor.ID=teaches.ID}(\sigma_{year > 2017}(teaches))
$$
#### Importance in Distributed Database Systems

They can compute query with the *minimum* amount of data transfer
- Smaller table overall, which means less data on the incoming and outgoing lines

```ad-example
- Compute and send common attribute values to another location (`temp1`)
- Evalutae jion using `temp1` and send the result to the original node (`orig`)
- Compute the result over `orig`
```

```ad-note
Semijoin can also be used to obtain the regular join results more efficiently
```
### Assignment ($\leftarrow$)

```ad-summary
title: Definition
Provides a conveninet way to express complex queries by allowing you to write a query of sequential programs
```

Can contain:
1. A *series* of assignments
2. Followed by an expression whose value is displayed as *result of the query*

```ad-warning
Assignment must **always** be made to a *temporary relation* variable
```

```ad-note
Useful for re-writing a query in an easier-to-understand logical way 
```

```ad-example
$$
E_{1} \leftarrow \sigma_{salary>4000}(instructor)
$$

$$
E_{2} \leftarrow \sigma_{salary<100000}(instructor)
$$
```

#### SQL Example

```sql
With view 1 AS (
	SELECT name
	FROM instructor
	WHERE dept_name = "Comp. Sci"
),
view 2 AS (
	SELECT name
	FROM instructor
	WHERE dept_name = "Physics"	
)

SELECT name
FROM view UNION view2;

view 1 <- PROJECT_{name} (select dept_name = "Comp. Sci" (instructor))
view 2 <- ....
q <- view 1 UNION view2 
```

#### Example

```ad-question
Find all courses tuaght in the Fall 2009 semester, or in the Spring 2010 semester, or in both
```

![[Pasted image 20260902094454.png]]


$$
courses\_fall\_2009 \leftarrow \Pi_{course\_id}(\sigma_{semester=\text{"}fall\text{"} \wedge year =2009}(section))
$$
$$
courses\_spring\_2010 \leftarrow \Pi_{course\_id}(\sigma_{semester=\text{"}spring\text{"} \wedge year =2010}(section))
$$
$$
output \leftarrow course\_fall\_2009 \cup  courses\_spring\_2010
$$

### Division

Given relations $r(R)$ and $s(S)$
- Such that $S \subseteq R$
	- Every attribute in $S$ is a subset of $R$
- $r \div s$ produces all tuples from $r$ that all their extensions on $R \cap S$ with tuples from $s$ exist in $R$

Both conditions hold:
1. $t \in \Pi_{R-S}(r)$
2. For every tuple $t_{s}$ in $s$, there is a tuple $t_{r}$ in $r$ satisfying both:
	- $t_{r}[S]=t_{s}[S]$
	- $t_{r}[R-S]=t$


#### Example

Let $r(ID, course\_id) = \Pi_{ID, course\_id (takes)}$ and $s(course\_id)=\Pi_{course\_id}(\sigma_{dept\_name = \text{"}Biology\text{"}}(course))$
→ $r \div s =$ the students who have taken **all** courses in the Biology department 

![[Pasted image 20260902094956.png]]

Can also write $r \div s$ as:

$$
E_{1} \leftarrow \Pi_{R-S}(r)
$$

$$
E_{2} \leftarrow \Pi_{R-S}((E_{1}) \times s)- \Pi_{R-S, S} (R \bowtie s)
$$
- *First part*: All combinations of students and Biology courses
- Set differenced with…
- *Second part*: Students who have taken a course in Biology department

**Intermediates**
![[Pasted image 20260902095657.png]]

$$
r \div s = E_{1}-E_{2}
$$
```ad-important
This logic matters because when you write a SQL query, you *must* take this route since there is **no division operator** in native SQL
```

# 3. Action Items & Follow-Up
- [ ] Review Lecture 5 for Databases 📅 2026-09-04
- [ ] *practice* Figure out View2 [[Lecture 5 - Formal Relational Query Language Part 4#SQL Example]] 📅 2026-09-04