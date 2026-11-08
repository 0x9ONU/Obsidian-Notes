---
creation_date: 2026-10-19 10:11
last_modified: 2026-10-19 10:11
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

### Final Breakdown

- BCTESC, DC, DFS, DSM broken up across the final
- About equally weighted 
- Can either be easier with no AI
- OR more difficult, with open AI
# 2. Lecture & Discussion Notes

## Main Material

![[Hadoop Ecosystem.pdf]]

## Introduction

- This is a data center numerical that will be critical to understanding for the exam
- Also important for modern-day understanding of databases

**PaaS** can often been seen by *workload managers*
- A push/pull/commit environment
- Very similar to Github

*Cooling Manager*: Makes sure a server is cooled properly 
- Used primarily for cache memory and to maximize 

We will be following Big Data Nalytics by Kamal, Saxena 

**Zookeeper and Ambari** deal with managmeent & coordination
- Keeps the database, resource manager, and storage all in check

## Big Data Programming Model

```ad-summary
Distributed pieces of codes as well as the data at the computing nodes
- Distributed data storage systems do not use the concept of joins
- **Hadoop** provides that model
```

The big data typically deals anything greater than **Pettabyte**. However, new data has been exploding into even large datasets.

### General Hadoop Layout

![[Pasted image 20261019105436.png]]

- A hierarchical autocratic system where the cluster will control multiple data nodes via racks and switches
- Similar to how memory is divided (think of computer architecture)
	- File blocks → pages
- Assume that we have a bunch of student files from $0 \to N$
- Each data node contains 1024 files, which allows us to break up and data so we don’t have to search them sequentially
- In this case, 1kb files that 64MB→64GB depending on the database. 
# 3. Action Items & Follow-Up
- [x]  ✅ 2026-08-24