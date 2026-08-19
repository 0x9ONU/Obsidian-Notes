Date: 15th November 2023
Date Modified: 15th November 2023
File Folder: Week 13
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Quick Sort

```

# Quick Sort

```ad-note
Based on a divide-and-conquer approach
```

**Divide:**: Partition the subarray $A[p..r]$ into two subarrays $A[p..q-1]$ and $A[q+1..r]$ such that:
- Each value in $A[p..q-1] \le A[q]$ (pivot)
- Each value in $A[q+1..r] \ge A[q]$ (pivot)

**Conquer**: Sort the two subarrays by recursive function calls to quicksort

**Combine**: The subarrays are sorted in place, so no additional work is needed!

![[Pasted image 20231115081743.png]]

![[Drawing 2023-11-15 08.17.48.excalidraw]]

![[Pasted image 20231115082434.png]]

```ad-note
- `i` is the loop counter that is keeping track of where to place the pivot
- Swaps the pviot location's value with the value @ `i+1`
```

![[Pasted image 20231115082313.png]]

## Pseudocode

```
QUICKSORT(A, p, r)
	if p < r //Base case is p=r
		q = PARTITION(A, p, r) //get pivot lcoaiton and move elements about pivot
		QUICKSORT(A, p, q-1) //Quicksort the left subarray
		QUICKSORT(A, q+1, r) //Quicksort the right subarray
```

```
PARTITION(A,p,r)
	pivot = A[r] //using last element in the subarray as the pivot
	i=p-1 //index to track whereto place the pivot
	for j = p to r - 1 //do not need to check the pivot, so stop at r-1
		if A[j] <= pivot
			i++
			swap A[i] <-> A[j]
	swap[i+1] <-> A[r]
	return i+1
```

## Best & Worst Case Formulas

**Best-case**: The value is in the middle
$$T(n) = 2T(\frac{n}{2})+ \Theta(n)$$
**Worst-case:** When it is already sorted in ascending OR descending order
$$T(n)=T(n-1) + \Theta(n)$$

```ad-note
$\Theta(n)$ is the partition work
```
## Example 1: Quicksort Average-Case Example

```ad-question
Demonstrate the steps of quicksort on the array given below
- (Notice how the pivot is a value in the middle of the range of values in the array)
![[Pasted image 20231115083301.png]]
```

![[Pasted image 20231115083312.png]]

## Example 2: Worst-Case Example

```ad-question
Demonstrate the steps of quicksort on the array given below:
![[Pasted image 20231115083431.png]]
```

![[Pasted image 20231115083509.png]]

## Running Time of Partition

```ad-summary
Upper bound based on when the subarray includes all $n$ elements. In this case,the for loop is $\Theta (n)$
``` 

![[Pasted image 20231115084103.png]]

## Best-Case Run-Time Analysis

```ad-important
Pivot is always in the middle of the range of vlaues of the subarray
- Splits the subarrays evenly into two equal sizes
```

$$T(n) = 2T(\frac{n}{2}) + \Theta(n)$$
**Master Method (case 2) gives**:
$$T(n) = \Theta(n \lg n)$$

## Worst-Case Run-Time Analysis

```ad-important
Pivot is always the largest/smallest value in the range of values
- Only reduces size by one
```

$$T(n) T(n-1) + \Theta(n)$$

**Use substitution along with upper or lower bound for $f(n)$**

$$T(n) \le T(n-n) + c_2(\sum_{i=1}^n i) = \Theta(1) + c_2(\frac{n^2+n}{2})$$

**And**

$$T(n) \ge \Theta(1) + c_1(\frac{n^2+n}{2})$$
$$\therefore T(n)=\Theta(n^2)$$

## Summary

Average case is much more common than the worst-case

```ad-important
Quicksort considered the best general case sorting algorithm
```

  