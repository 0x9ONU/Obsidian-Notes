Date: 18th November 2024
Date Modified: 18th November 2024
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Caches

## Overview

Highest level in memory hierarchy
- Fast (typically ~1 cycle access time)
- Ideally supplies most data to processor
- Usually holds most recently accessed data

![[Pasted image 20241118111617.png]]

### Design Questions

```ad-question
1. What data is held in the cache?
2. How is data found?
3. What data is replaced?
```

## What Data is Held in Cache?

```ad-important
Cache anticipates needed data and puts it in cache
```

To do this, it uses the past to predict the future using temporal and spatial locality:
- **Temporal Locality**: Copy newly accessed data into cache
- **Spatial Locality**: Copy neighboring data into cache too

## Cache Terminology

**Capacity ($C$)**: Number of data bytes in cache

**Block Size ($b$):** Bytes of data brought into cache at once

**Number of Blocks ($B= C/b$)**: Number of blocks in cache

**Degree of Associativity ($N$)**: Number of blocks in a set

**Number of Sets ($S= B/N$)**: Each memory address maps to exactly one cache set


## Finding Data

Cache is organize into $S$ sets. Each memory address maps to exaclty one set

Different ways to categorize cache sets:
- **Directly Mapped**: 1 Block per Set
- **$N$-Way Set Associative**: $N$ blocks per set
- **Fully Associative**: All cache blocks in 1 set

# Directly Mapped Caches

![[Computer Architecture - Week 13 Day 1 2024-11-18 11.27.38.excalidraw]]

![[Pasted image 20241118112642.png]]

![[Pasted image 20241118112700.png]]

### Examples

#### Example 1

![[Pasted image 20241118114051.png]]

**Miss Rate**:

$$\mbox{Miss Rate} = \frac{3}{15}=20\%$$

Takes advantage of *temporal locality* but fails when it comes to *compulsory misses*

#### Example 2

![[Pasted image 20241118114349.png]]

**Miss Rate**:

$$\mbox{Miss Rate} = \frac{10}{10} = 100\%$$

There is a **conflict miss** since they are in the *same* set and it will cause a conflict!

## Cost

For the memory, you need 8 sections that are 60 bits long:

$$8 \times 60 = 480 \mbox{ bits}$$

```ad-warning
224 of these bits are *overhead* (28 columns). There is only 256 bits of useful data
```

