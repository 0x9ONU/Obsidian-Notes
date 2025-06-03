Date: 15th November 2024
Date Modified: 15th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Memory Systems
- Caches

```

# Memory Systems

## Overview

- Introduction
- Memory System Performance Analysis
- Caches
- Virtual Memory
- Memory-Mapped I/O
- Summary

## Introduction

Computer performance depends on:
- **Processor** performance
- **Memory System** performance

![[Pasted image 20241115112541.png]]

### Processor-Memory Gap

```ad-warning
We have been assuming that we can access memory in one clock, but that has not been true since the 1980s
```

![[Pasted image 20241115112625.png]]

### Challenge

Make memory system appear as fast as processor:
- Use hierarchy of memories

Ideal memory relies on:
- Fast
- Cheap
- Large

```ad-warning
You can only choose two of these values
```

### Memory Hierarchy

![[Pasted image 20241115112926.png]]

### Locality

```ad-summary
Exploit locality to make memory accesses fast
```

**Temporal Locality**:
- Locality in time
- If data used recently, likely to use it again soon
- Keep recently accessed data in higher levels of memory hierarchy

**Spatial Locality**:
- Locality in space
- If data used recently, likely to use nearby data soon
- When access data, bring nearby data into higher levels of memory hierarchy too.

## Memory Performance

**Hit**: Data found in that level of memory hierarchy

**Miss**: Data not found (must go to next level)

$$\mbox{Hit Rate} = \mbox{\# of hits}/\mbox{\# Memory Accesses} = 1- \mbox{Miss Rate}$$
$$\mbox{Miss Rate} = \mbox{\# of misses}/\mbox{\# Memory Accesses} = 1- \mbox{Hit Rate}$$

```ad-important
**Average Memory Access Time (AMAT)**: Average time for processor to access data

$$\mbox{AMAT} = t_{cache} + MR_{cache}[t_{MM}+MR_{MM}(t_{VM})]$$
```

### Example

```ad-question
A program has 2,000 loads and stores, with 1,250 of these data values in cache. Rest supplied by other levels of memory hierarchy. Suppose processor has 2 levels of hierarchy: $t_{cache} = 1 \mbox{ cycle}, t_{MM} = 100 \mbox{ cycles}$.
1. What are the cahce hit and miss rates?
2. What is the AMAT of the program?
```

![[Pasted image 20241115113949.png]]

$$\mbox{AMAT} = t_{cache} + MR_{cache}(t_{MM})$$
$$=1+0.375(100)$$
$$\boxed{\mbox{AMAT}= 38.5 cycles}$$

### Amdahl’s Law

```ad-summary
title: Definition
The effort spent increasing the performance of a subsystem is wasted unless the subsystem affects a large percentage of overall performance.
```




