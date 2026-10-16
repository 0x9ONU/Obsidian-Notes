---
creation_date: 2026-10-09 08:56
last_modified: 2026-10-09 08:56
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

## Introduction

### Reasoning

```ad-important
A database programmer must have access to a general-purpose programming language for at least two reasons:
```

1. **Not all queries can be expressed in SQL**:
	- SQL does not provide full expressive power
	- A general-purpose language can
2. **Non-declarative actions**
	- Actions that are more on the front-end cannot be done by SQL alone
	- Ex. Printing a report, interacting with a user, or sending the results of a query to a graphical user interface
	- Anything implemented at the application layer that either needs to access data from the database or update the database without having to be directly connected to the database.

### Dynamic vs. Embedded SQL

| Dynamic                                                                                                                                                                | Embedded                                                                                                     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| Can connect to and communicate iwht a database server using a collection of functions or methods                                                                       | Provides a means by which a program can interact with a database server.                                     |
| Allows the program to construct an SQL query as a character string at runtime, submit the query, and then retrieve the result into program variables a tuple at a time | The SQL statements are translated at compile time into function calls                                        |
| JDBC & ODBC (C++, Python, PHP, Go, etc.)                                                                                                                               | At runtime, these functions call connect the database using an **API** that provides dynamic SQL facilities. |

### Major Challenges

```ad-warning
The main challenge si the mismatch in the ways that it can manipualte data
- SQL operates on relations
- Programming language operates on a variable.
```

We need to ensure that a mechanism to return the result of a query is provided.

## JDBC

```ad-summary
A Java API for communicating with database systems supporting SQL.
```

- Supports a variety of features for querying and udpating data, and for retrieving query results
- Also supports *metadata retrieval*

**Model for Communication**:
1. Open a connection
2. Create a “statement” object
3. Execute queries using the statement object to send queries and fetch results
4. Exception mechanism to handle errors

### JDBC Code Example

```java
public static void JDBCexample(String dbid, String userid, String passwd) {
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection ("jdbc:oracle:thin@db.yale.edu:2000:unidb", userid, passwd); //connect to the server
		/* Do work here */
		stmt.close(); //close Statement
		conn.close(); //close Connection
	}
	catch (SQLExeption sqle) {
		System.out.println("SQLException: " + sqle); //handles errors
	}
}
```

### Connecting to the Database

Using the `getConnection()` method
- Specify the URL
	- Protocol
	- Port
	- Database server
	- Database
- User identifier
- Password
### Shipping SQL Statements to Database System

Once the connecino is open, the program can use an instance of the class `Statement` to send SQL statements to the database system.
- `Statement stmt = conn.createStatement();`
- `executeQuery():`
- `executeUpdate():`

### JDBC Code Updating and Executing

```java
// Update the database:
try {
	stmit.executeUpdate("insert into instructor values ('77987', 'Kim', 'Physics', 98000)");
}
catch (SQLException sqle) {
	System.out.println("Could not insert tuple. " + sqle);
}

//Execute Query and Fetch Resuolts
ResultSet rs = stmt.executeQuery("select dept_name, avg(salary) from instructor group by dept_name");
while(rs.next()) {
	System.out.println(rs.getString("dept_name")+ " " + rs.getFloat(2));
}
```

### Prepared Statement

```ad-summary
We can create a prepared statement in which some values are replaced by "?"
```

Each time the query is executed, the database system can **reuse** the previously compiled form of the query and apply the new values.

```java
PreparedStatement pStmt = conn.prepareStatement("insert into instructor values(?, ?, ?, ?)");
pStmt.setString(1, "88877");
pStmt.setString(2, "Perry");
pStmt.setString(4, 125000);
pStmt.executeUpdate();
pStmt.setString(1, "88878");
pStmt.executeUpdate();
```

```ad-warning
**ALWAYS** use prepared statements when taking an input from the user and adding it to a query. Concatenating strings will be dangerous
```

```sql
insert into instructor values('"" + ID + "," + name + "," + "," + dept_anme + "`,'`" + balnce + ')
```

Any String with a delimiter or `'` will cause issues and will generate an invalid SQL statement.

