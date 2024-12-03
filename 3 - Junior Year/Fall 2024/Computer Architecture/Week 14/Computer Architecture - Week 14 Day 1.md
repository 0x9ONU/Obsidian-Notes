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

## Exercise 8.14

```ad-question
You've joined a hot new INternet start-up to build wristwatches wtih a built-in pager and Web browser. It uses an embedded processor with a multilevel cache scheme as shown below:

![[Pasted image 20241203100955.png]]

The processor includes a small on-chip cache in addition to a large off-chip second-level cache.

$$\space$$
Assume that the processor uses 32-bit physical addresses but accesses data only on word boundaries. The caches have the characteristics as given in the table below. The DRAM has an access time of $t_m$ and a sizze of $512 \space MiB$
1. For a given word in memory, what is the total number of locations in which it might be found in the on-chiop cache adn in the second-level cache?
2. What is the size, in bits, of each tag for the on-chip cache and the second-level cache?
3. Given an expression fo rthe average memroy read access time. Teh caches are accessed in sequence.
4. Measurements show that, for a particular problem of interest,t he on-chip cache hit rate if 85% and the second-level cache hit rate is 90%. HOwever, when the on-chip cache is disabled, the second-level cache hit rate shoots up to 98.5%. Why is this?
```

| Characteristics  | On-chip Cache            | Off-chip Cache |
| ---------------- | ------------------------ | -------------- |
| Organization     | Four-way set associative | Direct-Mapped  |
| Hit Rate         | A                        | B              |
| Access Time      | $t_a$                    | $t_b$          |
| Block Size       | 16 bytes                 | 16 bytes       |
| Number of blocks | 512                      | 256 K          |
### Part 1

The word in memory might be found in two locations, one in the on-chip cache, and one in the off-chip cache.

### Part 2 $\star$

For the first-level cache, the number of sets, $S = 512/4 = 128 \mbox{ sets}$. Thus, `7` bits of the address are set bits. The block size is $16 \mbox{ bytes} / 4 \mbox{ bytes/word} = 4 \mbox{ words}$, so there are 2 block offset bits. Thus, the number of tag bits for the first-level cache is $32-(7+2+2) = \boxed{21 \mbox{ bits}}$

For the second-level cache, the number of sets is equal to the number of blocks, $S = 256k$. Thus, 18 bits of the address are set bits. The block size is $16 \mbox{ bytes} / 4 \mbox{ bytes/word} = 4 \mbox{ words}$, so there are 2 block offset bits. Thus, the number of tag bits for the second-level cache is $32 - (18 + 2 + 2) = \boxed{ 10 \mbox{ bits}}$
### Part 3

**TYPICAL LAYOUT**
$$t_{VM} > t_{PM} > t_{cache}$$

$$\boxed{\mbox{AMAT} = t_{cache} + MR_{cache}(t_{PM}+MR_{PM}\times t_{VM})}$$
*However, there is no virtual memory*

$$\mbox{AMAT} = t_{cache} + MR_{cache}(t_{L2cache}+ MR_{Lwcache}\times t_{MM})$$
$$\mbox{AMAT} =t_c+(1-A)(t_b+(1-B)t_m)$$

### Part 4

When the first-level cache is enabled, the second-level cache receives only the “hard” accesses, ones that don’t show enough temporal and spatial locality to hit in the first-level cache. The “easy” accesses (ones with good temporal and spatial locality) hit in the first-level cache, even though they would have also hit in the second-level cache. When the first-level cache is disabled, the hit rate goes up because the second-level cache supplies both the easy” accesses and some of the “hard” accesses.” 
