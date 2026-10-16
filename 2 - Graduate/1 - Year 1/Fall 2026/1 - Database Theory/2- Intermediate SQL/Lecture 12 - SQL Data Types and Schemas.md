---
creation_date: 2026-09-21 09:12
last_modified: 2026-09-21 09:12
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
# 2. Lecture & Discussion Notes

## Special Data Types

### Built-In Data Types

1. **Date**: Calendar dates, containing a (4 digit) year, month and date
	- *ex*: `date` ‘2005-7-27'
2. **Time**: Time of day, in hours, nminutes and seconds
	- *ex.* `time` “09:00:30.75”
3. **Timestamp**: Date plus time of day
4. **Interval**: Period of time
	- `ex.` interval `1` day
	- $x$ and $y$ are date → $x-y$ is an interval
	- Adding or subtracting an interval from date/time gives back to date/time, respectively

### Large-Object Types

```ad-summary
Large objects (photos, videos, CAD files, etc.) are stored as a *large object* 
```

**Types of Large Objects**:
1. *Blob*: binary large object
	- A large collection of *uninterpreted binary data*
	- Interpretation is left to an application *outside* of the database system
2. *Clob*: Character large object
	- A large collection of character data

```sql
book_review clob(10KB)
image blob(10MB)
movie blob(2GB)
```

### User-Defined Types

`create type` construct in SQL creates user-defined type:

```sql
create type Dollars as numeric (12,2)

create table department (
	dept_name varchar(20),
	building varchar(15),
	budget Dollars
);
```

#### Domains

**Create domain** construct in SQL-92 creates user-defined omain types:

```sql
create domain person_name char(20) not null
```

They are similar to types, *but* domains can have **constraints** specified to them

```sql
create domain degree_level varchar(10)
	constraint degree_level_test
		check(value in ('Bachelors', 'Masters', 'Doctorate'))
```

### Index Creation

Many queries reference only a small proportion of the records in a table. This is inefficient for the system to read every record to find a record with particular value.

```ad-summary
An *index* on an attribute of a relation is a data structure allows the database system to find those tuples in the relation taht have a specified value for that attribute efficiently, *without scanning through all the tuples* of the relation 
```

```sql
create index <name> on <relation-name> (attribute);
```

#### Example

```sql
create table student(
	ID varchar(5),
	name varchar(20) not null,
	dept_name varchar(20),
	tot_cred numeric(3,0) default 0,
	primary key (ID)
);

create index studentID_index on student(ID)

select *
from student
where ID = '12345'
```

```ad-important
This can be executed by using the index to find the required record, without looking at all records of `student`
```

*With BTree*

```sql
create index if not exists idx_flights_fromcity_price
	on public.frights using btree
	...
```

A data structure algorithm that allows you to quickly scan a database using an index. Can also be used on *non-binary* databases.
- Usually specified by the **DBMS**
- Can be changed depending on the use case of the database (ex. **hash index** might be better in some cases)
## Access Control

**Authorization**: We may assign a user several forms of authorizations on parts of the database:
1. **Read**: Allows reading, but no modification of data
2. **Insert**: Allows insertion of new data, but not modification of existing data
3. **Update**: Allows modification, but not deletion of data
4. **Delete**: allows deletion of data

```ad-summary
**Priviledge:** Each type of authorization
- We may authorize the user all, none, or a combinatino of these types of privileges on specified parts of a database, such as  arleation of a view.
```

When a user submits a query or an update, the SQL implementation first checks if they are authorized.

*Other Forms of Authorization on the Database Schema*:
1. `index`: allows creation and deletion of indicies
2. `resources`: allows creation of new relations
3. `alteration`: allows addition or deletion of attributes in a relation
4. `drop` allows deletion of relations

### Syntax for Authorization Specification in SQL

The **grant** statement is used to confer authorization:

```sql
grant <privilege list> on <relation \or view> to <user list>
```
- `<privledge list>`: select, insert, update, and delete
- `<user list>` A set of user-ids
	- *Public*, which allows all valid users the privilege granted
	- A **role** (more on that later #comebacklater )

#### Privileges in SQL

1. **Select**: allows read access to relation, or the ability to query using view
2. **Insert**: the ability to insert tuples
3. **Update**: the ability to update using SQL update statement
4. **Delete**: the ability to delete tuples
5. **All Privileges**: used as a short form for all the allowable privileges

```ad-example
Grant users $U_{1}, U_{2}, U_3$ *select* authorization on the `instructor` relation:
```

```sql
grant selct on instructor to U_1, U_2, U_3;
```

```ad-example
Update a privleges for Amit, Satoshi on the department relation to have budget authorization:
```

```sql
grant select on department to Amit, Satoshi
grant update(budget) on department to Amit, Satoshi
```

```ad-warning
Granting a privilege on a view *does not imply* granting any privileges on the underlying relations.
```

The grantor of the privileges **must already hold** the privilege on the specified item

#### Revoking Authorization in SQL

The **revoke** statement is used:

```sql
revoke <privlege list> on <relation \or view> from <user list>
```

- `all` maybe be used to revoke **all** privileges of the revokee(s)
- If the revokee list includes *public*, all users lose the privilege except those granted it explicitly

```ad-warning
If the same privilege was granted twice to teh same user by different grantees, the user may retain the privilege. It **deends on** the privlege being revoked are *also revoked*
- It is possible that the DBA gives a privlege to another user to also give privleges. 
```

### Roles

```ad-summary
A way to distinguish among various users as far as what these users can access/update in the database
```

```sql
create role <name>
grant <role> to <users>
```

```ad-warning
Do *not* use roles when a specific person is needed to be identified when an update happens.
- ex. an instructor id role is bad since we will not know which instructor carried out an update
```

#### Example

```sql
/*Create role and grant privileges to role*/
create role instructor;
grant instructor to Amit;
grant selcet on takes to instructor;

/*Roles being granted to users, as well as to other roles*/
create role teaching_assistant;
grant teaching_assistant to instructor;

/*Chain of roles*/
create role dean;
grant instructor to dean;
grant dean to Satoshi;
```

### Authorization on Views

```ad-question
Consider a staff member who needs to know the salaries of all faculty in the geology departmnet, but not other departments. How would you grant them access?
```

```sql
create view geo_instructor as (
	select *
	from instructor
	where dept_name = 'Geology'
);

grant select on geo_instructor to geo_staff

select *
from geo_instructor
```

What if `geo_staff` does not have permissions on `instructor`?
- The staff must not have direct access to the instructor table
- However, they are able to see **result of the query through the given view.**
# 3. Action Items & Follow-Up
- [x] Review Lecture 12 for Databases 📅 2026-09-23 ✅ 2026-09-23