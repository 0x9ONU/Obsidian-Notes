
# Exercise 8.10

```ad-question
A 16-word cache has the parameters given in Exercise 8.8. Consider the following repeating sequence of `lw` addresses (given in heaxdecimal):
$$\space$$
`74 A0 78 38C AC 84 88 8C 7C 37 38 13C 388 18C`
$$\space$$
1. Direct mappec cache, $b=1$ word
2. Fully associative cache, $b=2$ words
3. Two-way set associative cache, $b=2$ words
4. Direct mapped cache, $b=4$ words
```

## Part 1

![[Ethan Berei - Computer Architecture Homework 7 2024-12-03 18.23.46.excalidraw]]

$$74 \rightarrow 01\boxed{1101}\boxed{00} \rightarrow \mbox{Set 13}$$
$$A0 \rightarrow 10\boxed{1000}\boxed{00} \rightarrow \mbox{Set 8}$$
$$78 \rightarrow 01\boxed{1110}00\rightarrow \mbox{Set 14}$$
$$38C \rightarrow ...10\boxed{0011}00 \rightarrow \mbox{Set 3}$$
$$AC \rightarrow 10\boxed{1011}00\rightarrow \mbox{Set 11}$$
$$84 \rightarrow 10\boxed{0001}00 \rightarrow \mbox{Set 1}$$
$$88 \rightarrow 10\boxed{0010}00 \rightarrow \mbox{Set 2}$$
$$8C \rightarrow 10\boxed{0011}00 \rightarrow \mbox{Set 3}$$
$$7C \rightarrow 01\boxed{1111}00 \rightarrow \mbox{Set 15}$$
$$34 \rightarrow 00\boxed{1101}00 \rightarrow \mbox{Set 13}$$
$$38 \rightarrow 00\boxed{1110}00 \rightarrow \mbox{Set 14}$$
$$13C \rightarrow...00\boxed{1111}00 \rightarrow \mbox{Set 15}$$
$$388 \rightarrow ...10\boxed{0010}00 \rightarrow \mbox{Set 2}$$
$$18C\rightarrow...10\boxed{0011}00\rightarrow \mbox{Set 3}$$

**Miss Rate**

$$\mbox{Miss Rate} = 1- \mbox{Hit Rate} = 1- \frac{3}{15} = 78.57 \%$$
## Part II

**Miss Rate**: 100%!

Since it can only hold 8 blocks of two words, it will begin to miss, which leads to a 100% miss rate as it runs out of space.

## Part III

Since it is both a two way AND a block size of two, it has *four* sets

![[Ethan Berei - Computer Architecture Homework 7 2024-12-03 19.04.08.excalidraw]]


![[Drawing 2024-12-03 19.07.24.excalidraw]]


$$74 \rightarrow 011 \boxed{10}\boxed100 \rightarrow \mbox{Set 2, Block 1}$$
$$A0 \rightarrow 101\boxed{00}\boxed000 \rightarrow \mbox{Set 0, Block 0}$$
$$78 \rightarrow 011\boxed{11}\boxed000\rightarrow \mbox{Set 3, Block 0}$$
$$38C \rightarrow ...100\boxed{01}\boxed100 \rightarrow \mbox{Set 1, Block 1}$$
$$AC \rightarrow 101\boxed{01}\boxed100\rightarrow \mbox{Set 1, Block 1}$$
$$84 \rightarrow 100\boxed{00}\boxed100 \rightarrow \mbox{Set 0, Block 1}$$
$$88 \rightarrow 100\boxed{01}\boxed000 \rightarrow \mbox{Set1, Block 0}$$
$$8C \rightarrow 100\boxed{01}\boxed100 \rightarrow \mbox{Set 1, Block 1}$$
$$7C \rightarrow 011\boxed{11}\boxed100 \rightarrow \mbox{Set 3, Block 1}$$
$$34 \rightarrow 001\boxed{10}\boxed100 \rightarrow \mbox{Set 2, Block 1}$$
$$38 \rightarrow 001\boxed{11}\boxed000 \rightarrow \mbox{Set 3, Block 0}$$
$$13C \rightarrow...001\boxed{11}\boxed100 \rightarrow \mbox{Set 3, Block 1}$$
$$388 \rightarrow ...100\boxed{01}\boxed000 \rightarrow \mbox{Set 1, Block 0}$$
$$18C\rightarrow...100\boxed{01}\boxed100\rightarrow \mbox{Set 3, Block 1}$$
**Miss Rate**: $= 1-\mbox{Hit Rate} = 1-\frac{4}{15} = 73.3\%$

