---
creation_date: 2026-10-23 10:16
last_modified: 2026-10-23 10:16
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

There are three primary types of services:
1. **Infrastructure as a Service (IaaS)**: Providing access to resources, such as hard disks, network connections, databases storage, data center and virtual server spaces is IaaS. 
2. **Platform as a Service (PaaS)**: It implies providing the runtime environment to allow developers to build applications and services,  which means cloud PaaS. Software at the clouds support and manage the services, storage, networking, deploying, testing, collaborating, hosting, and maintaining applications
3. **Software as Service (SaaS)**: Providing software applications as service to end-users. Software applications are hosted by service provider and given tot he user.

## Numerical 1: Data Storage for University Students

```ad-question
Consider a data storage for University students. Each student data, `stuData` which is in a file of size less than $64 \space MB$ ($1 \space MB = 2^{20}B$). A data blocks tores the full file data for a student of `stuData_idN` where $N = 1 \to 500$
```

1. How the files of each student will be distributed at a Hadoop cluster? How many student data can be stored at one cluster? Assume that each rack as two `DataNodes` for processing each of $64 \space GB$ memory. Assume that cluster consists of 20 racks, and thus 240 `DataNodes`
2. What is the total memory capacity of the cluster in TB and DataNodes in each rack?
3. Show the distributed blocks for students with `ID`=96 and 1025. Assume default replication with `DataNodes`=3
4. What shall be the changes when a `stuData` file size $\le$ 128MB? 

### Part 1: How many files per cluster?

$$
240 \text{ Data Nodes } * 64 \space GB = 15360GB = 15360 \times 2^{30} B \text{ of Storage}
$$

$$
64MB \to B = 64 \times 2^{20} B \text{ Per File}
$$

$$
\frac{\text{Storage Size}}{\text{File Size}}= \frac{15360 \times 2^{30}}{64 \times 2^{20}}= 240 \times 2^{10} = 245760 \text{ Files }
$$
*Need to worry about data replication*
$$
\boxed{\frac{245760}{3 \text{ Copies Per Student}} = 81920 \text{ Files }}
$$

### Part II: Total Memory Size Of Cluster in TB

$$
\frac{15360 \times 2^{30} B \text{ of Storage}}{2^{40} \text{ Bytes Per TB}} = 15 \space TB
$$

### Part III: Distributed Blocks for Students


### Part IV: Changing File Size

We need to update how much we allocate per file


$$
128MB \to B = 128 \times 2^{20} B \text{ Per File}
$$

$$
\frac{\text{Storage Size}}{\text{File Size}}= \frac{15360 \times 2^{30}}{128 \times 2^{20}}= 120 \times 2^{10} = 122880 \text{ Files }
$$
*Need to worry about data replication*
$$
\boxed{\frac{122880}{3 \text{ Copies Per Student}} = 40960 \text{ Files }}
$$

We loose half the number of students we can hold in the data cluster.

## Numerical 2: Automatic Vending Machines

```ad-question
ACVMs selling KitKat, Milk, Fruit and Nuts, Nougat and Oreo choclates. Assume 24 files are created every horus for each data. The files are at `file_1`, `file_2`, ..., `file_24`. Each files stores as key-value pairs as hourly sales log at the large number of machines
```

1. How will the large number of machines, say 5000 ACVMs hourly data for each flavor sale slog store using HDFS? What will the strategy to restrict the data size in the HDFS?
2. How will the sample of data collected in a file for 0-1, 1-2, …, 2-13, 13-4, 15-616, up to 23-24 specific hour-sales log for sales at a large number of machines, say 5000?
3. What will the output streams of map tasks for feeding the input streams to the Reducer?
4. What will be the Reducer outputs?
### Part 1: Strategy




## Querying More Simply

**HBase** can be used to return data that is more readable for the average user.

## MapReduce

```ad-summary
A program that takes in heterogeneous data, maps them together, and then reduces it down to the minimum data size possible.
```

1. **`Map` Function**: Maps and computes the data and converts the data into other data sets (distributed in HDFS).
	- Broken down into tuples in the resulantant data set
2. **`Reduce` Function**: Collects the results from the map and generates the final output result.
	- Combines the data tuples into a smaller set of tuples

```ad-note
This can be applied to any type of data, structured or unstructured.
```

### Improvements of MapReduce

Version 2 uses a **YARN-based resource scheduling**
- This allows jobs to be split across almost any number of servers. 
- For example, the ACVM Compnay can find the number of chocolates sold every hour at the number of ACVMs installed over multiple cities and multiple serves
- The server maps keys for each specific value
- The MapReduce can split the application task among multiple subtasks
- These are aggregated into the final results
# 3. Action Items & Follow-Up
- [x]  ✅ 2026-08-24