---
creation_date: 2026-10-07 09:01
last_modified: 2026-10-07 09:01
folder: 3 - Advanced SQL
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

- Need to get started on project and everything else :(
# 2. Lecture & Discussion Notes

## Windowing

```ad-summary
title: Definition
Window queries compute an aggregate function over ranges of tuples
- Useful, e.g., to compute an aggregate of a fixed range of time
- The **time range** is called a **window**
```

Windows may overlap in which case a tuple may contribute to more than one window.
- Used to smooth out random variations

```ad-example
**Moving Average**: Given slaes valeus for each date, calcualte for each date the average of the sales on that day, the previous day, and the next day.
```

```sql
/*Given relation sales(date, value)*/

select date, avg(value) over
	(order by date rows between 1 preceding and 1 following)
from sales
```

*Other Window Specifications*:
1. rows between unbounded preceding and current
2. rows unbounded preceding 
	- (consists of *all previous*)
3. rows between 10 preceding and current row 
	- (all rows with avlues between current row value -10 to current value)
4. Range interval 10 day preceding
	- Not including current row

### Another Example

`tot_credits(year, num_credits)`
- The total number of credits taken by students in each year
- Contain at most one tuple for each year

1. Compute the moving average credits for the window of 3 previous years
2. Compute the moving average credits for all prior years
3. Compute the moving average credits for the window of 3 previous years and the next 2 years

```sql

/* #1 */
select year, avg(num_credits) over
	(order by year rows rows between 3 preceeding and current row)
	as avg_total_credits
from tot_credits
/* #2 */
select year, avg(num_credits) over 
	(order by year rows unbounded preceding)
	as avg_total_credits
from tot_credits

/* #3 */
select year, avg(num_credits) over
	(order by year rows between 3 preceding and 2 following)
	as avg_total_credits
from tot_credits
```

### Windowing Within Partitions

```ad-example
Given a relation `transaction(account-number, date_time, value)`, where value is positive for a deposit and negative for a withdrawal
```

Find the total balance of each account after each transaction on the account.

```sql
select account_number, date_time,
	sum(value) over
		(partition by account_number
		order by date_time
		rows unbounded preceding
		)
	as balance
from transaction
order by account-Number, date_time
```

## Ranking

```ad-question
Suppose we are given a relation: `student_grades(ID, GPA)` giving the grade-point average of each student.
```

Using current SQL we have seen so far, this question is:
1. Difficult to epxress
2. Inefficient to evaluate
3. Programmers may write the query partly in SQL and the other in another programming language

```ad-check
title: Solution
Instead, we can use ranking! This will rank a set and can be done in conjunction with an `order by` specification. 
```

Find the rank of each student
- An extra `order by` clause is needed to get them in *sorted order*

```sql
select  ID, rank() over (order by GPA desc) as s_rank
from student_grades
```

```ad-warning
Ranking may leave gaps: If 2 students ahve the same top GPA, both have rank 1, and the next rank is 3
- This can be avoided by using `dense_rank()` instead, which does not leave gaps. This would make the 3rd student be ranked 2nd instead if the first two students tied.
```

*How Can we Get Only A Students?*

```sql
select *
from (
select  ID, rank() over (order by GPA desc) as s_rank
from student_grade
) i
where ranking = 1;
```
### Alternative to Ranking

It can be done using basic SQL aggregation, but the resultant query is *very inefficient*:

```sql
select ID, (1 + (select count(*)
	from student_grades B
	where B.GPA > A.GPA)) as s_rank
from student_grades A
order by s_rank;
```

```ad-note
Rank clause can sort the relation and compute the rank in much less time.
- The other methodology requres a sequential scan, which is very inefficient
- Linear vs. quadratic time complexity
```

### Ranking with Partitioning

*Example*: Find the rank of students within **each department**
- Schema: (ID, GPA, dept_name)

```sql
select ID< dept_name,
	rank() over (partition by dept_name order by GPA desc)
		as dept_rank
from dept_grades
order by dept_name, dept_rank;
```

```ad-note
Multiple `rank` clauses can occur within a single `select` caluse.
- Ex. Overall rank and the rank within the department
```

Ranking is done *after* applying `group by` clause/aggregation
- Aggregate values can be used for ranking!

### Limits using Partitioning

Can be used to find the top-$n$ results

```ad-important
More general than the `limit n` clause supported by many databases, since it allows top-$n$ within *each* partition
```

```sql
select ID, GPA
	from student_grades
	order by GPA desc
	limit 5;

select *
from (select I< rank() over (order by GPA desc) as r_rank from student_grades)
where s_rank <= 5;
```

### Other Ranking Functions

1. `percent_rank` (within partition, if partitioning is done)
	- The rank as a fraction defined $(r-1)/(n-1)$
	- $n$ tuples and the rank of the tuple is $r$
2. `cume_dist` (cumulative distribution)
	- Fraction of tuples with preceding values
3. `row_number` (non-deterministic in presence of duplicates)
	- Sorts and gives each row a unique number
	- Different rows with the same ordering value → different row numbers

### Taking Care of Nulls

```ad-warning
Typically treated as the highest values, which could be problematic!
```

SQL:1999 permits the suer to specify `nulls first` or `nulls last`


```sql
select ID,
	rank() over(order by GPA desc nulls last) as s_rank
from student_grades
```


# 3. Action Items & Follow-Up
- [x] Review Lecture 19 for Databases 📅 2026-10-09 ✅ 2026-10-09