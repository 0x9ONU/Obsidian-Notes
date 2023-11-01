Date: 30th October 2023
Date Modified: 30th October 2023
File Folder: Week 11
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Loop Invariant
	- Selection Sort
- Recursion, Divide-and-COnquer Algorithms and Merge Sort

```

# Loop Invariant

## Insertion Sort Example

```
Alg: INSERTION-SORT(A, n)
for j = 2 to n
	key = A[j]
	i = j-1
	while i > 0 and A[i] > key
		A[i+1] = A[i]
		i = i-1
	A[i+1] = key
```

```ad-note
Before the start of each iteration of the otuer for-loop
- The first $j-1$ elemetns of the array are the orignal elemetns of the first $j-1$ entries of the array, but are sorted in ascending order.
```

```ad-important
Before the start of each iteration of the inner while-loop
1. The elemtns that have been shifted to the right in the subarray $A[i+1,..j]$ are all greater than the key value,
2. The leftmost shifted element is repeated (meaing $Ai+1=A[i+2]$), and
3. The elements of subarray $A[i+2..j]$ consist of the original elements of the subarray $A[i+1..j-1]$, which excludes key
```

# Proofs

## Induction

Demonstrates a relationship or statement mapped from the natural numb3ers. It is used to show that a statement is true for all natural numbers, and **involves two main steps**:

**Base Case**: 
- Similar to Initialization for Loop Invariant
- Demonstrates the relationship is initially true
	- May require more than one step, depending on how complex the relationship being proven is

**Inductive Step**:
- Demonstrate that the statement is true for integer $k+1$ when it is true for $n \le k$

### Example: Prove Arithmetic Sum Using Induction

#### Base Case: $n = 1$

**Left Hand Side**:
$$ \sum_{i=1}^1 i = 1$$
**Right Hand Side:**

$$\frac{1(1+1)}{2} = 1$$

#### Inductive Step:

```ad-important
Assume the arithemtic sum is true for $n \le k$
$$\sum_{i=1}^k i = \frac{k(k+1)}{2}$$
```

**Consider the case for $n=k+1$

$$(k+1) + \sum_{i=1}^k i = \frac{k(k+1)}{2} + (k+1)$$

**Left Hand Side**:

$$\sum_{i=1}^{k+1} i$$

**Right Hand Side:**

$$= \frac{(k+1)(k+2)}{2}$$
THUS:

$$\sum_{i=1}^{k+1} = \frac{(k+1)(k+2)}{2}$$

## Recursion

### Recursive Implementation Unwinding

```ad-question
Implement a C++ funcitonto recursively compute the arithmetic sum.
- Unwind the recurion to implement the funciton with a single while loop.
- Compare the run-time complexity of these implementations with a third implexation that uses the formula for the arithmetic sum
```


$$n+\sum_{i=1}^{n-1} i \to^{base \space case \space n = 2} 2 +n \sum_{i=1}^1 i$$

```ad-note
The base case in this case returns one. It is also known as the stopping condition
```

```c++
int arithmeticSum(int n) {
	if (n < 2) //base case
		return 1;
	else //recursive step
		return (n+arithemticSum(n-1));
}
```

```ad-warning
Goes in the opposite direction where $n-1$ in inductino, while recursion uses $n+1$ to prove it works
```

**Run-Time Complexity**: $\Theta(n)$

**Recurrence Equation**
$$T(n) = T(n-1) + 2$$ **Stopping Condition**:
$$T(1) = 2$$

### Recursion Unwinding

- Implementing Arithmetic Sum unwinding the Recursion
- Can unwind recursion using while loops (base case = stopping condition, use while-loop condition)

```c++
int arithmeticSumUnwound(int n) {
	int sum = n;
	while(n > 1)
		sum += --n;
	return sum;
}
```

```ad-note
It has the same **run-time complexity** of $\Theta(n)$
- It also has $\Theta(1)$ in space complexity
```

### Arithmetic Sum Using Formula

#comebacklater for code

```ad-important
Has a constant run-time of $\Theta(1)$
```


