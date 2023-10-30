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
	- Ensure loop invariant is maintained with each iteration
	- Can assume it is true for previous iterations, and show that the given iteration maintains the property
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
- $A[k..j]$, with $k > j$, is considered an empty subarray
- $A[j..j]$ is an array with a single value.

#### Outer Loop Invariant

Before the start of each iteration of the outer for-loop:
1. The first `i-1` elements of the array are stored in ascending order,
2. the elements in the subarray `a[i...n]` are greater or equal to the elements in `a[1..i-1]`
3. The elements of the array remain unchanged (same array values, possibly in different order).

**Initialization:** `i` starts at 1
- First $1-1=0$ element are sorted (vacuously true)
- `A[1..n]` are greater than elements in $A[1..0] = \emptyset$ (vacuously true)
- Elements unchanged (nothing has been done - vacuously true)

**Maintenance:** Assume `true` for `i=k`; demonstrate `k+1`
- First $k-1$ elements are sorted
- `A[k..n` are greater than elements in `A[1..k-1]`
- Elements unchanged

```ad-note
Inner Loop + Line 6
- Swaps so $A[k] = min\{A[k],...,A[n]\}$
- Item 2 above means $A[k] \ge max\{A[1],...A[k-1]\}$
- These facts result in loop invariant maintenance (try `i=k+1` now)
```

**Termination:** `i` ends at `n` when leaving the loop
- First `n-1` elements are sorted
- $A[n..n] = A[n]$ is greater than elements in $A[1..n-1]$
- Elements unchanged

```ad-important
Together, these show that arrayis fully sorted in ascending order. Note that the for-loops halt - correctness achieved!
```

#### Inner Loop Invariant

Before the start of each iteration of the inner for-loop:
- `smallestIdx` references the smallest element of the subarray `A[i--j-1]`
	- meaning `A[smallestIdx]` is the smallest element of subarray `A[i..j-1]`

 **Initialization**: `j` starts at `i+1`
- $A[i..j-1] = A[i..i+1-1] = A[i..i]=^{def}A[i] = A[smallestIdx]$, which is the smallest value (trivially so)

**Maintenance:** Assume true for $j=k$ and show it is still true for $j=k+1$
- Assume: $A[smallestIdx] = min\{A[i],...,A[k-1]\} (j=k)$
- Line 5 updates `smallestIdx` as $j=k$ only if $a[k] < A[smallestIdx]$
- At end. $A[smallestIdx] = min\{A[i]... A[k]\}(j=l+1)$

**Termination:** $j=n+1$, so $A[smallestIdx] = min\{A[i],...,A[n+1-1]\}$