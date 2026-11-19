---
creation_date: 2026-10-21 10:18
last_modified: 2026-10-21 10:18
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

## From Last Class…

```ad-question
We must have a maximum file size for each file. How do we hold a very large file that exceeds this maximum file size?
```

The file is broken up into multiple chunks such that:
$$
\text{File Size} / \text{Chunk Size} = \text{Number of Chunks}
$$
To divide it among discs, we will further divide it out such that:

$$
\frac{\text{Number of Chunks}}{\text{Number of Disks}} = \text{Chunks Per Disks}
$$
1→8 can be stored on one disc, 9→17 will be held on another, all the way down to the last disc having $n-8 \to n$

In our case, we will have 240 “discs” with 64MB chunk size, which can be used to divide out the data 
- We will create a linked-list structure with a table of pointers so that the file can be quickly found across each data node and rack.

The file should also be **replicated** *at least 3* times across a distributed system
- Transparency
- Fault Protection
- Should be across three different quadrants to further prevent a single rack going down leading to data loss.

### Hadoop Implementation

**Master Nodes aka. Name Nodes**:
- Use less storage
- Acts as a cluster head for data nodes
- Action listener looks for events to put into the network 
- Acts as the job scheduler
- Need to deal with different DRAM and processing power configurations

**Slave Node**:
- Keeps track of its own *tasks*
- Holds an amount of *data*
- Has its own **data map** and the ability to **reduce** the data down depending on the task needed
- Can have differing high DRAM and processing power 

To access files, we use B-trees to create what is called a **data-dictionary**, which allows us to quickly look up files whose chunks are scattered across multiple disks.

```ad-important
This is almost entirely implemented using HBase
```

- Built on Java
- Able to be **scaled** as the data size gets larger and larger
- 
# 3. Action Items & Follow-Up
- [x] Review Lecture 23 for D-OS 📅 2026-10-23 ✅ 2026-10-26