## Part IV

Since each block has four words, that means the set size must be *four* ($16/4=4$)

![[Ethan Berei - Computer Architecture Homework 7 2024-12-03 19.42.26.excalidraw]]



![[Ethan Berei - Computer Architecture Homework 7 2024-12-03 19.42.07.excalidraw]]


$$74 \rightarrow 01\boxed{11}\boxed{01}00 \rightarrow \mbox{Set 3, Block 1}$$
$$A0 \rightarrow 10\boxed{10}\boxed{00}00 \rightarrow \mbox{Set 2, Block 0}$$
$$78 \rightarrow 01\boxed{11}\boxed{10}00\rightarrow \mbox{Set 3, Block 3}$$
$$38C \rightarrow ...10\boxed{00}\boxed{11}00 \rightarrow \mbox{Set 0, Block 3}$$
$$AC \rightarrow 10\boxed{10}\boxed{11}00\rightarrow \mbox{Set 2, Block 3}$$
$$84 \rightarrow 10\boxed{00}\boxed{01}00 \rightarrow \mbox{Set 0, Block 1}$$
$$88 \rightarrow 10\boxed{00}\boxed{10}00 \rightarrow \mbox{Set 0, Block 2}$$
$$8C \rightarrow 10\boxed{00}\boxed{11}00 \rightarrow \mbox{Set 0, Block 3}$$
$$7C \rightarrow 01\boxed{11}\boxed{11}00 \rightarrow \mbox{Set 3, Block 3}$$
$$34 \rightarrow 00\boxed{11}\boxed{01}00 \rightarrow \mbox{Set 3, Block 1}$$
$$38 \rightarrow 00\boxed{11}\boxed{10}00 \rightarrow \mbox{Set 3, Block 2}$$
$$13C \rightarrow...00\boxed{11}\boxed{11}00 \rightarrow \mbox{Set 3, Block 3}$$
$$388 \rightarrow ...10\boxed{00}\boxed{10}00 \rightarrow \mbox{Set 0, Block 2}$$
$$18C\rightarrow...10\boxed{00}\boxed{11}00\rightarrow \mbox{Set 0, Block 3}$$
**Miss Rate**: $1- \mbox{Hit Rate} = 1- \frac{2}{15}= 86.7\%$

# Exercise 8.11 

```ad-question
Suppose you are running a program with the following data access pattern (given in hexadecimal). The pattern is executed only once.
$$\space$$
`0 8 10 18 20 28`
$$\space$$
1. If you use a direct mapped cache with a cache size of 1 KiB and a block size of 8 bytes (2 words), how many sets are in the cache?
2. With the same cache and block size as in part (a), what is the miss rate of the direct mapped cache for the given memory access pattern?
3. For the given memory access pattern, which of the following would decrease the miss rate the most? (Cache capacity is kept constant.)
```

## Part I

Direct Map means there is one block per set. Then, there are 2 words/8 bytes per block, so:

$$S = \frac{B}{N} = \frac{C/b}{N} = \frac{(1KiB)/(8 Bytes)}{(1)}=128 \mbox{ sets}$$

## Part 2

This results in a **100% miss rate** because it was the first time the data was accessed, which leads to all *compulsory misses*

## Part 3

The miss rate will decrease if the *block size was increased to 16 bytes*

# Exercise 8.15

```ad-question
This chapter described the least recenlty used (LRU) repalcement policy for multiway associative caches. Other less common repalce policies include first-in-first-out (FIFO) and random policies. FIFO replacement evicts the block that has been there the longest, regardless of how recnelty it was accessed. Random replacement randomly picks a block to evict.
1. Discuss the advantages and disadvantages of each of these rpelacement policies.
2. Describe a data acess pattern for which FIFO would perform better than LRU.
```

## Part 1

**FIFO**

First-in-first-out removes data that has been in the queue the longest, which is often true for most data in cache (good practices place data back into physical memory if it is not used for awhile). It also has less overhead as it does not need to keep track as much as needed in an $N$-way associative cache. It has the downside of when data is needed to be held in cache for a long time.

**Random Access**

Out of the three methods, random access is the cheapest to implement when it comes to the hardware. Since it chooses a random place to put the information, it does not need the overhead to keep track of either a queue OR sets, blocks, or associativity. In larger caches, it works better since there is a less chance of an overwrite. However, there is still a chance that data that is needed is overwritten
## Part 2

FIFO would work best in small, consistent, and iterative programs that use the data that is loaded as soon as possible. Using a FIFO memory like this will lead to a low miss rate while having less hardware overhead than a direct mapped queue.