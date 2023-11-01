Date: 1st November 2023
Date Modified: 1st November 2023
File Folder: Week 11
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Recursion Day 2
- Divide-and-Conquer Algoirthms

```

# Recursion

## Recursion and Call Stack Tracing

```ad-question
- COnsider the follwoing recursive funciton used to calcualte $n$ factorial, $$n! = n * (n-1)*...*2 * 1$$
- Trace the call stack as this fucniton is executed ina  program that calls `nFact(5)`
```

```c++
int nFact(int n) { //Works for n >=0
	if (n<2) // base case
		return 1;
	else // recursive step
		return n * nFact(n-1);
}
```

```ad-summary
title: Definition
The **call stack** is a data structure that keeps track of athe sequence of fucniton calls and their associated context during program execution.
```

**`nFact(5)` is pushed onto call stack**

- Checks base case
- Would return `5 * nFact(4)`, but `nFact(4)`  is needed.

**`nFact(4)` is pushed onto call stack**

- Checks base case
- Would return `4 * nFact(3)`, but `nFact(3)`  is needed.

**`nFact(3)` is pushed onto call stack**

- Checks base case
- Would return `3 * nFact(2)`, but `nFact(2)`  is needed.

**`nFact(2)` is pushed onto call stack**

- Checks base case
- Would return `2 * nFact(1)`, but `nFact(1)`  is needed.

**`nFact(1)` is pushed onto call stack**

- Checks base case
	- Returns 1!

```ad-important
From here, it would go backwards and return every value from `nFact(1)` to `nFact(5)` step by step
- 1
	- Returns 1
- 2
	- Returns 2 * 1 
- 3
	- Returns 3 * 2
- 4
	- Returns 4 * 6
- 5
	- Returns 5 * 24
```

# Divide-and-Conquer Algorithms

**Divide** into smaller subproblems

**Conquer** the subproblems
- Base Case

Combine the solutions
- Overhead may be constant or more complex

```ad-note
Generally, input size $n$ and dividing into $k$ subproblems gives $\log_k(n)$ steps of dividing
```

## Which Algorithms use "Divide-and-Conquer"?

- Quicksort
	- Partitions the array into two parts, and quicksorts each part.
	- No additional work is needed to combine the parts (an in-place sorting algorithm)
- Merge Sort
	- Partitiions array into 2 parts, and merge sorts each
	- The combination involves merging two sorted sub arrays
		- Copies are in volved, so it is the first example of a sorting algorithm that is **NOT** in-place.

## Merge Sort

```ad-question
Using C++ indexing, sor thte array of values using merge sort:
$$[14, 7, 3, 12, 9, 11, 6, 2]$$
```

```ad-note
- $p$ = first index of sub array
- $r$ = last index of subarray
- $q$ = "Middle" index
$$q = \lfloor{\frac{p+r}{2}}\rfloor$$
```

![[Pasted image 20231101082736.png]]
### Pseudocode for Merge Sort

```
MERGE-SORT(A, p, r)
if p < r
	q = floor((p+r)/2) // Base case is p = r
	MERGE-SORT(A, p, q)
	MERGE-SORT(A, q+1, r)
	MERGE(A, p, q, r)
```

Merge-Sort(A, p, r)
- If array has more than 1 element
	- Find "near midpoint"
	- Divide the input array into two halves
	- Sort each half separately
	- Combine the two using another routine (merge)

### Merge Routine Overview

- Consider the subarray `A[p..r]` as two subarrays
	- `A[p..q]`
		- $n_1 = q-p+1$ elements
		- copy elements into $L[]$
	- `A[q+1..r`
		-  $n_2 = r-q$ elements
		- Copy elements into $R[]$

```ad-important
Append a **sentinel** (an indicator of the end of a data structre) to each $L[]$ and $R[]$
- Use the value of $\infty$ (so always larger than any elemtn in $L$ or $R$)
```

The Loop copies elements form L and R back time `A[p..r]`

### Pseudocode for Merge

```
MERGE(A, p, q, r)
n1 = q - p + 1 //number elemtns in left subarray from p to q
n2 = r-q //nubmer of elemnts in right subarray from q+1 to r
Let L [1..n1+1] and R[1..n2}1] be new arrays
for i = 1 to n1
	L[i] = A[p+i-1] //copies the vlaues of the left subarray in L[]
for j = 1 to n2
	R[j] = A[q+j] //copies the value of teh right subarray in R[]
L[n1 + 1] = infinty //appends sentinel
R[n2+1] = infinty //appends sentinel
i = 1 // index for keepign track of values in left subarray
j = 1 //index for keeping track of values in right subarray
for k = p to r //k is an index for accessing vlaues of A[]
	if L[i] =< R[j] //infinty used here! Get next smallest elemnt to add to A[]
		A[k] = L[i] //Choose left subarray vlaue (if smaller)
		i = i+1 //Increment left subarray's index (to get next one in L)
	else A[k] = R[j] //Else, choose right subarray value
		j = j+1 //Increment the right subarray's index ( to get next on in R)
```

### Important `C++` Code for Implementation

```c++
//Line 3: Is a dynamic memory allcation
int* L = new int[n1+1];
int* R = new int[n2+1];
//Line 8 & 9: Creating a sentinel that is the max of A[p..r] + 1 is a good sentinel to repalce infinty

//Line 18/19: Remove dynamic memoery
delete[] L;
delete[] R;
```