Date: 2nd December 2024
Date Modified: 2nd December 2024
File Folder: Week 14
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Cache Exercises

```

# Cache Exercises

## Exercise 8.9

```ad-question
A 16-word cahce has the parameter given in Exercise 8.8. Consider the following repeating sequence of `lw` addresses:

$$\space$$

`40 44 48 4C 70 74 78 7C 80 84 88 8C 90 94 98 9C 04 8C 10 14 18 1C 20`

$$\space$$

Assuming least recently used (LRU) replacement for associative cahces, determine the effective miss rate if the sequence is input to the following cahces, ignoring start-up effects
1. directly mapped cahce, $b=1$ word
2. Fully associative cahce, $b=1$ word
3. two-way set associative cache, $b = 1$ word
4. direct mapped cache $b=2$ words

```

![[Pasted image 20241202111929.png]]

### Part 1

Direct mapping and every block is one word. The number of sets is *16*.

![[Computer Architecture - Week 14 Day 1 2024-12-02 11.19.56.excalidraw]]

$$...01\boxed{0000}\boxed{00} \Rightarrow \mbox{Set Zero}$$
$$...01\boxed{0111}\boxed{00} \Rightarrow \mbox{Set Seven}$$
$$...01\boxed{1111}\boxed{00} \Rightarrow \mbox{Set Fifteen}$$

**Miss Rate**: 80% miss rate because addresses `70-7C` and `20` use unique cache blocks and are not removed on placed in the cache. $20/25 = 80\%$

### Part 2

Fully-associative cache and every block is one word. The number of sets is *one*

![[Computer Architecture - Week 14 Day 1 2024-12-02 11.29.23.excalidraw]]

All addresses will be mapped to the same row.

**Miss Rate**: 100% miss rate. A repeated sequence of length greater than the cache size produces no hits for a fully-associative cache using LRU.

```ad-note
Very similar to how a FIFO queue works. Once it runs out of space, it will kick out the important data.
```

### Part 3

Two-way associative cache and every block is one word. The number of sets is *eight*

![[Computer Architecture - Week 14 Day 1 2024-12-02 11.30.58.excalidraw]]

$$...88_{16} \Rightarrow ....100\boxed{010}\boxed{00} \Rightarrow \mbox{Set Two}$$
$$...AA_{16} \Rightarrow ....101\boxed{010}\boxed{10} \Rightarrow \mbox{Set Two}$$

**Miss Rate**: 100% miss rate because the repeated sequence makes it that at least three accesses to each set during each pass. Using LRU replacement, each value must be replaced each pass through.
### Part 4

Direct mapping and every block is **two** words. The number of sets is *eight*

![[Computer Architecture - Week 14 Day 1 2024-12-02 11.33.40.excalidraw]]

![[Computer Architecture - Week 14 Day 1 2024-12-02 11.36.40.excalidraw]]

**Miss Rate**: 40% miss rate. Data words form consecutive locations are sorted in each cache block. The larger block size is advantageous since accesses in the given sequence are made primarily two consecutive word addresses. A block size of two cuts the number of block fetches in half since tow words are obtained per block fetch. The address of the second word in the block will always hit in this type of scheme (addresses `44` in the `40-44` address pair) Thus, the second consecutive word access always hits.

