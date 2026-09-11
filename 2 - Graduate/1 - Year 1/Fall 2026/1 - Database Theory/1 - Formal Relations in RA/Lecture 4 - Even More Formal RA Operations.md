---
creation_date: 2026-08-31 08:40
last_modified: 2026-08-31 08:40
folder: Materials
tags:
  - type/lecture
  - field/database-theory
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
- Conintuing what we talked about last time
- 4 new operators
```

## Pre-Class Notes

- Remember to make a group!
# 2. Lecture & Discussion Notes

## Opening Example

```ad-question
Find the **largest salary** in the university
```

![[Pasted image 20260828095814.png]]

### Steps #1

1. Rename one of the tables to a different name
2. Cross-product the tables to create two salary columns
3. Select only the salaries that are lesser than the other tables
4. Prod out only the higher salary
5. Set difference to find the maximum from the minimums

### Solution #1 

$$
\Pi_{salary}(instructor)-\Pi_{instructor.salary}(\sigma_{instructor.salary<d.salary}(instructor \times p_{d}(instructor)))
$$


## Second Operator Set
$$
\newcommand{\leftouterjoin}{⟕}
\newcommand{\rightouterjoin}{⟖}
\newcommand{\fullouterjoin}{\large{⟗}}
$$
```ad-important
We deinf eadditional oeprations that *do not add any expressive power* to the relational algebra, but that **simplify common queries**
```

1. Set Intersection ($\cap$)
2. Join ($\bowtie, \bowtie_{\theta}$)
3. Assignment ($\leftarrow$)
4. Outer Join ($\leftouterjoin, \rightouterjoin, \fullouterjoin$)

### Set-Intersection ($\cap$)

**Notation**: $r \cap s$
- That is adding the intersection to the languages does not make it more expressive

*Defined as*:


$$
r \cap s = \left \{ t | t \in r \wedge t \in s\right \}
$$

```ad-warning
We must assume:
1. $r, s$ have the same arity
2. Attributes of $r$ and $s$ are compatible
```

$$
r \cap s \equiv r - (r-s)
$$

### Natural Join ($\bowtie$)

**Notation**: $r \bowtie s$

```ad-summary
**Simpifies** certain queries that require a **cross-product**
```

Let $r$ and $s$ be realtions on shcemas $R$ and $S$ respectively. Then, $r \bowtie s$ is a relation on schema $R \cup S$ obtains as follows:
- Consider each pair of tuples $t_{r}$ from $r$ and $t_{s}$ from $s$
- If $t_{r}$ and $t_{s}$ have the same vlaue on each of the attributes in $R \cap S$ add a tuple $t$ to the result, where:
	- $t$ has the same value as $t_{r}$ on $r$
	- $t$ has the same value as $t_{s}$ on $s$

```ad-note
Implicitly joins two groups by finding it's own condition
```

```ad-example
Given:
$$R = (A, B, C, D)$$
$$S = (E, B, D)$$
*Results*:
$$(A, B, C, D, E)$$
$$
r \bowtie s = \Pi_{r.A, r.B, r.C, r.D, s.E}(\sigma_{r.B = s.B \wedge r.D = s.D}(r \times s))
$$
It cross products the tables, then filers out the rows where both B columns and D columns are not the same, and then removes duplicate rows
```

#### Example

```ad-question
Find the naems of *all* instructors in the *Comp Sci.* department together with the course titles of all the courses that the instructors teach
```

![[Pasted image 20260831093834.png]]

##### Steps

1. Join all the tables together
2. Select out the department (Comp_Sci)
3. Prod out the instructor name and their title

$$
\Pi_{name, title}(\sigma_{dept\_name\text{"}Comp. Sci\text{"}}(instructor \bowtie teaches \bowtie course))
$$

```ad-warning
This might not return all the classes. This returns only the CS classes that they teach.
```
#### Differences in Natural Join Order

- $(instructor \bowtie teaches) \bowtie course$ $\equiv$ $instructor \bowtie (teaches \bowtie course)$
- $instructor \bowtie teaches$ $\equiv$ $teaches \bowtie course$

```ad-important
They are the same because:
1. Natural join is *associative*
2. Natural join is *commutative*
```

```ad-warning
HOWEVER, the intermediate result may be different. Even if they end up being the same at the end, $instructor \bowtie teaches$ will be different from $teaches \bowtie course$ aka. make sure you do both joins first before using the data
```

### Theta Join ($\bowtie_{\theta}$)

**Defined as**: $r \bowtie_{\theta}s = \sigma_{\theta}(r \times s)$
- Allowed to select the join conditions

#### Example

```ad-question
Return the instructor's name with her/his department location (*building*)
```


$$
\Pi_{name, building}(instructor \bowtie_{instructor.dept\_name = department.dept\_name}department)
$$

### Outer Join ($\leftouterjoin, \rightouterjoin, \fullouterjoin$)

An extension of the join operation that *avoids loss of information*
- Left or right or full

Computes the join and then adds tuples from one relation that does not match tuples in the other relation to the result of the join

Uses *null* values:
- *null* signifies that the value is unknown or does not exist
- All comparisons involving *null* are (roughly speaking) **false** by definition

#### Example

![[Pasted image 20260831095858.png]]

##### Natural Join

![[Pasted image 20260831095916.png]]

##### Left Outer Join

![[Pasted image 20260831095929.png]]

$$
r \leftouterjoin s = (r \bowtie s) \cup ((r- \Pi_{R}(r \bowtie s)) \times \{ (null,\dots,null) \})
$$

##### Right Outer Join

![[Pasted image 20260831095945.png]]


$$
r \rightouterjoin s - (r \bowtie s) \cup (\{ (null,\dots, nu ll) \} \times (s - \Pi_{s}(r \bowtie s)))
$$
##### Full Outer Join

![[Pasted image 20260831095957.png]]


$$
r \fullouterjoin s = (r \bowtie s) \cup ((r - \Pi_{R}(r \bowtie s)) \times \{(null, \dots , null) \}) \cup (\{ null, \dots, null\} \times (s - \Pi_{s}(r \bowtie s)))
$$
# 3. Action Items & Follow-Up
- [ ] Bring potential other solutions to the opening question in class 📅 (2026-09-02) 
- [x] Review Lecture 4 for Databases 📅 (2026-09-02) ✅ 2026-09-01