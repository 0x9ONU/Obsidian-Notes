Date: 25th September 2023
Date Modified: 25th September 2023
File Folder: Week 6
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Soritng ALgorithms and Pseudocode
	- Selection Sort

```

```ad-note
title: Homework
- [ ] Add picture to canvas
```

# Learning Objectives
- Describe how the selection sort algorithm processes an array of integers to sort them.
# Selection Sort

## Sorting Problem

- **Input**: A Sequence of Elements
	- numbers, strings, or objects
	- $n$ elements is assumed where:
		- $<a_1, a_2,...a_n>$
- **Output**: A permutation (reordering) of the input elements in a  specific order
	- ascending or descending order
	- Based on a predefined comparision criteria (**total order**)
		- numerical value or lexicographic order
	- We are given $a_1', a_2',...,a'_n$
		- $a_1' \le a_2',...a_n'$

## Correctness and Efficiency

**Correctness**
- Results of the sorted list

```ad-summary
title: Efficiency
- **Time:**
	- Even in asimple sorting algorithms, two nested loops can sort a list in worst-case
	- Based on ***quadratic running time***:
		- $$x^2, n^2 \space quadratic \space funcitons$
		- Worst case for all common sorting algorithms
- **Memory**:
	- Many simple sorting algirthm can do it with only a few aditional variables (***constant memeory overhaed***), in addition to the memeory for the data to be sorted.
```

## Definitions

**In-place sorting**
- No extra space is needed beyond a cosntant amount
- Constant number of variables
- Swapping

**Internal sorting**
- Data to be sorted is all in main memory

**External Sorting:**
- Some of the data to be sorted is stored externally, requiring slower access (read and writes) to the memory

## Why does it matter?

```ad-example
- Data Presentation adn Visualization
	- Looks more organized and comprehensible
- Algorithms operating on data structures
	- Some data structures, such as binary search trees use sorted keys to construct the data structure.
- Information Retrieval
	- Sorting allows efficient search and retrieval
- Optimizing queries in databases
```

## Selection Sort Overview

**Initialization**: Given input sequence:
$$<a_1, a_2,...,a_n>$$
- Sorted subsequence = $<>$

```ad-note
Names usually focus on how sorting functions work
- Selection sort
	- Select next element to add to sorted subsequence
- Done with in-palce
	- Memory efficienlty is used using swapping
	- Swaps the **first index** and **smallest elements** in the unsorted subsequence
	- Goes linearly from $[0]$ to $[n]$
```

```ad-important
Once it hits the last swap with only two elements remaining, it **does not** have to iterate over the last element as it is trivially sorted.
```

## Array Pseudocode

```
Alg: Seleciton-Sort(A)
for fristIdx <- 1 to A.length-1
	smallest Idx <- firstIdx
	for j <- (firstIdx + 1) to A.length
		if A[j] < A[smallestIdx]
			then smallestIdx <- j
	swap A[firstIdx] <-> A[smallestIdx]
```

```ad-note
Swap can be implemented in 3 lines in c++:
```c++
int temp = A[firstIdx];
A[firstIdx] = A[smallestIdx];
A[smallestIdx] = temp;
```






