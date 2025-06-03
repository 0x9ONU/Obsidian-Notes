Date: 22nd November 2024
Date Modified: 22nd November 2024
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Cache Replacement Policy

```

# Cache Replacement Policy

Cache is too small to hold all data of interest at once
- If cache full: Program accesses data $X$ and evicts data $Y$

**Capacity Miss** Happens when we need to access $Y$ again after evicting it with data $X$

**Least Recently Used (LRU) Replacement**: The least recently used block in a set evicted
- Solves how to choose $Y$ to minimize chance of needing it again!

## LRU Replacement

![[Computer Architecture - Week 13 Day 3 2024-11-22 11.09.23.excalidraw]]

**RISC-V Assembly**

```
lw s1, 0x04(zero)
lw s2, 0x24(zero)
lw s3, 0x54(zero)
```

![[Pasted image 20241122110918.png]]
![[Pasted image 20241122111057.png]]

### Pseudo LRU Replacement

For set associativity of higher then two ways:
- Divide the ways into *two groups*
- $U$ indicates which group of ways was least recently used
- The new block replaces a random block within the least recently used group

```ad-note
Even if it is a 4-way or more cache, we will treat it as if it is a two way associativity when it comes to the `U` bit

$| U |\quad \boxed{| V | tag | data | V | tag | data |} \quad \boxed{| V | tag | data | V | tag | data|}$
```
# Write Policy

## Memory Storing

If the `store word` operation results in a *miss*, the cache block is fetched from main memory into the cache, and then the appropriate word in the cache block is written.

If the `store word` operation results in a *hit*, the word is simply written to the cache block.

## Write-Through vs. Write Back

**Write Through**: The data written to a cache block is simultaneously written to main memory.

```ad-warning
Not used today since it would make storing take as long as it takes to write to the main memory, making the speed of the cache useless.
```

**Write Back**: A *dirty bit* ($D$) is associated with each cache block.
- $D = 1$ when the cache block has been written
- Dirty cache blocks are written back to main memory only when they are *evicted form the cache.*

## Example & Block Diagram

```ad-question
Assuming a block size of four words, discuss main memory accesses for a write-through versus a write-back policy
```

```
addi t5, zero, 0
sw   t1, 0(t5)
sw   t2, 12(t5)
sw   t3, 8(t5)
sw   t4, 4(t5)
```

![[Computer Architecture - Week 13 Day 3 2024-11-22 11.28.13.excalidraw]]

```ad-warning
*Trade-Off*: You need an extra Dirty bit for every block
```

**Miss Rate**:

$$\mbox{Miss Rate} = 1/4 = 25\%$$

**Clock Cycles**:

It will take 23 (1$\mbox{ miss} \times 20 + 3 \mbox{ hits}$) clock cycles with this method, rather than 80 (20 per `sw`)