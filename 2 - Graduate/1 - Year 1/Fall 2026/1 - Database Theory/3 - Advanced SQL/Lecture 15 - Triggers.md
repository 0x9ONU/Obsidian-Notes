---
creation_date: 2026-09-28 09:00
last_modified: 2026-09-28 09:00
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
- Triggers
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Triggers

```ad-summary
A statement that is executed automatically by the system as a side effect of a modification to the database.
```

*Two parts of a trigger function*:
1. Specify the **conditions** under which the trigger is to be executed
2. Specify the **actions** to be taken when the trigger executes

```ad-important
Used to implement certain integrity constraints and for starting certain tasks automatically.
```

### Intro Example

```ad-question
Use a trigger to maintain referential integriy
- Initiated after any insertion on relation `section`
- Ensuring the `time_slot_id` value is valid
```

```sql
create trigger timeslot_check1 after insert on section
referencing new row as nrow
for each row
when (nrow.time_slot_id not in ) (
	select time_slod_id
	from time_slot)) /* time_slot_id not present in time_slot */
begin
	rollback
end;
)
```

### Types of Trigger Events

1. Insert
2. Delete
3. Update

Triggers on *updae* can be restricted to specific attributes
- `after update of takes on grade`
- Updates to other attributes would not cause it o be executed

Values of attributes before and after an update can be referenced
- `referencing old row as`: for deletes and updates
- `referencing new row as`: for inserts and updates

#### Example 1

```ad-question
Attempt to insert an insructor into a new department below. What happens?
- Assuming we are keeping referential integrity
- And the department does not exist within the department
```

![[Pasted image 20260928094403.png]]

```sql
create trigger department_check after insert on instructor
referencing new row as nrow
for each row
	when(nrow.dept_name not in) (
		select dept_name from department
	)
	begin
		insert into department values (nrow.department ,null ,null)
	end;
```
#### Example 2:

```ad-question
What does the below trigger do?
```

```sql
create trigger setnull_trigger before update of takes
referencing new row as nrow
for each row
when (nrow.grade = '')
begin atomic
	set nrow.grade = null;
end;
```

This ensures that all black grades that are added to the table are set to `null`.

### Example 3:

```ad-question
Define a trigger to keep the `tot_cred` attribute value of student tuples up-to-date
```

*Condition*: Executed only after the grade value updated:
- From either `null` to `F`
- With other grades that indicate successful completion
- Make the transaction atomic

```sql
create trigger credits_earned after update of takes on grade
	referencing new row as nrow
	referencign old row as orow
	for each row
	when nrow.grade <> 'F' and nrow.grade is not null and (orow.grade = 'F' or orow.grade is null)
		begin atomic
			update student
			set tot_cred = tot_cred + (
				select credits
				from course
				where course.course_id= nrow.course_id
			)
			where student.id = nrow.id;
		end;
```

### Statement Level Triggers

```ad-summary
Instead of executing a separate action for each affected roaw, a single action can be executed for all rows affected by a transaction.
```

- `for each statement` instead of `for each row`
- `referencing old table` or `referencing new table` to refer to temporary tables (called *transition tables*) containing the affected rows.
- Can be more efficient when dealing with SQL statements that update a large number of rows.

### When *NOT* to Use Triggers

#### Correct, but not efficient

- Maintaining summary data
- Replicating databases by recording changes to special relations (aka. *delta relations*) and having a separate process that applies the changes over to a replica

These are technically right use cases, but there are **more efficient** ways of doing it:
1. Databases that can provide materialized views for updated summary data
2. Databases can provide built-in support for replication

**Encapsulation** can also be used instead of triggers:
1. Define methods to update fields
2. Carry out actions as part of the update methods instead of using a trigger.

#### Risks

Triggers can also just objectively be the worst way for executing actions sometimes:
- Loading data from backup copy
- Replication updates at a remote site
- Trigger execution can be disabled before such actions
- Error leading to failure of critical transactions that set off the tirgger
- Cascading execution

# 3. Action Items & Follow-Up
- [x] Review Lecture 15 for Databases 📅 2026-09-30 ✅ 2026-09-30
- [ ] Databases Report 2 📅 2026-10-25 ⏫  