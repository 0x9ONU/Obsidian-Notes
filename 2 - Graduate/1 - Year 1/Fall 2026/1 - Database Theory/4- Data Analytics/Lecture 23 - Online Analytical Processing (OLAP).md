---
creation_date: 2026-10-19 08:56
last_modified: 2026-10-19 08:56
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

```ad-summary
**Online Analytical Processing (OLAP)**: Interactive analysis of data, allowing data to be summarized and viewed in different ways in an online fashion (wiht negligible delay).
```

We will be using the *example sales relation* to illustrate OLAP:

![[Pasted image 20261019090947.png]]

## Cross Tabulation of *Sales* by *Item_Name* and *Color*

![[Pasted image 20261019091049.png]]

**Cross-tabulation (cross-tab)**
- Referred to as a *pivot-table*
- Values for one of the dimension attributes form the row headers
- Values for another dimension attribute form the column headers
- Other dimension attributes are listed on top.
- Values in individual cells are (*aggregates of*) the values of the dimension attributes that specify the cell

```ad-warning
Limited to showing only two-dimensional data!
```
## Data Cube

```ad-summary
A multidimensional generalizatin of a cross-tab

```

- Can have $n$ dimensions, 3 shown in the example
- Cross-tabs can be used as **views** on a data cube.

![[Pasted image 20261019091429.png]]

Each **cell** corresponds to a combination of elements from each dimension
- **Facts** are *non-empty* cell
- Cells store **measures**

## OLAP Operations

### Pivoting

Changing the dimensions used in a cross-tab

```ad-example
Moving `colors` to column names
```

![[Pasted image 20261019091823.png]]

### Slicing

Creating a cross-tab for *fixed values only*
- Sometimes called **dicing**, particularly when values for multiple dimensions are fixed.

```ad-example
Fixing `color` to "white" and `size` to "small"
```

![[Pasted image 20261019091938.png]]

- Dicing can only really happen if the whole column has multiple fixed dimensions. Happens less often because of that

### Rollup

Moving from **finer**-granularity data to **coarser** granularity

```ad-example
- Aggreagting away an attributes
- Moving from aggregates by day to aggregates by month or year
```

### Drill Down

In the opposite direction, moving from coarser to finer data.
- Ex. For geographical data, there are different levels of hierarchy
- We would want to go from country to region to state to city, etc. depending on the use case

## Hierachies on Dimensions

```ad-summary
**Hierarchy** on dimension attributes lets dimensions be viewed at different levels of detail
```

```ad-example
The dimension `datetime` can be sued to aggregate by hour of day, date, day of week, month, quarter, or year.
```

![[Pasted image 20261019092628.png]]

### Cross-Tab with Hierarchy

Cross-tabs can easily be extneded to deal with hierarchies by using **drill down** or **roll-up**.
- ex. Hierarchy: `item_name` → `category`

![[Pasted image 20261019092712.png]]

## Pivots in SQL

```sql
select * from sales
pivot (
	sum(quantity)
	for color in ('dark', 'pastel', 'white')
)
order by item_name;
```

This specifies how values are combined
- Not computing the subtotals

![[Pasted image 20261019093029.png]]

In *postgres*, we use the `Tablefunc` module:
- `create extension tablefunc;`

```sql
select *
from crosstab (
 --SQL statement --
)
as ct(row_names, category_1,..., category_n);
```

**Example**:

```sql
select *
from crosstab (
	'select item_name, clothes_size, color, sum(quantity)
	from sales
	group by item_name, clothes_size, color
	order by 1,2,3'
)
as ct(item_name text,
clothes_size text,
dark int,
pastel int,
white int
);
```

## Relational Representation of Cross-Tabs

```ad-warning
title: Problem
Cross-tabs are different from the tables normally stored in a database.
```

*Therefore*, we use the value `all` to represent aggregates
- The SQL standard actually uses `null` values in place of `all`
	- Works with any data type
	- But can cause confusion with regular null values.

![[Pasted image 20261019093703.png]]

## OLAP in SQL

The **Cube** operation computes union of **group by**’s on every subset of the specified attribute
- Consider the query:
  
```sql
select item_name, color, clothes_size, sum(quantity)
from sales
group by cube(item_name, color, clothes_size)
```

This computes the union of eight different groupings on the *sales* relation:

![[Pasted image 20261019094136.png]]

Where `()` denotes an empty *group by* list.

```ad-warning
For each grouping, the result contains the null value for attributes not present in the grouping.
```

### Change from `all` to `null`

Relational representation of cross-tab that we saw earlier, but with `null` in place of `all`, can be computed by:

```sql
select item_name, color, clothes_size, sum(quantity)
from sales
group by cube(item_name, color, clothes_size)
where clothes_size is null;
```

![[Pasted image 20261019094233.png]]

### Change from `null` to `all`

The function `grouping()` can be applied to an attriubte
- Returns 1 if the value is a null value representing `all`, and returns `0` in all other cases.

```sql
select 
	case when grouping(item_name) = 1 then 'all'
		else item_name end as item_name
	case when grouping(color) = 1 then 'all'
		else color end as color,
	'all' as clothes_size, sum(quantity) as quantity
from sales
group by cube(item_name, color, clothes_size);
```

![[Pasted image 20261019094434.png]]

#### Decode Function

You can use the function `decode()` in the **select** clause o replace such `null`s by a value such as `all`

Ex. Replace `item_name` in first query by:
```sql
decode(grouping(item_name), 1, 'all', item_name);
```

### Extended Aggregation

#### Rollup

`rollup`: generates union on every prefix of specified list of attributes

**Example**:
```sql
select item_name, color, size, sum(number)
from sales
group by rollup(item_name, color, size)
```

This will generate union of four groupings:
`{(item_name, color, size), (item_name, color), (item_name), ()}`

```ad-warning
Remember that rollup **order matters**. The `color` and `size` attributes will be rolled up, unlike the front value (`item_name`)
```
#### With Hierarchy

Can also be used on *multiple levels* of **hierarchy**:

```ad-example
Suppose table `itemcategory(item_name, category)` gives a cetagroy of each item. Then would give a heirarhcial summary by `item_name` and by `category`.
```

```sql
select category, item_name, sum(number)
from sales, itemcategory
where sales.item_name = itemcategory.item_name
group by rollup(category, item_name)
```
#### Multiple Rollups

Multiple rollups and cubes can be used in a *single* group by clause
- Each generates set of group by lists, cross product of sets gives overall set of group by lists.

```sql
select item_name, color, size, sum(number)
from sales
group by rollup(item_name), rollup(color, size)
```

![[Pasted image 20261019095342.png]]

```ad-warning
Neither `rollup` nor `cube` clause gives complete control on the groupings
```

*Example*: Find the following aggregate: `{(color, clothes_size), (clothes_size, item_name)}`

```sql
select item_name, color, clothes_size, sum(quantity)
from sales
group by grouping sets ((color, clothes_size), (clothes_size, item_name));
```


# 3. Action Items & Follow-Up
- [x] Review Lecture 23 for Databases 📅 2026-10-21 ✅ 2026-10-21