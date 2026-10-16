---
creation_date: 2026-10-05 08:57
last_modified: 2026-10-05 08:57
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
# 2. Lecture & Discussion Notes

## Recursive Queries

```ad-note
SQL:1999 permits the recursive view defintion
```

```sql
with recursive R as (
		init_query)
	union
		recursive_step)
select *
from R;
```

- `init_query` returns the initial content of $R$
- `recursive_step` is the query that mentions $R$ exactly once in the `from` clause.

**Fixed Point Computation**:
- $R_{0} =$ result of `init_query`
- In step $i$: $R_{i}$ is computed as
	- $R_{i-1}\text{ union recursive\_step}(R_{i-1})$
	- The computation stops when `recursive_step(R_i-1)` is empty set, $R_{i-1}=R_{i}$ 


```ad-example
Find which courses are a prerequisite, whether directly or indirectly, for a specific course

![[Pasted image 20261005085823.png]]
```

```sql
with recursive rec_prereq(course_id, prereq_id) as (
	select course_id, prereq_id
	from prereq
	union
	select rec_prereq.course_id, prereq.prereq_id,
	from rec_prereq, prereq
	where rec_prereq.prereq_id = prereq.course_id
)
select *
from rec_prereq;
```

![[Pasted image 20261005090248.png]]

### Semantics

```ad-warning
Recursive views are required to be **monotonic**. If we add tuples to the recursive view, it will contain all the tuples it contained before plus possibly more.
```

May not use *any* of the following constructs:
1. **Aggregation** on the view
2. **not exists** on a subquery that uses the recursive view
3. **Set difference** (*except*) whose right-hand side uses of the recursive view

```ad-example
The aggregate sum is also monotonic, as long as the values are positive. If more positive numbers are added, the value continuely increases However, the average is *not*, since it may fluctuate based on the tuples added to the database. As more tuples are added, the value might increase or decrease (adding a tuple that contains `10` to an average of 100 will significantly decrease it depending on the table size)
```
### Power of Recursion

Make it possible to write queries, such as *transitive closure queries*, that would not be possible without it.

```ad-important
Without recursion, a non-recursive non-iterative program can perform only a fixed number of joins on itself.
```

```ad-question
The alternative would be tow rite a procedure that iterate as many times as required. How would we do that?
```

```sql
create function findAllPrereqs(cid varchar(8))
returns table(course_id varchar(8))

begin
	create temporary table c_prereq(course_id varchar(8));
	create temporary table new_c_prereq(course_id varchar(8));
	create temporary table temp(course_id varchar(8));
	insert into new_c_prereq
		select prereq_id
		from prereq
		where course_id = cid;
	repeat
		insert into c_prereq
			select coruse_id
			from new_c_prereq;
		insert into temp
			(select prereq.prereq_id
				from new_c_prereq, prereq
				where new_c_prereq.course_id = prereq.course_id
			)
			except (
				select course_id
				from c_prereq
			);
		delete from new_c_prereq;
		insert into new_c_prereq
			select *
			from temp;
		delete from temp;
	until not exists(select * from new_c_prereq)
	end repeat;
	return table c_prereq;
end
```

### Recursion Example

```ad-question
Given the relation `manager(employee_name, manager_name)`, find all employee-manager pairs, where the employee reports to the amanger direclty or indireclty (that is manager's manager, manager's manager's manager, etc.)
```

```sql
with recursive empl(employee_name, manager_name) as (
		select employee_name, manager_name
		from manager
	union
		select manager.employee_name, empl.manager_name
		from manager, empl
		where manager.manager_name = empl.employee_name)
	select *
	from empl
)
```

# 3. Action Items & Follow-Up