#### SQL Injection without Prepared Statements

Suppose query is construct using: `select * from instructor where name = '"+ name "'"`
- Suppose the user, instead of entering a name, enters: `X' or 'Y'='Y`

The statement will become: `select * from instructor where name = '" + "X' or 'Y' = 'Y" + "'"`
- This will become: `select * from instructor where name = 'X' or 'Y' = 'Y'`
- This will always be true, which allows a user to access **the whole database**:
- `X' update insturctor set salary = salary + 10000; ---`

```ad-important
Prepared statement internally escapes the special characters, which will lead to this being an *empty result* instead.
```

### Metadata Features

Java does not include declarations for data stored in the database as this is part of the SQL DDL statements

```ad-summary
The java program that uses JDBC must determine the information directly from the database system at runtime.
```

Can be done by using `getMetaData()`:

```java
ResultsSetMEtaData rsmd = rs.getMetaData();
for( int i = 1; i <= rsmd.getColumnCount(); i++) {
	System.out.println(rsmd.getCOlumnName(i));
	System.out.println(rsmd.getColumnTypeName(i));
}
```

Also, `DatabaseMetaData` inteface can also be used:

```java
DatabaseMetaData dbmd = conn.getMetaData(); 
ResultSet rs = dbmd.getColumns(null, "univdb", "department", "%"); 
while(rs.next()) { 
System.out.println(rs.getString("COLUMN_NAME"),rs.getString("TYPE_NAME"); 
}
```

- Returns: One row for each column: row has a number of attributes relating to what the column is.

```java
DatabaseMetaData dbmd = conn.getMetaData(); 
ResultSet rs = dbmd.getTables (“”, "", “%", new String[] {“TABLES”}); 
while(rs.next()) { System.out.println(rs.getString(“TABLE_NAME“)); }
```

Adds another parameter compared to `getColumns`:
- If null → all tables including system internal tables
- Set to restrict the tables returned t only user-created tables

### Finding Primary Keys

```java
DatabaseMetaData dmd = connection.getMetaData(); 
// Arguments below are: Catalog, Schema, and Table 
// The value “” for Catalog/Schema indicates current catalog/schema // The value null indicates all catalogs/schemas 
ResultSet rs = dmd.getPrimaryKeys(“”, “”, tableName); while(rs.next()){ 
// KEY_SEQ indicates the position of the attribute in 
// the primary key, which is required if a primary key has multiple // attributes 
System.out.println(rs.getString(“KEY_SEQ”), rs.getString("COLUMN_NAME");
```

## ODBC

Refer to notes, but it is very similar to the Java version

## Embedded SQL

```ad-summary
SQL standard defines embeddings of SQL in a vairety of programming languages:
- C
- C++
- JAva
- Fortran
- PL/I
```

A language to which SQL queries are embedded is the host language, and the SQL stturcutres permitted in the host language comprise *embedded* SQL

`EXEC SQL`: Statement is used in the host language to identify embedded SQL result to the preprocessor
- `EXEC SQL <embedded SQL statement>`

### Connecting to Database

Before executing anything, the program must connect to the database:

```sql
EXEC SQL connect to server user user-name using password
```

**Variables** used as above must be *declared* within `DECLARE section`, as illustrated below. The syntax for delcaring variables; however, follows the usual host language syntax:

```sql
EXEC SQL BEGIN DECLARE SECTION;
	int credt-amount;
EXEC SQL END DECLARE SECTION;
```

### Writting Embedded SQL

```c
declare c cusrsor for <SQL query>
```

```ad-example
From within a host language, find the ID and name of students who have completed more than the number of credits stored in variable credit_amount in the host language
```

```sql
EXEC SQL
	declare c cursor for
	select ID, name
	from student
	where tot_cred > :credit_amount;
```

Look at notes for more
# 3. Action Items & Follow-Up
- [x] Review lecture 20 for Databases 📅 2026-10-12 ✅ 2026-10-14
- [ ] DB HW2 ⏫ 📅 2026-10-20 