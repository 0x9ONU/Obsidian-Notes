Date: 20th November 2024
Date Modified: 20th November 2024
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# $N$-Way Associate Cache

##  Two-Way Associative Cache

![[Pasted image 20241120111118.png]]

### Performance

**RISC-V Assembly Code**
```
	  addi s0, zero, 5
	  addi s1, zero, 0
LOOP: beq  s0, zero, DONE
	  lw   s2, 0x4(s1)
	  lw   s4, 0x24(s1)
	  addi s0, s0, -1
	  j    LOOP
DONE:
```

![[Pasted image 20241120111327.png]]

***Miss Rate***:

$$\mbox{Miss Rate} = 2/10 = 20 \%$$
### Cost

For the memory, you need 8 sections that are 61 bits long:

$$8 \times 61 = 488 \mbox{ Bits}$$

```ad-warning
232 of these bits are *overhead* (29 columns). There is only 256 bits of useful data
```

When compared to the  directly-mapped cache, this is additional column of overhead is caused by the multiplexer, the additional comparator, and the additional AND & OR gates.

## Four-Way Associative Cache

![[Computer Architecture - Week 13 Day 2 2024-11-20 11.22.31.excalidraw]]

| hit3 | hit2 | hit1 | hit0 | s1  | s0  |
| ---- | ---- | ---- | ---- | --- | --- |
| 1    | 0    | 0    | 0    | 1   | 1   |
| 0    | 1    | 0    | 0    | 1   | 0   |
| 0    | 0    | 1    | 0    | 0   | 1   |
| 0    | 0    | 0    | 0    | 0   | 0   |

### Cost

For the memory, you need 8 sections that are 61 bits long:

$$8 \times 62 = 496 \mbox{ Bits}$$

```ad-warning
240 of these bits are *overhead* (29 columns). There is only 256 bits of useful data
```

When compared to the  directly-mapped cache, this is additional column of overhead is caused by the multiplexer, the additional comparators, and the additional AND & OR gates, AND the encoder.
## Fully Associative Cache

```ad-warning
Basically impossible to do when caches become large
```

![[Pasted image 20241120113223.png]]

```ad-important
In a fully associative cache, you can put your newly write data into any part of the cache because there is no set number.
```

It is used to reduce conflict misses, BUT is too expensive to build in most cases

# Spatial Locality

```ad-summary
Increase the block size:
- Block size, $b = 4 \mbox{ words}$
- $C = 8 \mbox{ words}$
- Directly mapped (1 block per set)
- Number of blocks, $B = 2 \quad (C/b = 8/4 = 2)$
```

![[Computer Architecture - Week 13 Day 2 2024-11-20 11.40.05.excalidraw]]

![[Pasted image 20241120113845.png]]

Larger block sizes leads too…

![[Pasted image 20241120114227.png]]

## Performance with Spatial Locality

**RISC-V Assembly**:

```
	addi s0, zero, 5
	addi s1, zero, 0
L:  beq  s0, zero, DONE
	lw   s2, 4(s1)
	lw   s3, 12(s1)
	lw   s4, 8(s1)
	addi s0, s0, -1
	j    L
DONE:
```

![[Pasted image 20241120114411.png]]

***Miss Rate***

$$\mbox{Miss Rate} = 1/15 = 6.67\%$$

## Types of Misses

**Compulsory:** First time data accessed

**Capacity**:  Cache too small to hold all data of interest

**Conflict**: Data of interest maps to same location in cache

```ad-important
**Miss Penalty:** Time it takes to retreive a block from from a lower level of hierarchy.
```

# Recap

- **Capacity**: $C$
- **Block size**: $b$
- **Number of blocks in cache**: $B= C/b$
- **Number of blocks in a set**: $N$
- **Number of sets**: $S  = B/N$

| Organization        | Number of Ways ($N$) | Number of Sets ($S=B/N$) |
| ------------------- | -------------------- | ------------------------ |
| Direct Mapped       | 1                    | $B$                      |
| $N$-Way Associative | $1 < N < B$          | $B / N$                  |
| Fully Associative   | $B$                  | 1                        |

