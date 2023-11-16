Date: 15th November 2023
Date Modified: 15th November 2023
File Folder: Week 13
#DSA1

## What is an Algorithm? What Makes a Good Algorithm?

"An **algorithm** is is a sequence of instructions that accomplishes a task"

A good algorithm should do the following:
- **Correct**: Precisely and accurately accomplish the task, or solves the problem
- **Efficient**: Requires *relatively* little time and memory to execute

```ad-note
Some aglorithms, in order to be efficient, need to sacrifise full correctness and need to create an **approximate solutions**. 
```

## Growth Rate of Different Functions and Asymptotic Notation

### Incremental Sorting Algorithms

**Running Time Complexity**

| Algorithm       | Summary                                   | Best-Case         | Worst-Case       |
| --------------- | ----------------------------------------- | ----------------- | ---------------- |
| Insertion Sort  | $\Omega(n) \space \& \space O(n^2)$       | $\Theta(n)$       | $\Theta(n^2)$    |
| Selection Sort  | $\Theta(n^2)$                             | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Bubble Sort     | $\Theta(n^2)$                             | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Merge           | $\Theta(n)$                               | $\Theta(n)$       | $\Theta(n)$      |
| Merge-Sort      | $\Theta(n\lg n)$                          | $\Theta(n\lg n)$  | $\Theta(n\lg n)$ |
| Binary Search   | $\Omega(1) \space \& \space O(\lg n)$     | $\Theta(1)$       | $\Theta(\lg n)$  |
| Towers of Hanoi | $\Theta(2^n)$                             | $\Theta(2^n)$     | $\Theta(2^n)$    |
| Quick Sort      | $\Omega(n \lg n) \space \& \space O(n^2)$ | $\Theta(n \lg n)$ | $\Theta(n^2)$                 |

**Memory Complexity**

| Algorithm      | Summary     | Best-Case   | Worst-Case  |
| -------------- | ----------- | ----------- | ----------- |
| Insertion Sort | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Selection Sort | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Bubble Sort    | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Merge-Sort     | $\Theta(n)$ | $\Theta(n)$ | $\Theta(n)$ |
| Binary Search  | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
|                |             |             |             |

### Linked List

**Running Time**

| Algorithm                | Summary                | Best-Case   | Worst-Case  |
| ------------------------ | ---------------------- | ----------- | ----------- |
| Traversal                | $\Theta(n)$            | $\Theta(n)$ | $\Theta(n)$ |
| Search                   | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Insertion at head/tail   | $\Theta(1)$            | $\Theta(1)$ | $\Theta(1)$ |
| Insertion in Sorted List | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Deletion at head/tail    | $\Theta(1)$            | $\Theta(1)$ | $\Theta(1)$ |
| Deletion in Sorted List  | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$            |

**Memory Complexity**

| Algorithm                | Summary     | Best-Case   | Worst-Case  |
| ------------------------ | ----------- | ----------- | ----------- |
| Traversal                | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Search                   | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Insertion at head/tail   | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Insertion in Sorted List | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Deletion at head/tail    | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Deletion in Sorted List  | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |

# Use Time Complexity Definitions on a given $T(n)$ Equation

## Proofs

```ad-important
- Find the maximum value to find $c_2$
- Find the smallest **postive** value to find $c_1$
- $n_0$ is where $n$ creates the smallest positive value (aka where $c_1$ happens)
	- Find where $n > c$ where $c$ is the constant
	- Between both the upper bound and lower bound, always choose the larger $n_0$
```

### Example 1: Big Theta 1

```ad-question
Formally prove that $f(n) = \frac{1}{3} n^2-2n$ is $\Theta(n^2)$
```

