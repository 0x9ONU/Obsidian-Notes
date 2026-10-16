---
creation_date: 2026-09-25 09:04
last_modified: 2026-09-25 09:04
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
- Functions and Procedures
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Functions and Procedures

```ad-summary
Allow "business logic" to be stored in the database and executed from SQL statements.
```

```ad-example
- How many courses can a student take in a given semester
- Minimum number of courses a full-time instructor must teach per year
- Maximum number of majors a student can be enrolled in
```

SQL allows to define functions and procedures by the procedural component of it.

```ad-warning
Standard syntax here differs from procedural languages (ex. Oracle to Postgres, etc.)
```

### Functions
#### Declaring SQL Functions

```ad-question
Define a function that, given the name of a department, returns the count of the number of instructors in that department.
```

```sql
create function dept_count (dept_Name varchar(20))
	returns integer
	declare d_count integer;
	begin
		select count * into d_count
		from instructor
		where instructor.dept_name=dept_name
		
		return d_count;
	end
```

```ad-note
The function `dept_count` can be used to find the department names and budget of *all* departments with more than 12 instructors if you do the following:
```

```sql
select dept_name, budget
from department
where dept_count (dept_name) > 12


/* Equivalent */

SELECT dept_name, budget
FROM department
WHERE 

SELECT d.dept_name, d.budget
FROM department d
JOIN instructor i on i.dept-name = d.dept_name
GROUP BY d.dept_name, d.budget
```

#### Table Functions

```ad-summary
The SQL standard supports function that can return tables as results.
```

```sql
create function instructor_of (dept_name varchar(20))
	returns table (
		ID varchar(5),
		name varchar(20),
		dept_name varchar(20),
		salary numeric(8,2)
	)
	return table (
		select ID, name, dept_name, salary
		from instructor
		where instructor.dept_name = instructor_of.dept_name
	)

select *
from table(instructor_of('Music'))
```

#### When are Functions Useful?

Particularly useful when there are specialized data types being stored:
1. Images and geometric objects
2. **Line-segment data**: used in map database and may have an associated function that checks whether two line segments overlap
3. **Image data**: May have associated functions to compare two images for similarity.

### SQL Procedures

```ad-summary
The keywords `in` and `out` are parameters that are epxected to have values assigned to them and parameters whose valeus are set in the procedure in order to return results.
```

*Example*: The `dept_count` function could instead be written as procedure:

```sql
create procedure dept_count_proc(in dept_name varchar(20), out d_count integer)
	begin
		select count * into d_count
		from instructor
		where instructor.dept_name = dept_count_proc.dept_name
	end
```

Procedures can be invoked *either* from an SQL procedure or from *embedded SQL*, using the **call** statement
- Also can be invoked from dynamic SQL

```sql
declare d_count integer;
call dept_name_proc('Physics', d_count);
```

```ad-danger
Unlike a function, it cannot be called like normal. You *need* to use the `call` statement.
```

```ad-warning
SQL allows more than one procedure of the same name so long as the number of arguments of the procedures with the same name is different
- The name, along with the number of arguments, is sued to identify the procedure.
- Allows for overriding!
```

```ad-note
Other than these syntax and naming limitations, functions and procedures are functionally identical in the modern DBMS.
```

### Language Constructs

SQL supports constructs that gives it almost all the power of a general-purpose programming langauge.

```ad-warning
Most database systems implement their own variants of the standard syntax below.
```

**Variables**: `declare`
- Can have any valid SQL data type

**Compound Statement**; `begin... end`,
- May contain multiple SQL statements
- *Local variables* can be declared within the compound statements.
- `begin atomic... end` ensures all statements are executed on a single transaction.

**While and Repeat**:

```sql
while <boolean_expression> do
	/*Sequence of statements*/
end while

repeat
	/* sequence of statements */
until <boolean_expression>
end repeat
```

```ad-example
```sql
declare n integer default 0;
while n < 10 do
	set n = n+1
end while

repeat
	set n = n - 1
until n = 0
end repeat
```

**For Loops**: Permits iteration over all results of a query

```sql
declare n integer default 0;
for r as
	select budget from department
	where dept_name = 'Music'
do
	set n= n - r.budget
end for
```

**Conditional Statements**:

```sql
if <boolean_expression>
	then <statment or compound statment>
elseif <boolean_expression
	then <statement or compound statement>
else <statement or compound statement>
end if
```

#### Example

```ad-question
Register a student after ensuring classroom capacity is not exceeded
```

![[Pasted image 20260925095843.png]]

### Exception Conditions and Handlers

Also allows for procedures to setup handlers for exceptions:

```sql
declare out_of_classroom_seats condtion
declare exit handler for out_of_classroom_seats
begin
...
end
```

The statements between the `begin` and `end` can raise an exception by executing `signal out_of_classroom_seats`.
- The handler says that if the condition arises, the action to be taken is to exit the enclosing the `begin...end` statement.

### Defining Functions and Procedures in the Database

They can be defined either by the procedural component of SQL or by an external programming language such as Java, C, or C++

```ad-question
Why would we want to keep procedures and functions defined within the database?
```

1. Multiple applications to access the procedure
2. A single point change (without changing other parts of the application)

### Pros and Cons 


| Pros                                      | Con                                                                      |
| ----------------------------------------- | ------------------------------------------------------------------------ |
| Efficient: precomplied and cached         | Not easy to debug (harder to track than he code in the application side) |
| Reusable: multiple applications and users | Cost (if poorly written)                                                 |
| Secure                                    | Versioning (no-built-in version control in BDMSs)                        |
### Functions vs. Procedures


| Procedures                                           | Functions                                           |
| ---------------------------------------------------- | --------------------------------------------------- |
| Returning zero or a single value or multiple values  | Returns a single value or a set                     |
| Input and output parameters                          | Only input parameters                               |
| Cannot be used in `select`, `where`, `having` clause | *Can* be used in `select`, `where`, `having` clause |
| Cannot be called from functions                      | *Can* be called from procedures                     |
| Transaction management                               |                                                     |
| Exception handling                                   |                                                     |

### External Language Routines

```ad-summary
SQL allows us to define functions in a programmming langauge such as Java, C#, C, or C++.
```

```sql
create procedure dept_count_proc(in dept_name varchar(20), out count integer)

language C
external name 'user/avi/bin/dept_count_proc'

create function dept_count(dept_name varchar(20))
returns integer
language C
external name '/user/avi/bin/dept_count'
```

#### Pros and Cons of ELRs


| Pros                                 | Cons                                                                                                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| More *efficient* for many operations | Code to implement a function may need to be loaded into database system and executed in the database system’s address space. |
| More **expressive** power            | Risk with corruption, security, etc.                                                                                         |

```ad-note
There are alternatives, which give good security at the cost of potentially worse performance.
```

#### Security on ELRs

**Two Major Options**:
1. **Sandbox Technique**: Use a safe language like C# or Java, which cannot be used to access/damage other parts of the database code. Reduce the code’s access to only its own memory area
2. **Separate Process**: The ELR can use a separate process that has no access to the database process’ memory

```ad-warning
Both of these solutions have significant **overheads**. 
```

```ad-important
A combination of direct execution, sandboxing, and process separation are used in their own way depending on the use case.
```

# 3. Action Items & Follow-Up
- [x] Review lecture 14 for databases 📅 2026-09-28 ✅ 2026-09-28
- [x] Turn in report 1 for databases ⏫ 📅 2026-09-27 ✅ 2026-09-28