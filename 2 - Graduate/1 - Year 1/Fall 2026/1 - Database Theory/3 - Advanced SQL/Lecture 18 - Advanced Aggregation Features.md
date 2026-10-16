---
creation_date: 2026-10-05 09:30
last_modified: 2026-10-05 09:30
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

## Over Clause

New type of aggregation and group
- Each input tuple is paired with the aggregation result for the group it belongs to
- More flexible grouping based on order and windowing
- New aggregation functions such as *ranking*.

```sql
Agg over (partition clause, order by, window specifications)
```

### Examples

#### Example 1: Using `over()` Without Any Parameters

```sql
select year, month, city, profit, sum(profit) over() as ttl from sales
```
- For each tuple, build a set of tuples that belong to the same window
- Compute aggregation function over the window
- Return each input tuple paired with the aggregation result for its window
- `over()`: one window containing **all** tuples

![[Pasted image 20261005093524.png]]

#### Example 2: Providing a Partition Clause to `over()`

```sql
select year, month, city, profit, sum(profit) over(partition by year) as ttl
from sales
```

**Partition by**: tuples with the same partition by attributes belong to the same window (such as `group by`)
- Keeping the original values
- Allowing us to produce aggregated values

![[Pasted image 20261005093744.png]]

### Example 3: Provided an Order By Clause to `over()`

```sql
select year, month, city, profit, sum(profit) over(order by year, month) as ttl
from sales
```

**Order by**: tuples that are less than equal to the order belong to the same window.
- Can be sued to compute *accumulated total*

![[Pasted image 20261005094530.png]]

![[Pasted image 20261005094709.png]]

![[Pasted image 20261005094715.png]]

![[Pasted image 20261005094722.png]]

#### Example 4: Partitioning and Ordering at the Same Time

```sql
select year, month, city, profit, sum(profit) over(partiion by year order by month) as ttl
from sale
```

- It will compute the rolling sum
- HOWEVER, it will split it by the partition for each sum
- In this case, it will add up the year *separately*

![[Pasted image 20261005095036.png]]

#### Example 5: Adding the Window Specifications to `order()`

```sql
select year, month, city, profit, sum(profit) over(partition by year order by month range between 1 preceding and 1 following) as ttl
from sales
```

**Explicit Window Specification**: determine which tuples “surrounding” the tuple according to the sort order to include in the window

![[Pasted image 20261005095817.png]]

#### Example 6: Changing Window Specifications to by Row for `order()`

```sql
select year, month, city, profit, sum(profit) over(partition by year order by month rows between 1 preceding and 1 following) as ttl
from sales
```

![[Pasted image 20261005095855.png]]

# 3. Action Items & Follow-Up
- [x] Review Lecture 18 for Database 📅 2026-10-07 ✅ 2026-10-07