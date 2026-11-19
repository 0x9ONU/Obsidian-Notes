---
creation_date: 2026-11-18 08:53
last_modified: 2026-11-18 08:53
folder: Presentations
tags:
  - type/lecture
  - field/database-theory
  - status/todo
author: Ethan Berei
---
# Presentation 1: Detect-and-Repair: Approximate Queries That Don’t Lose Rare Groups

## Background

- AQP answers a query using a sample of the table to *estimate* the full-data result
- Uniform means all samples are likely. Very lightweight
- Stratified sample samples per group, so small groups are kept. Very 
- Exact query is always correct, but expensive

## Problem Statement

```ad-quote
Even in stratified samples, selective filters empty out the strata meant to protect rare groups
```

- 13/24 groups left with too few rows
- 17/21 missed the stratified sample

## Motivation

- Inspect every result after each query
- Support each group for every known group
- Thin and missing groups are flagged
- Sample speed plus repairs, capped by falling back to a full exact query

```ad-important
Keep AQP fast, without letting a rare group go missing or thin
```


## Proposed Solution

A ratio decides between repairing and rerunning

$$
r = \frac{\text{rows belonging to flagged groups}}{\text{total rows}}
$$
- $r \le \tau$ → repair flagged groups

**Build Details**:
- Built on Python3 
- Used with DUckDB
- Tested on TPC-H

*Steps*:
1. Build a uniform and stratified samples
2. Run Detect-and-repair
3. Evaluation harness runs each query on sample and full data while adding filters then logs missing and thin groups

## Results

```ad-tldr
Missed only a few percent per test. When the filters are strict, you keep the stratified approximation until the accuracy suffers. At that point, you swap to full queries to find the rare groups that were missed.
```

## Main Takeaways

1. NO slient gaps
2. Fast when the sample is healthy
3. Targeted repair can pay off
4. Safe *at a small cost* when repair is too expensive

## Future Work

1. Sweep $k$ and $\tau$ to test several support and repair thresholds
2. Improve repair cost estimate (replace the two ratio with an estimate that uses filter selectivity and scan cost)
3. Test on more dataset and query types
# Presentation 2: CAPP: A Cost-Aware Push Down Planner

## Literature Review

- Focused on Dis-aggregation
	- Describes the current state of distirbuted database architecutres
	- Split up components into specialized products for each part of the 

## Methods
### Adding a Planner into PushdownDB

- Too expensive for their needs at the moment

### Building Their Own 

```ad-summary
Uses a similator to show how it may work
```

- Disaggregated
- tore CSVs
- Get/Put/Select
- Evaluate Predicates

Built every step of the way:
1. Predicates
2. Tuples
3. Relational Algebra
4. Datatyping

## The Planner Built

*Steps*:
1. Go through each node int he query tree
2. Convert to the equivalent physical oeprator
3. Using table and column stats to estimate bytes
4. … too fast


## Statistics

1. Row Count
2. Min/Max
3. Distinct Values
4. Null Count

```ad-example
When choosing the `l_quantity` < 25 for the filter, 48% of the roes are kept.
```

```ad-important
19x less data moved with pushdown over pull!
```

## Results

- CAPP beast the other plans in terms of **cost**
- Always pushdwon is the *most expensive*
- Never pushdown is linear, but with a positive slope.

```ad-warning
title: Limitations
- Memory is the bottleneck, where it would overallocate for any significant amount of data for what they had access to
```


# Presentation 3: Cache Consistency Under Concurrent Updates and Failures

## Background

- Cache is used to reduce database queries and to hold onto requested data
- Database changes must also be reflected int eh ahce
- Concurrent updates and partial failures can leave cached data stale
- The data is not up-to-date

## System Overview

- C#/.NEt applciatoin: runs the chaching
- PostgresSQL
- Redis: caches product records
- Docker COmpose
- CSV/JSON exports

### Caching Strats

1. Cache-aside: Delete the cached entry; a later read reloads it
2. TTL: Leave the cached entry until it expires
3. Write-through: replace the cached entry with the updated record
4. Version-aware write-through: replace it only if the incoming version is newer, or no entry exists

## Measurement Method

- Read PostgresSQL version before and after the application reads
- Ensure that their are no stale reads and test how well the new method works