```ad-example
title: Steps
1. Note: $g(n) = n^2$ here; need to show using the **set notation of big Theta**:
$$c_1n^2 \le \frac{1}{3} n^2 - 2n \le c_2n^2 \space \space \forall n \ge n_0$$
1. Divide each side by $n^2$
$$c_1 \le \frac{1}{3} - \frac{2}{n} \le c_2$$
2. See that $c_2 = \frac{1}{3}$ always provides an upper bound for all $n \ge 1$
3. The $\frac{2}{n}$ term will get smaller as $n$ increases, so just choose a value of $n$ that results in a different of $\frac{1}{3} - \frac{2}{n} > 0 \leftrightarrow n > 6$
4. Next largest value of $n$ is 7, $c_1 \le \frac{1}{3} -\frac{2}{n} |_{n=7} = \frac{1}{3} - \frac{2}{7} = \frac{1}{21}$
5. Working set of values: $n_0 = 7, c_1 = \frac{1}{21}, c_2 = \frac{1}{3}$
$$0 \le \frac{1}{21}n^2 \le \frac{1}{3}n^2-2n \le \frac{1}{3}n^2 \space \space \forall n \ge 7$$
```

### Example 2: Big Theta 2

```ad-question
Prove that running time $T(n) = n^3 + 20n + 1$ is $\Theta(n^3)$
```

To prove that $T(n)$ is $\Theta(n^3)$, we need to determine positive real constants $c_1, c_2 \in \mathbb{R}^+$ and positive integer $n_0 \in \mathbb{Z}^+$ such that:

$$c_1n^3 \le n^3 + 20n+1 \le c_2n^3; \space \space \space \forall n \ge n_0$$

Divide through:

$$c_1 \le 1 + \frac{20}{n^2}+\frac{1}{n^3} \le c_2$$

For all positive $n$, the 2nd and 3rd addends in the sum of the middle function add to the value of 1, making it even larger, so a lower bound of $c_1 = 1$ will work for all positive $n$. For the upper bound, we use the fact that both of the terms with $n$ in the denominator go to to zero for large $n$. Let us check this condition for $n_0=1$:

$$1+\frac{20}{n^2} + \frac{1}{n^3} \le c_2$$
$$1+ \frac{20}{1}+ \frac{1}{1} \le c_2$$

Therefore, the Big O condition holds for $n \ge n_0=1$ and $c_2 \ge 22$. Larger values of $n_0$ result in smaller factors, so the above statement is valid for $\forall n \ge 1$

Thus, choosing $c_1 =1, c_2 =22, n_0 =1, \forall n \ge n_0$ works. Hence, the inequality holds, and $T(n)$ is $\Theta(n^3)$

### Example 3:


## Proofs by Contradiction
# Short Answers

1. Describe what makes a good algorithm

A good algorithm should be correct (solves the problem accurately) and efficient (in terms of time and space complexity). Time complexity is captured by asymptotic runtime complexity and space complexity is captured by the amount of additional memory required to execute the algorithm. Some algorithms for hard problems will tradeoff correctness (close enough by some metric of distance in a vector space may be used) for efficiency. These are called approximation algorithms

2. Describe how incremental recursive algorithms (implemented as functions that call themselves only once within the function with an incrementally smaller input) solve a problem, using your own words, accurately.

Recursive algorithms incrementally make the problem smaller until a base condition is reached that can be easily solved, at which point the base solutions are recursively combined to solve the overall problem

3. Describe how divide-and-conquer algorithms solve a problem, using your own words, accurately.

Divide-and-conquer algorithms partition the problem into smaller subproblems of similar kind recursively, until the subproblems can be solved directly, and then combine the results to solve the larger problem.

4. Describe how the merge sort algorithm processes an array of values to sort them (you may assume the values are integers).

Merge sort is a divide-and-conquer algorithm that divides the array into roughly halves, recursively, until the resulting subarrays are singletons, which are trivially copies of the two subarrays and, starting at the front of each subarray, iteratively goes through each element of each subarray and places the smaller of the two values as the next element in the merged array while incrementing the index of the subarray from which that element came. Once it adds the last element of either subarray it can append the rest of the elements of the other subarray to complete the merged array. It continues merging subarrays in this manner until the entire array is merged and sorted.

5. Describe what a loop invariant is and how it is sued to prove the correctness of an algorithm.

A loop invariant is a formal statement about the state of program variables being operated on in a loop phrased in such a way that the statement is true upon initialization, in each iteration of the loop (maintenance), and upon exiting the loop (termination). If the loop invariant is demonstrated to hold in upon initialization and maintenance, and the statement holds meaning upon termination toward achieving the goal of the algorithm, and the algorithms does terminate, or halt, then correctness can be established via the loop invariant.

