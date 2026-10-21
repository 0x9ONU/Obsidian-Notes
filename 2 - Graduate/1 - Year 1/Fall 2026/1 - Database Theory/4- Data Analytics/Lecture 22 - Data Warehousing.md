---
creation_date: 2026-10-19 08:26
last_modified: 2026-10-19 08:26
folder: 4- Data Analytics
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

In data analytics, different data may appear:
1. In different locations
2. On different operational systems
3. Under different schema

Data sources often store only *current data*, not **historical data**

```ad-note
Corporate decision making requires a unified view of all organizaitonal data, including historical data
```

```ad-summary
title: Definition
A **data warehouse** is a repository (archive) of information gathered from multiple sources, stored under a unified schema, at a single site.
```

- Greatly simplifies querying, permits study of historical trends
- Shifts decision support query load *away from transactional processing*

![[Pasted image 20261019083123.png]]

### Design Issues Regarding Data Warehousing

1. When and how to gather data
2. What schema to use
3. Data transformation and cleansing
4. How to propagate updates
5. What data to summarize

## Multidimensional Data and Warehouse Schemas

Typically, DWs have schemas that are designed for data analysis, using tools such as *OLAP tools*

Data in warehouses often falls into *two categories*:
1. **Fact Tables**: Large tables that store historical data
	- Ex. Historical sales data of every transaction ever
2. **Dimension Tables**: Relatively small tables that store extra information regarding the current data and fact table

**Attribute Types** can be further taken from these data types:
1. *Measure attributes:* Measure some value and can be **aggregated upon**
	- The attributes such as number or price of the sales relation
2. *Dimension attributes*: Dimensions on which measure attributes are **grouped** and **viewed**
	- Ex. attributes item_id, color, etc. on a sales relation
	- Small ids that are foriegn keys to dimension tables
	- Adds granularity to measure attributes

![[Pasted image 20261019083825.png]]

```ad-important
This results in what is called a **star schema**
```

We can go further into more complicated structures, such as the *snowflake schema*, which has multiple levels of dimension tables.

### Star Schema

- Dimension tables have redundancy.
- Values for higher levels are repeated
- Fact table is in 3NF
- Primary keys for dimension tables are typically generated with *integers*

### Snowflake Schema

Dimension tables may contain **additional attribute(s)**
- Foreign key(s) to the immediate parent(s)

Fact tables form the same as star schema
- Helps avoid redundancy
- Used for very fine-granular dimensions with many levels

```ad-warning
Results in *much more joins* than the star schema
- We need to find a compromise between the star and snowflake schemas
```

### Summary

Warehouse schemas are typically have:
1. Fact table **joined** with dimension tables
2. **Group-by** on dimension table attributes
3. **Aggregation** on measure attributes of fact table

```ad-warning
Some applications do find it worth while to bring data to a common schema
- Ex. **data lakes** are repositiories which allow data to be stored in multiple formats, without schema integration
- Less upfront effort, but more effort when querying
```

## Database Support for Datawarehouses

```ad-summary
Often utilize **column-oriented storage**
- ex. A sqeunce of *sales* tuples is stored where:
	1. Values of `item_id` attribute are stored as an array
	2. Values of `store_id` attribute are stored as an array
```

**Benefits?**
1. Queries can fetch only attributes that *a user cares about*, reducing I/O and memory costs
2. Arrays are compressed, reducing storage, I/O and memory costs significantly

```ad-note
Data warehouses often use parallel storage and query processing infrastructure
- Distributed FS, Map-Reduce, Hive, etc.
```

# 3. Action Items & Follow-Up
- [ ] Review lecture 22 for Databases 📅 2026-10-21 