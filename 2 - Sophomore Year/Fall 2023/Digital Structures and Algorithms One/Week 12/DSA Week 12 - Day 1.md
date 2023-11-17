Date: 6th November 2023
Date Modified: 6th November 2023
File Folder: Week 12
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Substitution Method for Recurrence Equations
- Binary Search

```

# Substitution

```ad-summary
title: Steps
1. Write out the recurrence equation for a few cases of smaller inputs, based on the trend of shrinking $n$
2. Substitute the equations into the $T(n)$ recurrence equation
3. Formulate the trend or the pattern we see with each equation
4. Use the base case to bottom out the recursion and simplify for the closed form solution
```

## Recurrence Equations for Incremental Recursion

```ad-question
Based on the C++ code implementing the $n$ factorial calcuation below, write the cecurrence equation (include the base condition) and sovle the recurrece equation to obtain an asymptotic complexity bound for the running time $T(n)$
```

```c++
int factorial (int  n) {
	if (n <= 0) return 1;
	else reutrn n*factorial(n-1);
}
```

Due to there being recursion, $T(n)$ can be broken down into the base step and the inductive step:

$$T(n) = \begin{bmatrix} 1 & if \space n=0 \\ T(n-1)+2 & n \ge 1 \end{bmatrix}$$

```ad-note
The +2 is for the two extra instructions that are created by both lines being checked
```

**Recurrence Equation**:

$$T(n) = T(n-1)+2 \space \space \space (recursive \space step)$$
$$T(0) = 1 \space \space \space (base \space case)$$
**Solve Recurrence Equation 

1. Write out for shrinking values

$$T(n-1) = T(n-2)+2$$
$$T(n-2) = T(n-3)+2$$
2. Substitute Equations
$$T(n) = [T(n-2)+2]+2$$
$$T(n) = [[T(n-3)+2]+2]+2$$
$$T(n) = T(n-3) + 3(2)$$

3. Formulate the pattern

```ad-important
In terms of genreal positive integer $i$, in terms of $T(n) = f(n-i)$
```

$$T(n-i) + 2i$$

4. Utilized base case to bottom out and simplify

Given $T(0) = 1$, determine $i$ to get $T(0)$ in the pattern:

$$where \space i = n$$
$$T(n) = T(n-n) + 2n = T(0)+2n$$
$$T(n) = 2n+1$$

**Asymptotic complexity bound**:

$$T(n) = \Theta(n)$$

# Binary Search

- Need sorted data structure (DS)
- Need direct access to middle values
	- Arrays (given random access with index offset)
	- Binary Search Trees (BSTs) (Node based DS, like LL)

![[Pasted image 20231106082719.png]]

## Pseudocode for Arrays

```ad-note
Reutrns an `int` (the index of the `keyVal` or `-1` if not there)
- Array MUST be Sorted!
	- Start with:
	- `start` = first index (0 for c++)
	- `end` = last index (n-1 for c++)
```

```
Alg: BINARY-SEARCH-ARRAY(A, start, end, keyVal) //start sand end are indices
//A is assuemd to be in sorted order (ascending_
	if start > end // base case: reached if keyVal not found)
		return -1 //use  a-1 to indicate keyVal is not found
	else
		mid <- floor((start+end)/2) //consider middle idnex
		if keyVal = A[mid]
			reutrn mid // keyVal is found in the middle
		else
			if keyVal < A[mid] //keyVal is in the first half
				return BINARY-SEARCH-ARRAY(A, start, mid-1, keyVal)
			else 
				return BINARY-SEARCH-ARRAY(A, mid+1, end, keyVal)
```

## Example

```ad-question
Consider the array given below (showing the C++ indices underneath the array.) Apply binary search to check which index has value keyVal = 1
```

$$\begin{matrix} -2 & -1 & 0 & 1 & 5 & 7 \\ 0 & 1 & 2 & 3 & 4 & 5\end{matrix}$$

**Step 1:**

$$mid = \frac{(0)-(5)}{2} = 2$$
$$\begin{matrix} -2 & -1 & 0_0 & 1 & 5 & 7 \\ 0 & 1 & 2 & 3 & 4 & 5\end{matrix}$$

Chose right because $keyVal > 0$

**Step 2:**

$$mid = \frac{(3)+(5)}{2} = 4$$
$$\begin{matrix}  1 & 5_0 & 7 \\ 3 & 4 & 5\end{matrix}$$

Chose left because $keyVal < 5$

**Step 3:**

$$mid = \frac{3+3}{2} = 3$$
$$\begin{matrix}  1_0 \\ 3\end{matrix}$$

**TERMINATE**: `return mid(mid=3)`

### Asymptotic Complexity

**Best-Case Scenario**: Middle element has the `keyVal`
$$\Omega(1) \space or \space \Theta(1) \space in \space best \space case$$

**Worst-Case Scenario:** keyVal not in the array!
- Consider easiest value of $n$ to analyze, which is $n = 2^k-1$

$$mid = \lfloor \frac{start+end}{2} \rfloor = \lfloor \frac{1+2^k-1}{2} \rfloor = \lfloor \frac{2^k}{2} \rfloor = 2^{k-1}$$

Then removing the middle gives $2^k-2$
Then divide by 2 to select which half to explore:
$$\frac{2^k-2}{2} = \frac{2^k}{2} - \frac{2}{2} = 2^{k-1}-1$$

#### Worst-Case Recurrence Equation

**Count comparisons with `keyVal` as $T(n)$** and $n= 2^k-1$

$$T(2^k-1) = 1+ T(2^{k-1}-1)$$
$$T(0) = 0$$

**Write out for lower n**

$$T(2^{k-1}-1) =  T(2^{k-2}-1)$$
$$T(2^{k-2}-1) = 1+ T(2^{k-3}-1)$$

**Substitute**

$$1+[1+[1+T(2^{k-3}-1)]$$

**Write in terms of `i`

$$T(2^k-1) = i + T(2^{k-i}-1)$$

**Bottom out when $i=k$**

$$T(2^k-1) = k + T(2^0-1)$$
$$T(2^k-1) = k$$

