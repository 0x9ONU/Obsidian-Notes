---
creation_date: 2026-09-11 08:58
last_modified: 2026-09-11 08:58
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

```

## Pre-Class Notes

- Get ready to forget everything about SQL during this lecture lol
# 2. Lecture & Discussion Notes

## Introduction

```ad-important
By using the `execute analyze` command, we can see how SQL relates to relational algebra queries
```

## Views

```ad-summary
Any relation that is not of conceputal model but is made visible to a user as a "virtual relation"
```

- Not pre-computed and stored
- It is temporary and does not exist within the table
- Computed by executing the query whenever it is used
- Only materialized by the user

### Examples

Consider a person who needs to know an instructors name and department, but *not* the salary. This person shoud see a relation described, in SQL, by:

```sql
SELECT ID, name, dept_name
FROM instructor
```

A list of all course sections offered by the Physics department in the Fall 2017 semester with the building and room number of each section

```sql
SELECT course.course id, sec id, building, room number
FROM course, section
WHERE course.course id = section.course id
	and course.dept_name = 'Physics'
	and section.semester = 'Fall'
	and section.year = 2017
```

### Views and Other Formats

It is possible to compute and store the results of the queries and make them available to users

```ad-question
What is the different between views and the `with` clause?
```

- Both of them are virtual temporary relations based on a query
- However, the `with` clause is only done within a single line during run-time
- A view can be *pre-defined* instead

### Importance of Views

For a user, it is not desirable for all users to see the entire logical model
1. Security considerations
2. Personalized collection of “virtual” relations
3. A lot faster computationally if a user only needs a select size of the table

```ad-summary
A view provides a mechanism to hide certain data from the view of certain users
```

### Syntax

Can be created using a `create view` statement such that:
$$
\text{create view } v \text{ as } \left < query \space expression \right >
$$

 Once a view is defined, the view name can be used to refer to the virtual relation that the view generates.

```ad-warning
Not the same as creating a new relation by evaluating the query expression
- Rather, a view defitnion causes the saving of an expression
- The expression is substituted into queries using the view
```

### Examples

```sql
CREATE VIEW monthlyRev AS 

SELECT monthly, sum(fprice) AS totalRev
FROM (SELECT fprice, extract(month from fdate) AS monthly)
	FROM flights) i
Group by monthly);

SELECT ...
FROM monthlyRev
```

A view of instructors without their salary
```sql
create view faculty as
	select ID, name, dept_name
	from instructor
```

Find all instructors in the Biology department

```sql
select name
from faculty
where dept_name = "Biology"
```

Create a view of department salary totals

```sql
create view departments_total_salary(dept_name, total_salary) as
	select dept_name, sum(salary)
	from instructor 
	group by dept_name;
```

### Views Depending on Views

```ad-question
Can we create another view that references a previous view?
```ad-check
Yes you can!
```

- A view relation $v_{2}$ is said to *depend direclty* on a view relation $v_{1}$ if $v_{1}$ is used in teh expression deifning $v_{2}$
- A view relation $v_{2}$ is said to *depend on* view relation $v_{1}$ if either $v_{2}$ depneds direclty to $v_{1}$ or there is a path of dependencies form $v_{2}$ to $v_{1}$
- A view relation $v$ is said to be **recursive** if it depends on *itself
	- Not very useful :(

Airplay example
```sql
CREATE VIEW yearlyRev AS (
	SELECT 
	FROM monthlyRev
)
```

Make a view that shows all Physics classes being taught in Waston during the Fall 2027 semester
```sql
create view physics_fall_2017 as 
		select course.course_id, sec_id, building, room_number
		from course, section 
		where course.course_id = section.course_id 
			and course.dept_name = 'Physics' 
			and section.semester = 'Fall' 
			and section.year = '2017';
			
create view physics_fall_2017_watson as 
	select course_id, room_number 
	from physics_fall_2017 
	where building= 'Watson';
```

#### View Expansion

```ad-note
When a view referes a view, the DBMS will expand the view such that it replaces the reference to the definition of the referred view
```

A way to define the meaning of views in terms of other views

Let $v_{1}$ be defined by an expression $e_{1}$ taht may itself ocntain uses of view relations
- View expansion of an expression repeats the following replacement step:

```
repeat
	Find any view relation v_i in e_1
	Replace the view relation v_1 by the expression defining v_i
until
	no more view relations are present in e_1
```

### Materialized Views

Allows for a view to hold data physically rather than virtually
- Physical copy created when the view is defined

```ad-question
In which case is it useful?
- The data in the view is used *frequently*
- A fast response is necessary for certain queries
```

#### Maintenance on Materialized Views

```ad-question
If relations used in the query are updated, the materialized view result becomes out of date
```

Therefore, we need to **maintain** the view by updating the view whenever the underlying relations are updated

**Two Methods**:
1. *Lazy*: Update the view only when it is accessed
2. *Periodic*: Update the view periodically depending on the storage costs and overhead of the system

```ad-note
Some systems permit the DBA to control which method is used to maintain the views
```

```sql
CREATE MATERALIZED VIEW monthly_sales AS (
	SELECT region, sum(amount)
	FROM sales
	GROUP BY region;
)
```

```sql
CREATE MATERIZED VIEW
course_enrollment AS (
	SELECT year, semester,
	course_id, count(ID) AS
	totalEnrollment
	FROM takes
	GORUP BY year, semester,
	course_id
)
```

```ad-question
Is it better to be lazy or periodic?
```

- It is ultimately dependent on the scenario
- For a montly sales number example above, it might be smart to update the view weekly to avoid any old data

```ad-warning
Should be carefullyc onsdiered wiht storage costs and overhead for updates
```
#### Updating a View

```ad-warning
Useful, but serious problems may occur with modification, aka. anything outside of the basic cases
```

```sql
insert into faculty values ('30765', 'Green', 'Music')
```

- Anytime a new tuple is inserted into a view, the insertion must be represented by the insertion into the main relation as well
- We either have to:
	1. Reject the insert
	2. Insert the tuple with `null` values into the underlying relationl
		1. `('30765', 'Green', 'Music', 'null')`

```ad-danger
Some updates cannot be translated uniquely!
- If we try to insert the additional information into the view, 
```


#### Some Updates Cannot be Translated Uniquely

```sql
create view instructor_info as
	select ID, name, building
	from instructor, department
	where instructor.dept_name = department.dept_name;
insert into instructor_info values ('69987', 'White', 'Taylor')
```

![[Pasted image 20260916093407.png]]

**In practice, this is pretty bad:**

1. Which department is Taylor in? *We don’t know*
2. What if no dpeartment is in Taylor?
	- Violation on primary key constraint, and the tuple will **not appear in the view**

#### Some Cases Can’t be Applied at All

```sql
create view history_instructors as (
	select *
	from instructor
	where dept_name = 'History'
)
with check option;
```

If we insert `(25566, Brown, Biology, 100000)`
- It will not be allowed since it is not valid to go into the `History` department
- `with check option;` will reject a tuple if it does not satisfy the condition
- Same thing with *updates*



# 3. Action Items & Follow-Up
- [x] Review lecture 8 for Databases 📅 2026-09-14 ✅ 2026-09-16