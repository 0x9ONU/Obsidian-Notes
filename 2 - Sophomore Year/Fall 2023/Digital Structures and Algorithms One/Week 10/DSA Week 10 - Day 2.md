Date: 25th October 2023
Date Modified: 25th October 2023
File Folder: Week 10
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Proof of Contradiction Day 2
- Algorithm Correctness and Loop Invariants

```

### Example 2: Proof by Contradiction to demonstrate a function is **NOT** $\Theta(g(n))$


```ad-question
Show that $f(n) = 6n^3 + 1$ is NOT $\Theta(n^2)$
```

```ad-note
In the contradiciton, we will get fromt eh upper boudn since cubic si faster growing than quadratic
```

- Assume $f(n) = \Theta(n^2)$. Then $\exists c_1, c_2 > 0 \space \& \space n_0 > 0$ such that:
$$c_1n^2 \le 6n^3 + 1 \le c_2n^2 \space \space \space \forall n \ge n_0$$

- Divide through by $n^2$
$$c_1 \le 6n + \frac{1}{n^2} \le c_2 \space \space \space \forall n \ge n_0$$

```ad-note
title: Scratch 
We want to get $6n \ge c_2$ to create a contradiciton
- $\therefore$ $n$ should be greather or equal to:
$$n \ge \frac{c_2}{6}$$
```

$$6n+ \frac{1}{n^2} > 6n \ge 6 \frac{c_2}{6} \ge c_2$$

$$6n+\frac{1}{n^2} > c_2 \space \space \space \forall n \ge \frac{c_2}{6}$$

- Thus, for $n \ge max \{ \frac{c_2}{6}, n_0 \}$ we have:

$$6n+\frac{1}{n^2} > c_2$$
$$Assumption: \space \space 6n+ \frac{1}{n^2} \le c_2$$

- **Contradiction**, The assumption is wrong and $f(n)$ is NOT $\Theta(n^2)$

# Algorithm Correctness

```ad-note
An algoirthm should ALWAYS *halt* after a set amount of time
```

## The Sorting Problem

**Input:** A sequence of elements
- e.g., numbers, strings, or objects

**Output**: A permutation (reordering) of the input elements in a specific order
- ascending or descending
- Based on a predefined comparsion criteria (**total order**)

$$< a_1^\prime, a_2\prime,... a_3^\prime>$$
$$s.t. \space a_1^\prime \le a_2^\prime \le ... \le a_3^\prime$$

## Loop Invariance

A property that holds before and after each iteration of a loop.

```ad-note
Should support he accuracy and valdity fo the output (or intermediate variable, since complex algorithms may have many loops)
```

```ad-summary
Loop invariance is broken down into *three* parts:
- **Initializaiton**
	- Ensure loop invariant is true at start of the loop
- **Maintenance**
	- Ensure loop invariant is maintained withe ach iteration
	- Can suume it is true for previous iterations, and show that the given iteration maintains the property
- **Termination**
	- Analyzing the loop invariant upon loop termination should help demonstrate the algorithm is correct.
```

### Selection Sort ... Again

```
Alg: SELECTION-SORT(A, n)
for i <- 1 to n-1
	smallestIndx <- i
	for j <- (i+1) to n
		if A[j] < A[smallestIdx]
			then smallestIndx <- j
	swap A[i] <-> A[smallestIndx]
```

**Notation**:
- $A[1..j]$ denotes the subarray of elements $A[1], A[2],...,A[j]$
#comebacklater 

#### Outer Loop Invariant

Before the start of each iteration of the outer for-loop:
1. The first `i-1` elements of the array are stored in ascending order,
2. the elements in the subarray `a[i...n]` are greater or equal to the elements in `a[1..i-1]`
3. The elements of the array remain unchanged (same array values, possibly in different order).


