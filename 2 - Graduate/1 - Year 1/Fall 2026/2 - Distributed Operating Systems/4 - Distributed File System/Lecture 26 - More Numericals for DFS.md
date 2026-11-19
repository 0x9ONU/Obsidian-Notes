---
creation_date: 2026-10-28 10:12
last_modified: 2026-10-28 10:12
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

- Pag 145 Example 2.4
- Pg. 134 Example 2.3
	- 600,000 entries over 24 hours
	- $5000\text{ Machines } \times 5\text{items} \times 24\text{ Files/Day}$
# 2. Lecture & Discussion Notes

## Numerical Example

```ad-question
Consider a data storage for university studsnets. Each student data, `StuData` which is in a file of size less than $64 \text{ MB}$. A datablock stores the full file data for a studen of `StuData_idN`, where $1 \le N \le 2000$ 
```

1. How the files of each student will be distributed at a Hadoop Cluster? How many student data can be stored at one cluster? Assume that each rack has two `DataNOdes` for processing each $256\text{ GB}$ memory. Assume the cluster consists of $480$ racks
2. What is the total memory capacity of the cluster in PB and `DataNodes` in each rack?
3. Show the distributed blocks for students with `ID = 384` and `ID = 4100`. Assume default replication in the `DataNodes` = 12.
4. What shall be the changes when a `StuData` file size $\le 512\text{ MB}$?


### Part 1: How many files? How many can fit on one cluster?

**12 files** will be stored *per* student due to replication

*How many on a cluster?*

$$
256 \text{ GB/DN} \times 2 \text{ DN/Rack} \times 480 \text{Racks/Cluster} = 240 \text{ TB}
$$
$$
64 \text{ MB/file} \times 12 \text{ Replication} = 768 \text{ MB/student}
$$
$$
\frac{240 \text{ TB}}{768 \text{ MB}}= 327680 \text{ Students}
$$

### Part 2: In PB

$$
\frac{240 \text{ TB}}{1024 \text{PB/TB}} = 0.234 \text{ PB}
$$

### Part 3: Distributed Blocks for Specific Student IDs

*For ID=384*:

Since it is within range, it is *accepted*:
- Each file and its copy will be spread across 12 different nodes across the cluster, with its locations stored.

*For ID=4100*:

Outside of range, so it is **rejected**

### Part 4: What Shall be the Change when `StuData` is $\le 512MB$

We must consider that more storage is needed per student:
$$
512 \text{MB / student} \times 12 \text{ Replication} = 6144 \text{ MB } = 6 \text{ GB}
$$
$$
\frac{240 \text{ TB}}{6 \text{ GB}}= 40960 \text{ Students}
$$
If more students are needed, we need to *increase* the number of racks to support this many students on a single cluster.

## Example 2: UCACVM

```ad-question
Consider the choclate vending machine example from class. Assume 96 files are created every hour for each day. The files are at File_1 -> File_96. Each file stores as key-value pairs as hourly sales log at the large number of machines.
```

1. How will the large number of machines, say 20,000 ACVMs hourly data for each flavor sales log store using HDFS? 
2. What will be the strategy to restrict the data size in HDFS? 
3. How will the sample data be collected in a file for 0-1,…, up to 95-96 specific hour-rate sales for this many machines?
4. What will be the reducer outputs?

### Part 1: Storage?

Assume that we have the same 5 falvors and taht each sales data takes up $64\text{ B}$, then the data bytes $64 \times 5 \times 20000 = 6400000\text{ B}$ will accumulate each hour in a file. Since there are 96 files, we can spread this across 4 files per hour such that:
$$
6400000 \text{ B } / 4 = 1600000 \text{ B/file} \approxeq 1.6 \text{ MB/file}
$$

How much data would that be each day?

$$
1600000 \times 24 \times 365 \times 4 = 56064000000 \text{ B } \approx 52 \text{ TB}
$$



# 3. Action Items & Follow-Up
- [x]  ✅ 2026-08-24