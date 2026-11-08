---
creation_date: 2026-10-26 10:22
last_modified: 2026-10-26 10:22
folder: 4 - Distributed Algorithms
tags:
  - type/lecture
  - field/distributed-operating-systems
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

HDFS uses a partial columnar data schema on top of Hadoop
- Allows for billions of rows and million of columns
- Provides small amount of info taken from large data sets

```ad-warning
Stroing empty or presnelty not required data can cause bloat in the dataset since it is like a "set-and-forget" solution. This is called **sparse data**
```

## HBase

Stores data as key-value pairs, where the key is the identifier

```ad-example
At a vending machine, the key to a food item may be "KitKat"
```

### Mapping Example

Lets say that there is the folloiwing data base for the vending machine example such that:

$$
(5 \times 5 \text{ Report Size}) \times 64 \text{ Bytes } \times 5000 \text{ Machines }
$$
$$
 \times 24 \text{ hours/day } \times 365 \text{ days/year} \approx 13 \text{ Gigabytes}
$$

```ad-important
These are stored in row-key family pairs in HBase such that:

$$\left \{ \text{Column: Qualifier, Version: Value} \right \}$$
```


**Map tasks** map the input streams of key values at files for each of the machines 

**Reducer** unfies the different files into a much more legible format to introduce into HBase

## `Get()` vs `Post()`

Retrieving data vs submitting data
- Get is also more limited in size by URL lenght limits

`put()`is another common one that replaces existing resources or creates them if non-existing
# 3. Action Items & Follow-Up
- [x]  ✅ 2026-08-24