6. Describe what a recurrence equation is and how it is useful in the analysis of algorithms.

Recurrence equations are mathematical expressions that represent the current value of a sequence of values as a function of previous values and other terms. Because they depend on previous values, to determine a closed-from solution (equation) that solves the recurrence equation requires the initial conditions (or base cases). Recurrence equations are useful for analyzing the run-time complexity of recursive functions, including divide-and-conquer algorithms.

7. Describe how the linear search algorithm processes an array of values given a key (you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm.

Linear search goes through each element of the array and compares it with the key. Once a match is found, it returns the index where the key match is in the array. Otherwise, if no match is found, it returns -1 to indicate no match is found. For linear search, no characteristics of the data are used.

8. Describe how the binary search algorithm processes an array of values given a key ( you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm to perform as desired.

Binary search requires the data to be sorted (this is the characteristic used). It is a divide-and-conquer algorithm that uses the fact that the values sorted to skip to the (approximate) midpoint value and compares it with the key. If it matches, the (approximate) midpoint index is returned. Otherwise, if the key is smaller than the midpoint value, the binary search function is called on the left side of the array. If the key is larger than the midpoint value, the binary search function is called on the right side of the array. Recursively halving the size of the array to search with a constant factor of work to do at each function call gives a $O(\lg n)$ run time.

9. Describe the Towers of Hanoi problem and how it leads to exponential running time.

The Towers of Hanoi is a puzzle involving three ":towers" and $n$ disks of different radii, stacked on top of each other from largest (at the bottom) to smallest (at the top) on the first tower. The goal is to get all disks moved to the third tower (the destination), and stacked in the same manner as initialized, while following the rules. The rules of the puzzle require that only a single disk may be moved form the top of one tower and placed on another tower, and only smaller disks may be place don larger disks (no larger disk may be placed on a smaller disk). A recursive solution to the puzzle involves first moving $n-1$ of the disks to the middle tower, then moving the largest disk to the destination tower, and finally moving the $n-1$ disks form the middle tower tot he destination tower. This recursive solution requires two instances of the problem of size $n-1$, along with one extra move, which is what leads to the exponential number of moves (or running time).

10. Describe how the quick sort algorithm covered in class processes an array of values to sort them (you may assume the values are integers)

The quick sort algorithm covered in class is an in-place, divide-and-conquer algorithm that recursively partitions the array (and later subarrays) using a subroutine called Partition, which takes the last element, called the pivot, and finds the location where that element (the pivot) should be within the subarray in sorted order, places the pivot there, and then returns the index where the pivot is (in its correct position with respect to sorting). It does so by using two indexes, one that progresses through the subarray element-by-element that compares the pivot with each element in the array using this index. The second index is used to keep track of the location one to the left of where the pivot should go in the subarray, and starts one position to the left of the starting index of the subarray. The second index is only incremented in the case where the next element is less than or equal to the pivot, after which the element at the updated second index is swapped with the element at the first index. This ensures that the smaller (or equal) value that is encountered is swapped with one of the larger values that were passed over while the first index iterates through the subarray. Once the first index goes through all the elements (except the last since that is the pivot), the pivot is swapped with the value at the position of one past the second index, which places the pivot in the correct location in the subarray. After Partition is called, the quick sort algorithm is called recursively on the left side of the subarray (not including the pivot), and the right side of the subarray (again, not including the pivot), until the subarrays are of size 1 or empty.

11. Define the big O notation of $O(g(n))$ in your own words accurately.

$O(g(n))$ is the set of functions that asymptotically grow slower than a constant multiple of growth rate function $g(n)$. As such the function's in the set can be upper bound by a constant multiple of $g(n)$, asymptotically.

12. Define the big Omega notation of $\Omega(g(n))$ in your own words accurately.

$\Omega(g(n))$ is the set of functions that asymptotically grow faster than a constant multiple of growth rate function $g(n)$. As such the functions in the set can be lower bound by a constant multiple of $g(n)$, asymptotically.

13. Define the big Theta notation $\Theta(g(n))$ in your own words accurately.

$\Theta(g(n))$ is the set of functions that asymptotically grow within a constant multiple of growth rate function $g(n)$. As such the functions in the set can b tightly bound within two constant multiples of $g(n)$, asymptotically.

























