Date: 8th December 2023
Date Modified: 8th December 2023
File Folder: Week 15
#DSA1

***Good luck soldiers. May the God of DSA be merciful on this fine day***

```ad-important
As the one and true God of DSA said in His holy words:
- "No loop invariants or Formal Proofs on the Final"
- ✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟
```
# Algorithms

```ad-summary
title: Goals
- What is an algoithm? What makes a good algorithm?
- Understand growth rates of different functions and asymptotic notations
- Know, understand, and use $O, \Theta, \Omega$ definitions
- Know how to analyze the compelxity of random pseudocode funcitons by explicitly counting the number of times instructions are executed (could be with nested loops that are independent or dependent) or focusing on specific types of operations such as comparisons or arithmetic operations (or both).
- Given pseudocode, be able to describe what an algorithm is doing.
- Be able to write pseudocode for straightforward algorithms
```

## What Makes a Good Algorithm?

**Define what an algorithm is accurately in your own words.:**

An algorithm is a sequence of instructions that accomplishes a task.

**Describe what makes a good algorithm:**

A good algorithm should be correct (solves the problem accurately) and efficient (in terms of time and space complexity). Time complexity is captured by asymptotic runtime complexity and space complexity is captured by the amount of additional memory required to execute the algorithm.  Some algorithms for hard problems will tradeoff correctness (close enough by some metrics of distance in a vector space may be used) for efficiency. these are called approximation algorithms.

## Growth Rate of Different Functions and Asymptotic Notation

**Running Time Complexity**

| Algorithm                                                                                             | Summary                                                                                         | Best-Case         | Worst-Case       |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------- | ---------------- |
| Insertion Sort                                                                                        | $\Omega(n) \space \& \space O(n^2)$                                                             | $\Theta(n)$       | $\Theta(n^2)$    |
| Selection Sort                                                                                        | $\Theta(n^2)$                                                                                   | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Bubble Sort                                                                                           | $\Theta(n^2)$                                                                                   | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Merge                                                                                                 | $\Theta(n)$                                                                                     | $\Theta(n)$       | $\Theta(n)$      |
| Merge-Sort                                                                                            | $\Theta(n\lg n)$                                                                                | $\Theta(n\lg n)$  | $\Theta(n\lg n)$ |
| Binary Search                                                                                         | $\Omega(1) \space \& \space O(\lg n)$                                                           | $\Theta(1)$       | $\Theta(\lg n)$  |
| Linear Search                                                                                         | $\Omega(1) \space \& \space O(n)$                                                               | $\Theta(1)$       | $O(n)$           |
| Towers of Hanoi                                                                                       | $\Theta(2^n)$                                                                                   | $\Theta(2^n)$     | $\Theta(2^n)$    |
| Quick Sort                                                                                            | $\Omega(n \lg n) \space \& \space O(n^2)$                                                       | $\Theta(n \lg n)$ | $\Theta(n^2)$    |
| Insertion in Order Array                                                                              | $\Omega(1) \space \& \space O(n)$                                                               | $\Theta(1)$       | $\Theta(n)$      |
| Deleting a Node in a Balanced BST, given a node pointer to be deleted                                 | $\Omega(1)$ deleting a leaf node, & $O(\lg n)$ if deleting root and successor is farthest away  | $\Theta(1)$       | $\Theta(\lg n)   |
| Find Max Number in Balanced BST                                                                       | $\Theta( \lg n)$                                                                                | $\Theta(\lg n)$   | $\Theta( \lg n)$ |
| Find the max number in a full sorted array                                                            | $\Theta(1)$                                                                                     | $\Theta(1)$       | $\Theta(1)$      |
| Find the max number in a random linked list                                                           | $\Theta(n)$                                                                                     | $\Theta(n)$       | $\Theta(n)$      |
| Enqueue operation of the Queue built on a dynamic array (no size limit - can increase size if needed) | $\Omega(1)$ if the array did not fill up; $O(n)$ if the array needs to grow. Copies values over | $\Theta(1)$       | $\Theta(n)$      |
| Searching for a number in a linked list                                                               | $\Omega(1)$ if get lucky on the 1st one; $O(n)$ - not in linked list or last element            | $\Theta(1)$       | $\Theta(n)$      |
| Searching for a number in a balanced BST                                                              | $\Omega(1)$ get lucky at root; $O(\lg n)$ - not in BST                                          | $\Theta(1)$       | $\Theta( \lg n)$ |
| Insertion in balanced BST                                                                             | $\Theta(\lg n)$ - because balanced, lower levels have 2 children                                | $\Theta(\lg n)$   | $\Theta(\lg n)$  |
| Enqueue operation of Queue built on a linked list                                                     | $\Theta(1)$                                                                                     | $\Theta(1)$       |  $\Theta(1)$                |
| Searching for a number in a balanced BST                                                              | $\Omega(1)$ - get lucky at root; $O(n)$ - not there & traverse whole tree                       | $\Omega(1)$       | $O(n)$           |
| Push operation in Stack built on a linked list                                                        | $\Theta(1)$                                                                                     | $\Theta(1)$       | $\Theta(1)$      |                                                                                                      |                                                                                                 |                   |                  |

**Memory Complexity**

| Algorithm                | Summary                           | Best-Case   | Worst-Case  |
| ------------------------ | --------------------------------- | ----------- | ----------- |
| Insertion Sort           | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Selection Sort           | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Bubble Sort              | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Merge-Sort               | $\Theta(n)$                       | $\Theta(n)$ | $\Theta(n)$ |
| Binary Search            | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Static Stack Operations  | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Dynamic Stack Push       | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Dynamic Stack Pop & Peek | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| FIFO Queues              | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |

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

## Run-Time Function Definitions
### Big Theta Definition

$$\Theta(f(n))$$

```ad-summary
**Precisely** specifies growth rate
- Bubble Sort and Selection Sort have best-case and worst-case running times of the form:
	- $T(n) = An^2+Bn+C$
- Summarized as
	- $T(n) = \Theta(n^2)$
```

```ad-warning
When best case and worst case are **not** the same, a function can not be summarized by only one Big Theta Notation. It must be marked for both the best and worst case senario
```

$$\Theta(g(n)) = \{ f(n):\exists c_1, c_2 \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le c_1g(n) \le f(n) \le c_2g(n) \space\forall n \ge n_0\}$$

### Big O Notation

$$O(f(n))$$
```ad-summary
- Provides (worst-case) **upper bound** on growth rate:
	- Insertion sort is $0(n^2)$ in asymptotic run-time complexity
	- Captures that its worst-case running time is $\Theta(n^2)$
```

$$O(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le f(n) \le cg(n) \space\forall n \ge n_0\}$$

### Big Omega Notation

$$\Omega(f(n))$$
```ad-summary
- Provides (best-case) **lower bound** on growth rate 
	- Insertion sort is $\Omega(n)$ in asymptotic run-time complexity
	- Captures its **best-case running time is** $\Theta(n)$
```

$$\Omega(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le cg(n) \le f(n) \space\forall n \ge n_0\}$$
## Time-Complexity of Pseudocode Algorithms

### Total Running Time Calculation

- **Execution cost** of line $i$ in pseudocode, denoted by $C_i$
- **Size of the input** denoted by `int` $n$, which is usually large
- **Number of times** line $i$ is executed, denoted by $f_i(n)$
	- Dependent on $n$, and could depend on the scenario (best/worst/etc)
- **Run time spent executing line $i$** = $C_i * f_i(n)$
- Total Running Time, $T(n)$

$$T(n) = C)1 * f_1(n) + C_2 * f_2(n) + ... C_k * f_k(n) = \sum_{i=1}^{k} C_i * f_i(n)$$

### Straight-Through 

```
x <- 1
y <- 2
print x*y
```


| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | $1$          |
| $C_2$          | $1$            |
| $C_3$          | $1$                 |

**Constant**

Running Time: $C_1+ C_2+C_3$
### Single For-Loop

```
for i <- 1 to n-1
	x <- x+2
print x
```

| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | $n$            |
| $C_2$          | $n-1$            |
| $C_3$          | $1$                 |

```ad-summary
title: Running Time
$T(n) = \sum_{i=1}^3 C_i * f_i(n) = C_1n + C_2(n-2) + C_3$
	- $= (C_1+C+2)n + (C_3 - C_2)$
	- $= An + B$
```

**Linear**

### Running Time of a While-Loop (Search in a Linked List)

```
searchNode = head
while (searchNode NOT NULL AND searchNode.key NOT keyval) 
	searchNode = searchNode.next
reutrn searchNode // will be NULL if keyVal not found
```

| Cost  | # Times Best Case | # Times Worst Case |
| ----- | ----------------- | ------------------ |
| $C_1$ | 1                 | 1                  |
| $C_2$ | 1                 | $n+1$              |
| $C_3$ | 0                 | $n$                |
| $C_4$ | 1                 | 1                   |

```ad-check
title: Solution
- **Best Case**
	- $T(n) = C_1 + C_2 + C_4$
	- **Constant Run Time**
- **Worst Case**
	- $T(n) = C_1*1+ C_2(n+1) * C_3(n) + C_4*1$
	- $T(n) = (C_2+C_3)n + (C_1+C_2+C_4)$
	- **Linear Run Time**
```

```ad-note
Best case is when the searched node is at the head. Worst case is if it returns null
```

### Running Time for Independent Nested Loops

```
outerCount = 0
innerCount = 0
for i <- 1 to n
	outerCount++
	for j <- 1 to n 
		innerCount++
print outerCount
print innerCount
```

| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | 1                |
| $C_2$          | 1                |
| $C_3$          | $n+1$            |
| $C_4$          | $n$              |
| $C_5$          | $n^2 +n$         |
| $C_6$          | $n^2$            |
| $C_7$          | 1                |
| $C_8$          | 1                 |

```ad-important
For independent nested loops, it would run one time for every loop of the outer. That means it would run for $n$ times for $n$ times. 
```

```ad-check
title: Solution
$$T(n) = C_1 + C_2 + C_3(n+1) + C_4n + C_5(N^2+n) + C_6n^2 + C_7 + C_8$$
$$T(n) = An^2 + Bn + C$$
- **Quadratic Funciton**
```

### Running Time for Dependent Nested Loops

```
outerCount = 0
innerCount = 0
for i <- 1 to n
	outerCount++
	for j <- 1 to i
		innerCount++
print outerCount
print innerCount
```

| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | 1                |
| $C_2$          | 1                |
| $C_3$          | $n+1$            |
| $C_4$          | $n$              |
| $C_5$          | $\frac{n^2+3n}{2}$         |
| $C_6$          | $\frac{n(n+1)}{2}$            |
| $C_7$          | 1                |
| $C_8$          | 1                 |

```ad-important
Since it is dependent, the inner and outer loop are needed to be taken into cnsideration so:
$$1 + 2 + ... + n = \sum_{i=1}^n i = \frac{n(n+1)}{2}$$
```

```ad-note
For line 5: Run $1$ more time than the inner loop, for **each** value of the outer loop counter, so:
$$\sum_{i=1}^ni + \sum_{i=1}^n 1 = \frac{n(n+1)}{2}+n = \frac{n^2+3n}{2}$$
```

 ```ad-check
 $$T(n) = C_1 + C_2 C_3(n+1) + C_4(n) + C_5(\frac{n^2+3n}{2}) + C_6(\frac{n^2+n}{2}) + C_7 + C_8$$
 $$T(n) = (\frac{C_5+C_6}{2})n^2+(C_3+C_4+\frac{C_5}{2}+\frac{C_6}{2})n + (C_1+C_2+C_3+C_7+C_8) = An^2+Bn+C$
```

```ad-summary
***Dependent Nested For-Loops*** also ahve a *quadratic run time*
```

### Running Time for Insertion Sort Algorithm

```
Alg: INSERTION-SORT(A, n)
for j = 2 to n
	key = A[j]
	i = j-1
	while i > 0 and A[i] > key
		A[i+1} = A[i]
		i = i-1
	A[i+1] = key
```

| Execution Cost | # Times Executed       |
| -------------- | ---------------------- |
| $C_1$          | $n$                    |
| $C_2$          | $n-1$                  |
| $C_3$          | $n-1$                  |
| $C_4$          | $\sum_{j=2}^n t_j$     |
| $C_5$          | $\sum_{j=2}^n (t_j-1)$ |
| $C_6$          | $\sum_{j=2}^n (t_j-1)$ |
| $C_7$          | $n-1$                       |

```ad-important
Since the state of the while loop conditon dpends on the **array's input**, ***DEFINE*** the number of times the while-llop executes to $t_j$. Since $j$ starts at 2 and incrmenets up to value $n$, the given summation, $\sum_{j=2}^n t_j$, represents how many times the line *may* execute.
```

```ad-check
title: Solution
- How many values does the outer loop counter $j$ take on?
	- $n-1$
- Let $t_j$ be defiend as the number of times the **while header executes** for each $j$
	- $1 \le t_j \le j$
	- Note: $i$ would take on $j$ values if the **worse case happens. It will take on 1 if the **best case** happens
- Thus, the total number of times the while loop executes header executes **given** $t_j$ where:
	- $t_2+ t_3 + t_4 + ... + t_n$
	- $\sum_{j=2}^n t_j$
- **AND**, the inner loop body:
	- $(t_2-1) + (t_3-1) + ... + t(t_n-1) = \sum_{j=2}^n(t_j-1) = \sum_{j=2}^n t_j - (n-1)$
- Find execution cost:
	- $T(n) = C_1n + C_2(n-1) + C_3(n-1) + C_4 \sum_{j=2}^n t_j + C_5 \sum_{j=2}^n(t_j-1) + C_6 \sum_{j=2}^n (t_j-1) + C_7(n-1)$
```

#### Best-Case

If the array is already sorted in ascending order, such that $t_j \equiv 1$

Line 4:
$$\sum_{j=2}^n t_j = \sum_{j=2}^n 1 = n-1$$

Line 5:
$$\sum_{j=2}^n (t_j-1) = \sum_{j=2}^n(1-1) = 0$$

```ad-important
Thus, the running time for the **best case** will be:
$$T(n) = C_1n + C_2(n-1) + C_3(n-1) + C_4(n-1) + C_7(n-1)$$
$$=(C_1+C_2+C_3+c+4+C_7)n$$
$$T(n) = An + B$$ Linear run time, which is the *best case* for **all sorting algorithms**
```

#### Worst-Case

Occurs when the inner while loop body runs until $i>0$ condition causes it to exit. This would occur every time, the next element to place is the smallest among the elements. **The array would be sorted in descending order with unique values**
- $t_j = 1-1+1 = j$

```ad-important
THus, the running time for the **worst case** will be:
$$T(n) = C_1n+C_2(n-1)+C_3(n-1)+C_4 \sum_{j=2}^n j + C_5 \sum_{j=2}^n (j-1) + C_6 \sum_{k=2}^n (j-1) + C_7(n-1)$$
$$T(n) = C_1n+C_2(n-1)+C_3(n-1) + C_4(\frac{n^2+n-2}{2})+ C_5(\frac{n^2-n}{2}) + C_6(\frac{n^2-n}{2}) + C_7(n-1)$$
$$T(n) = (\frac{C_4+C_5+C_6}{2})n^2 + (C_1 +C_2+C_3+C_7 + \frac{C_4-C_5-C_6}{2})n - (C_2+C_3+C_4+C_7)$$
**QUADRATIC RUN TIME BITCHESSS**
```

```ad-note
The first arithmetic sum would be one less than usual such that:
$$\sum_{j=2}^n j = 2 + 3 + ... + n = \frac{n(n+1)}{2} - 1 = \frac{n^2+n-2}{2}$$
```

```ad-note
The second and third arithmetic sum would be subract 1 *from every value* of $j$ such that:
$$\sum_{j=2}^n (j-1) = \frac{n^2+n-2}{2} - (n-1) = \frac{n(n-1)}{2}$$
```

### Running Time of a Function that Calls Another Function

~~~
function1(n) {
1. for i = n down to 1
2.     for j = 1 up to i
3.        test(n)
}

test(n) {
4. r = 1;
5. for p = 1 to n, updating p as p*=2
6.    r = r*n
7. print r
}
~~~

| Execution Cost | # of Times Executed    |
| -------------- | ---------------------- |
| C1             | $n+1$                    |
| C2             | $tj+n$ or $\frac{(n(n+1))}{2} + n$ |
| C3             | $tj$ or $\frac{(n(n+1))}{2}$       |

| Execution Cost | # of Times Executed |
| -------------- | ------------------- |
| C4             | $1$                 |
| C5             | $[\lg n] + 2$       |
| C6             | $[\lg n] + 1$        |
| C7             | $1$                 |
(the brackets around log n is called a floor function that rounds down)

### Running Time HW # 5 - 4

```
funcitonD(Array A, int n)
	for i = 1 to n
		for j = n down to 1
			print A[j]
```


| Execution Cost | # of TImes Executed |
| -------------- | ------------------- |
| $C_2$          | $n+1$               |
| $C_3$          | $n^2+n$             |
| $C_4$          | $n^2$                    |

```ad-warning
$i = 1 \to^+ n$ and $i = n \to^- 1$ are both $n+1$
```

### Running Time HW # 5 - 5

```ad-danger
TAKE IT THE FUNCTION AS ITS OWN RUNNING TIME
```

```
funcitonE(n)
	for i = n down to 1
		for j= 0 to i -1
			test(n);

test(n)
	r = 1;
	for p = 1 to n
		r = r *n;
	print r
```

| Execution Cost | # Times Executed   |
| -------------- | ------------------ |
| $C_2$          | $n+1$              |
| $C_3$          | $\frac{n^2+3n}{2}$ |
| $C_4$          | $\frac{n(n+1)}{2}$ |

```ad-check
title: Solution
$$T(n) - n^2(\frac{C_3+C_4}{2}) + n(C_2 + \frac{3C_3+C_4}{2}) + C_2$$
**Quadratic**
```

| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_7$          | $1$              |
| $C_8$          | $n+1$            |
| $C_9$          | $n$              |
| $C_10$         | $1$                 |

```ad-check
title: Solution
$$ T(n)=n(C_8+C_9) + C_7 + C_8 + C_10$$
**LINEAR**
```

### Bubble Sort Running Time

```
BUBBLE-SORT(A, n)
for j <- 1 to n-1
	for i <- 1 to n-1
		if A[i] > A[i+1]
			exchange A[i] <-> A[i+1]
```

| Execution Cost | # Times Executed       |
| -------------- | ---------------------- |
| $C_2$          | $n^2-n$                |
| $C_3$          | $n^2-1$                |
| $C_4$          | $\sum_{j=1}^{n-1} t_j$ |

```ad-check
title: Solution
$$T(n) = (C_2+C_3)n^2+C_1n+C_4 \sum_{j=1}^{n-1}(t_j) + C_3$$
```

#### Best Case

When the list is already sorted in ascending order. Thus, $C_3$ will always execute as it always has to check the condition. However $C_4$ will never execute as `A[i]` will always be less than `A[i+1]`.

```ad-check
title: Solution
$$T(n) = n^2(C_2+C_3)+n(C_1-c_2-2C_3) - C_3$$

**Quadratic**
```

#### Worst Case

The list would have to be sorted in *descending* order with every single value being **unique**. If this happens, the if statement would run for the standard arithmetic series of $t_j = \frac{n(n+1)}{2}$

```ad-check
title: Solution
$$T(n) = n^2(C_2+C_3+\frac{C_4}{2})+n(C_1-C_2-2C_3-\frac{C_4}{2})+C_3$$
**Quadratic**
```

### Selection Sort Running Time

```
SELECTION-SORT(A,n)
for j <- to n-1
	smallest <- j
	for i <- j+1 to n
		if A[i] < A[smallest]
			smallest <- i
```

| Cost  | # Times               |
| ----- | --------------------- |
| $C_1$ | $n$                   |
| $C_2$ | $n-1$                 |
| $C_3$ | $\frac{n^2+n-2}{2}$   |
| $C_4$ | $\frac{n(n-1)}{2}$    |
| $C_5$ | $\sum_{j=1}^{n-1}t_j$ |
| $C_6$ | $n-1$                      |

```ad-check
title: Solution
$$T(n) = n^2(\frac{C_3+C_4}{2}) + n(C_1 + C_2 + \frac{C_3-C_4}{2}+C_6) - C_2-C_3-C_6 + C_5 \sum_{j=1}^{n-1}t_j$$
```

#### Best Case

An array that is already sorted in *ascending* order. Only the line $C_5$ would never execute as the current will never be smaller than the rest of the list. Thus:

$$\sum_{j=1}^{n-1}t_j = 0$$

```ad-check
title: Solution
$$T(n) = n^2(\frac{C_3+C_4}{2}) + n(C_1 + C_2 + \frac{C_3-C_4}{2}+C_6) - C_2-C_3-C_6 + C_5$$
**Quadratic**
```

### Mystery Function from HW 7

```c++
int mystery1 (int A[], int n) {
	int temp = 0;
	int i, j;
	for (i=0; i < n; i++) {
		for (j=1i+1; i < n; j++) {
			if (abs(A[j]-A[i]) > temp) 
				temp = abs (A[j]=A[i]); 
		}
		return temp;
	}
}
```

| Cost  | (Worst Case) # Times               |
| ----- | --------------------- |
| $C_1$ | $1$                   |
| $C_2$ | $1$                 |
| $C_3$ | $n+1$   |
| $C_4$ | $\sum_{j=1}^n j =\frac{n(n+1)}{2}$    |
| $C_5$ | $\sum_{j=1}^{n-1}j$ = $\frac{n(n-1)}{2}$|
| $C_6$ | $\sum_{j=1}^{n-1}j$ = $\frac{n(n-1)}{2}$               |
| $C_7$      |  $1$                     |

$$T(n) = c_1+c_2+C_3(n+1)+(\frac{c_4}{2})(n^2+n)+(\frac{c_5}{2})(n^2-n) + (\frac{c_6}{2})(n^2-n)+c_7$$
$$\therefore T(n) = O(n^2)$$

### Merge and Merge-Sort Pseudocode 

```ad-question
Using the Merge and Merge-Sort pseudocode below, develop a recurrence equaiton to express the atomic insturciton run time $T(n)$ for Merge-Sort by doing the following:
1. Complete the tabe below with the number of times atomic are executed per line. It is ok to write #times of for-loops based on $n_1$ and $n_2$. Sume the isntructions in the table as a funciton of $n$ using $n_1+n_2 = n$. Threat an array delcaration as an atomic instruction.
2. Use the Merge-Sort pseudocode to determine the number of atomic instructions that is executed in the base case ($n=1$). This is the value we use for $T(1)$
3. Determine the overhead function $f(n)$ for the case $n > 1$ using your answer from part (a) and the pseudocode of Merge-Sort. That is, how many atomic instructions are executed outside of the recursive funciton calls when $n>1$? Note: The Merge funciton call can be counted as one additional atomic insturciton beyond the number attained from part (a).
4. Write the recurrence equaiton describing $T(n)$ of Merge-SOrt for the case $n > 1$ Hint: Treat each recursive funciton call as halving the size of the problem, $n$.
5. Sovle the recurrence equaiton using Master Method.
```

```ad-note
This is assuming that:
- $n = r-p+1$
- $n_1+n_2 = n$
```

```
MERGE(A, p, q, r)
n1 = q-p+1
n2 = r-q
let L[1..n1 + 1] and $[1.. n2 + 1] be new arrays
for i = 1 to n2
	L[i] = A[p+i-1]
for j=1 to n2
	R[j]=A[q + j]
L[n1 + 1] = infinity
R[n2 + 1] = infinity
i = 1
j = 1
for k = p to r
	if L[i] <= R[j]
		A[k] = L[i]
		i = i + 1
	else A[k] = R[j]
		j = j+1
```

```
MERGE-SORT(A, p, r)
if p < r
	q = [(p+r)/2]
	MERGE-SORT(A, p, q)
	MERGE-SORT(A, q+1, r)
	MERGE(A, p, q, r)
```

**Part 1:**

| Line # | # Times Atomic Instructions are Executed |
| ------ | ---------------------------------------- |
| 1      | $1$                                      |
| 2      | $1$                                      |
| 3      | $2$                                      |
| 4      | $n_1+1$                                  |
| 5      | $n_1$                                    |
| 6      | $n_2+1$                                  |
| 7      | $n_2$                                    |
| 8      | $1$                                      |
| 9      | $1$                                      |
| 10     | $1$                                      |
| 11     | $1$                                      |
| 12     | $n+1$                                    |
| 13     | $n$                                      |
| 14     | $n_1$ (about $n/2$ times)                |
| 15     | $n_1$ (about $n/2$ times)                |
| 16     | $n_2$ (about $n/2$ times)                |
| 17     | $n_2$ (about $n/2$ times)                                         |

**Part 2:**

$T(1) = 1$ (just the if statement of Line 1, since $p=r$ here)

**Part 3:**

$f(n) = 3 + \space merge \space = 3 + 11 + 6n = 14 6n$

**Part 4:**

$$\begin{bmatrix} T(n) = 2T(\frac{n}{2})+6n+14 \\ T(1)=1\end{bmatrix}$$

**Part 5:**
$$a=2, b=2 \Rightarrow n^{\log_2 2}=n^1 = leaf \space nodes$$

$f(n) = \Theta(n)$, so this is Case 2; so $T(n) = \Theta(n \lg n)$
# Sorting

```ad-summary
title: Goals
- Understand how different soritng algorithms work.
	- Given a list of nubmers, you should be able to show how soritng algorithms will sort this list step by step.
- How to anlyze the time complexity for each algorithm; best case, average case, and worst case. Also know these time complexities for each sorting algorithm (best case, average case, worst case)
- Know the best-case, worst-case, and average-case scenarios and asymptotic run-time coplexities for the sorting algorihts; aslo know whether each is in-place or not
	- Quicksort, insertion sort, bubble sort, and selection sort are in-place, but merge sort is not
- How to implement each algorithm; i.e. write C++ code for it.
```

## Bubble Sort

For every loop, the inner loop will compare the current position with the next position and **swap** if it is greater. It will continue to do this starting from the beginning of the loop every time one time for every element within the array.

![[Drawing 2023-10-19 14.32.30.excalidraw.png]]

```c++
#include <iostream>
using namespace std;
// funciton delcaration (aka prototype)##
void bubbleSort(int A[], int n)

int main {
// blah blah blah
}

void bubbleSort(int A[], int n) {
	int temp;
	for (int i = 0; i < n-1; i++) {
		for(int j = 0; j < n-1; j++) {
			if (A[j] > A[j+1]) {
				temp = A[j];
				A[j] = A[j+1];
				A[j+1] = temp;
			}
		}
	}
}
```

## Insertion Sort

**Initialization**: Given input sequence: $< a_1, a_2, ..., a_n>$
- Sorted: $<a_1>$
- Unsorted: $<a_2,...,a_n>$
- Inserts next element from the unsorted subsequence into the correct spot of the sorted subsequence, shifting element rightward, as we move leftward
- Increasing size of sorted subsequence while decreasing size of unsorted subsequence by 1.


```ad-note
- In-place sorting
- Need to  copy over elements with arrays
- Linked List Implementation
	- Indices become node pointers
	- **need** doubly linked list
	- Remove entire key node and reinsert rather than copying it
	- Don't need to copy over elements with leftward moving pointer. Simply insert the key node where appropriate.
```

```ad-summary
title: Steps For Insertion Sort
Use shading to indicate comparisons done in the inner loop, vertical arrows to indicate the key stored for placement in the outer loop iteration, and single arcs to indicate shifts (above) and new placement of the key (below)
```


![[Pasted image 20231019181137.png]]


```c++
#include <iostream>
using namespace std;

// funciton declaration (aka prototype):
void insertionSort(int A[], int n); // A == array pointer, n == A.length

void insertionSort(int A[], int n) {
	for (j = 1; j<n; j++) {
		key = A[j]; //store key value at j
		i = j-1; // set i just to left of j
		while (i >= 0 && A[i] > key) { // if i become -1,, off the list/array
			A[i+1] = A[i]; //copy A[i] to the right
			i--; //move i to the left
		}
		A[i+1] = key; // i+1 is the spoit to insert the key and if i=-1, it is the front at 0
	}
}
```

## Selection Sort
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

```ad-summary
title: Steps to Sorting Using Selection Sort
Use a vertical arrow to indicate the index under consideration in the outer loop iteration, shading to indicate comparisons done in the inner loop, and double arcs to indicate swaps.
```

![[Pasted image 20231019181451.png]]
![[Pasted image 20231019181503.png]]

```c++
void SelectionSort(A[n], n) {
	for (int i = 0; , i < n; i++) {
		smallest = i;
		for(int j = i; i < n; j++) {
			if (A[j] < A[smallest]) {
				smallest = j;
			}
		}
		int temp = A[i];
		A[i] = A[smallest];
		A[smallest] = temp;
	}
}
```

## Merge Sort


```ad-note
- $p$ = first index of sub array
- $r$ = last index of subarray
- $q$ = "Middle" index
$$q = \lfloor{\frac{p+r}{2}}\rfloor$$
```

### Pseudocode & Code for Merge Sort

```
MERGE-SORT(A, p, r)
if p < r
	q = floor((p+r)/2) // Base case is p = r
	MERGE-SORT(A, p, q)
	MERGE-SORT(A, q+1, r)
	MERGE(A, p, q, r)
```

```c++
void mergeSort(int A[], int p, int r){  
	if (p<r){  
		int q = (p+r)/2; // integer division rounds down as floor  
		mergeSort(A, p, q);  
		mergeSort(A, q+1, r);  
		merge(A, p, q, r);  
	}  
}
```

Merge-Sort(A, p, r)
- If array has more than 1 element
	- Find "near midpoint"
	- Divide the input array into two halves
	- Sort each half separately
	- Combine the two using another routine (merge)

### Pseudocode & Code for Merge 


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

```c++
void merge(int A[], int p, int q, int r){  
	int n1 = q-p+1;  
	int n2 = r-q;  
	int i, j;  
	int* L = new int[n1+1];  
	int* R = new int[n2+1];  
	for (i=0; i<n1; i++)  
		L[i]=A[p+i];  
	for (j=0; j<n2; j++)  
		R[j]=A[q+1+j];  
	int maxAval = maxVal(A, p, r);  
	L[n1]=maxAval+1;  
	R[n2]=maxAval+1;  
	i=j=0;  
	for (int k=p; k<=r; k++){  
		if (L[i] <= R[j])  
			A[k]=L[i++];  
		else A[k]=R[j++];  
	}  
	delete[] L;  
	delete[] R;  
}  
int maxVal(int A[], int p, int r){  
	int maxA = A[p];  
	for (int i=p+1; i<=r; i++){  
		if (A[i]>maxA)  
			maxA = A[i];  
		}  
	return maxA;  
}
```

![[Pasted image 20231101082736.png]]

![[Pasted image 20231116103310.png]]

### Recurrence Equation

Merge will overwrite all $n$ values of the array in the last step, so $f(n)=n$. There are two calls to merge sort, and merge-sort is called twice each with input as basically half the size. The base case is with singleton values ($n_b=1$) and no values are overwritten in this case, so $T(1)=0$. Overall, we have:

$$T(n)=2T(\frac{n}{2})+n; \space \space \space T(1)=0$$
#### Master Method

Since we have $a=2, b=2$, so $\log_b a = \log_2 2 = 1$ and $n^{\log_b a} = n$. Thus, $f(n) = \Theta (n^{\log_b a})$, which is Case 2 of the Master Theorem, so $\Theta(T(n)) = \Theta(n \lg n)$

#### Substitution Method

Assume that $n=2^k$ and write a few values of the recurrence equation as:

$$T(2^k) = 2T(2^{k-1})+2^k$$
$$T(2^{k-1}) = 2T(2^{k-2})+2^{k-1}$$
$$T(2^{k-2}) = 2T(2^{k-3})+2^{k-2}$$

Substitute to find the pattern:

$$T(2^k)= 2T(2^{k-1}) +2^k$$
$$= 2[2T(2^{k-2}+2^{k-1}]+2^k$$
$$=2[2[2T(2^{k-3}+2^{k-2}]+2^{k-1}]+2^k$$
$$=2^3T(2^{k-3})+(3)2^k$$

Find Pattern

$$T(2^k)=2^iT(2^{k-i})+i*2^k$$
For base case, $T(1) = 0$, we let $i=k$, to get (note that $n=2^k$)
$$T(2^k) = 2^kT(1)+k*2^k=kn$$
But, with $n-2^k$, take the $\lg$ of each side to get $k=\lg n$, so:
$$T(n)=n\lg n$$
so
$$T(n) = \Theta(n \lg n)$$

## Quick Sort

```ad-summary
**Divide:**: Partition the subarray $A[p..r]$ into two subarrays $A[p..q-1]$ and $A[q+1..r]$ such that:
- Each value in $A[p..q-1] \le A[q]$ (pivot)
- Each value in $A[q+1..r] \ge A[q]$ (pivot)

**Conquer**: Sort the two subarrays by recursive function calls to quicksort

**Combine**: The subarrays are sorted in place, so no additional work is needed!

```


```ad-note
- `i` is the loop counter that is keeping track of where to place the pivot
- Swaps the pviot location's value with the value @ `i+1`
```

![[Pasted image 20231115082313.png]]


![[Drawing 2023-11-15 08.17.48.excalidraw]]

![[Pasted image 20231115082434.png]]


### Example 1: Quicksort Average-Case Example

```ad-question
Demonstrate the steps of quicksort on the array given below
- (Notice how the pivot is a value in the middle of the range of values in the array)
![[Pasted image 20231115083301.png]]
```

![[Pasted image 20231115083312.png]]


### Example 2: Worst-Case Example

```ad-question
Demonstrate the steps of quicksort on the array given below:
![[Pasted image 20231115083431.png]]
```

![[Pasted image 20231115083509.png]]

### Pseudocode

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

### Code

```c++
void quickSort(int arr[], int p, int r) {
	if (p < r)
		//Partition the array and get the pivot index
		int q = partition(arr, p, r);
		
		//Recursively sort the subarrays on both sides of the pivot
		quickSort(arr, p, q - 1);
		quickSort(arr, q + 1, r);
}
```

```c++
int partition(int arr[], int p, int r) {
	int pivot = arr[r]; //Choose the rightmost element as the pivot
	int i = p - 1; //Index of the smallest element
	int tmp;
	for (int j = p; j < r; j++) {
		//If the current element is smaller than or equal to the pivot
		if (arr[j] <= pivot) {
			i++;
			tmp = arr[i];
			arr[i] = arr[j];
			arr[j] = tmp;
		}
	}
	tmp = arr[i+1] //Swap the pivot element witht he element at (i+1)
	arr[i+1] = arr[r];
	arr[r] = tmp;
	return i+1; // return the pivot index
}
```
### Recurrence Equations

#### Best Case

```ad-important
Pivot is always in the middle of the range of vlaues of the subarray
- Splits the subarrays evenly into two equal sizes
```

$$T(n) = 2T(\frac{n}{2})+ \Theta(n)$$
**Master Method (case 2) gives**:
$$T(n) = \Theta(n \lg n)$$

#### Worst Case

```ad-important
Pivot is always the largest/smallest value in the range of values
- Only reduces size by one
```

$$T(n) = T(n-1) + \Theta(n)$$

**Use substitution along with upper or lower bound for $f(n)$**

$$T(n) \le T(n-n) + c_2(\sum_{i=1}^n i) = \Theta(1) + c_2(\frac{n^2+n}{2})$$
**And**
$$T(n) \ge \Theta(1) + c_1(\frac{n^2+n}{2})$$
$$\therefore T(n)=\Theta(n^2)$$
# Divide-and-Conquer

```ad-summary
- Use the substitution method or master method to sovlve recurrences. If master method applies, you will be allowed to use it.
- Given pseudocode or C++ code for a recursive funciton, you should be able to write a recurrence equaiton that describe this function.
- Given a recurrence equation for a random divide-and-conquer algorihtm, you should be able to describe the behavior of theat divide-and-conquer algorithm.
```

## Recurrence Equations


```ad-summary
title: Definition
Mathematical expressions that describe the relationship between the current value and previous values in a sequence of values.
```

**For incremental**
$$T(n) = aT(n-1) + f(n); \space \space \space T(n_b) = f_b(n)$$
```ad-note
- $T(n)$ is the reqcurrence equation
- $T(n_b) = f_b(n)$ is the base conditoin
```

- Common to ignore execution cost and focus on counting instructions
- Constant multiples can be ignored for asymptotic complexity

**For divide and conquer**
$$T(n) = aT(\frac{n}{b}) + f(n); \space \space \space T(n_b) = f_b(n)$$

### Substitution


```ad-summary
title: Steps
1. Write out the recurrence equation for a few cases of smaller inputs, based on the trend of shrinking $n$
2. Substitute the equations into the $T(n)$ recurrence equation
3. Formulate the trend or the pattern we see with each equation
4. Use the base case to bottom out the recursion and simplify for the closed form solution
```

#### Example: Incremental Recursion 1


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

#### Example: Incremental Recursion 2

```ad-question
Use the substitution method to solve the following recurrence. Show all steps in your answer!

$$T(n)=T(n-2)+11; \space \space \space T(0)=1$$
```

We assume $n$ is even so that:

**Write out shrinking values while substituting**

$$T(n) = T(n-2)+1$$
$$=T(n-4) + 1 + 1$$
$$=T(n-6)+1+2 = T(n-6)+3$$
$$=T(n-8)+1+3=T(n-8)+4$$

**Formulate Pattern**

$$T(n)=T(n-i) + \frac{i}{2}$$

**Replace with $i=n$ to get base case:

$$=T(n-n) + \frac{n}{2} \Rightarrow T(n) = T(0)+ \frac{n}{2}$$
$$T(n) = 1 + \frac{n}{2}$$
$$\therefore T(n)=\Theta(n)$$
#### Example: Towers of Hanoi

**Recursive Equation**
$$T(n) = 2T(n-1)+1$$
$$T(0) = 0$$

**Solve Equation Using Substitution Method**


1. Write out several instances of the recurrence equation on smaller input
$$T(n-1)=2T(n-2)+1$$
$$T(n-2)=2T(n-3)+1$$
2. Substitute
$$T(n) = 2T(n-1)+1$$
$$2[2T(n-2)+1)]+1$$
$$2[2[2T(n-3)+1]+1]+1$$
$$2^3T(n-3) +2^2*1 + 2^1*1+2^0*1$$

3. In terms of $i$
$$T(n) = 2^iT(n-i) +2^{i-1}*1 + 2^{i-2}*1+...+2^1*1+2^0*1$$
$$T(n) = 2^iT(n-i) + \sum_{j=0}^{i-1}2^j$$
$$\sum_{j=0}^{i-1}2^j = 2^i-1$$
$$T(n) = 2^iT(n-i) + 2^i-1$$
4. Bottom out with $n$

Because base case: $T(n) = 2^nT(0) + 2^n-1$$

$$T(n) = 2^n-1$$
$$T(n) = \Theta(2^n)$$
```ad-note
This is exponential growth
```


### Geometric Sum

When a sequence of values has a constant of proportionality factor between one term and the next, it is called a **geometric progression**
- Ratio of one term and previous $\frac{2^{i+1}}{2^i} =2$
- Constant proportionality factor = 2
 $$2^0+2^1+2^2+2^3+...+2^{k-1}+2^k= \sum_{i=0}^k 2^i = 2^k -1$$

#### General Case

$$c(1+a+a^2+...+a^{n-1}+a^n) = \sum_{i=0}^n c(a^i) = c(\frac{1-a^{n-1}}{1-a}); \space \space \space a \ne 1$$

```ad-example
Let $a=10, c=9 \space \& \space n = k-1$:
$$9 * \sum_{i=0}^{k-1} 10^i = 9 * (\frac{1-10^{(k-1)+1}}{1-10}) = (\frac{1-10^k}{-1}) = 10^k-1$$
```

#### Formula at Infinity

$$c(1+a+a^2+...+a^{n-1}+a^n+...) = \sum_{i=0}^\infty c(a^i)=c(\frac{1}{1-a})$$
```ad-important
The top term $(-a^{n+1})$ converges if $|a| < 1$ as $n \to \infty$
```

#### Example 1: Geometric Progression Recurrence Equation via Substitution

```ad-question
SOlve the recurrence equation below via substituion method using the geometric sum:
$$T(n) = 3T(n-1)+5; \space \space \space T(0) = 1$$
```

1. Write out a few cases of the equation
$$T(n-1)=3T(n-2)+5$$
$$T(n-2)=3T(n-3)+5$$
2. Sub the equations
$$T(n) = 3T(n-1)+5$$
$$=3[3T(n-2)+5]+5$$
$$=3[3[3T(n-3)+5]+5]+5$$
3. Discern a pattern
$$T(n) = 3^3T(n-3)+3^2*5+3^1*5+3^0*5$$
4. Write the pattern for general value $i$
$$T(n) = 3^iT(n-i)+3^{i-1}*5+3^{i-2}...*3^0*5$$
$$=3^iT(n-i) + 5\sum_{j=0}^{i-1}3^j$$
5. Apply the Geometric Sum Formula

$$With \space n=i-1, c=5, a=3$$
$$T(n) = 3^i(n-i)+5(\frac{1-3^i}{1-3})$$
$$=3^iT(n-i) + 5(\frac{1-3^i}{-2})$$
$$=3^iT(n-1)+2.5(3^i-1)$$

6. Get base case by solving for $i=n$

$$T(n) = 3^nT(n-n)+2.5(3^n-1)$$
$$=3^nT(0)+2.5(3^n-1)$$
$$=3^n(1)+2.5(3^n-1)$$
$$=3^n+2.5*3^n-2.5$$
$$T(n) = (3.5)3^n-2.5$$
$$\therefore T(n) = \Theta(3^n)$$

#### Example 2: Division Within the Problem

$$T(n)=2T(\frac{n}{2})+n^2, \space \space \space T(1)=1$$
```ad-important
In general for divide-and-conquer such that $T(n) = aT(\frac{n}{b}) + f(n)$; Let $n=b^k$
```

1. Write out a few instances
$$T(2^k) = 2T(2^{k-1}) + (2^k)^2$$
$$T(2^{k-1}) = 2T(2^{k-2}) + (2^{k-1})^2$$
$$T(2^{k-2}) = 2T(2^{k-3}) + (2^{k-2})^2$$
2. Substitute
$$T(2^k) = 2[2T(2^k{-2})+ (2^{k-1})^2]+(2^k)^2$$
$$= 2[2[2T(2^{k-3})+(2^{k-2})^2]+(2^{k-1})^2] + (2^k)^2$$
3. Pattern:
$$T(2^k) = 2^3T(2^{k-3})+2^2(2^{k-2})^2+2^1(2^{k-1})^2+2^0(2^k)^2$$
$$2^3T(2^{k-3})+\sum_{j=0}^{3-1}2^j(2^{k-j})^2$$
4. In general for $i$
$$T(2^k) = 2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j(2^{k-j})^2$$
```ad-note
Since it is not in terms of the geometric sum, rewrite it for a better sum
```
$$T(2^k) = 2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j*4^{k-j}$$
$$=2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j+4^k(\frac{1}{4})^j *4^{k-j}$$
$$T(2^k) = 2^iT(n^{k-1})+4^k\sum_{j=0}^{i-1} (\frac{1}{2})^j$$
5. Geometric Sum
$$=2^iT(2^{k-i})+4^k(\frac{1-\frac{1}{2}^i}{1-\frac{1}{2}})$$
$$=2^i(2^{k-i})+2*4^k(1=1\frac{1}{2}^i)$$

6. For base case, let $i=k$ (since $k-i=0$  when $i=k$)

$$T(2^k) = 2^kT(2^0) +2*4^k(1-(\frac{1}{2})^k)$$
```ad-note
Use the following the simplify:
$$\frac{1^k}{2^k} = \frac{1}{n}$$
```
$$=n(1) +2 *(2^{k})^2(1-\frac{1}{n})$$
$$=n+2n^2(1-\frac{1}{n})$$
$$=n+2n^2-2n$$
$$=2n^2-n$$
$$\therefore T(n) = \Theta(n^2)$$

### Master Method

ON CHEAT SHEET :3
### Example - Case 1

```ad-question
APply the Masster Theorem to determine the run-time complexity of the algorithm with recurrence equation:
$$T(n) = 8T(\frac{n}{2}) + 1000n^2$$
```

$a = 8, b = 2$, so you can calculate # leaf nodes:

$$\log_b a = log_2 8 = 3$$
$$leaf \space nodes = n^{log_b a} = n^3$$

$$f(n) = O(n^{log_b a-\epsilon}) = O(n^{3-1}), \space where \space  \epsilon =1$$

Leaf node work dominates polynomial, so case 1 applies, and $T(n) = \Theta (n^3)$

### Example - Case 2

$$T(n) = 2T(\frac{n}{2}) + 10n$$Given $a =2, b=2$:

$$log_b a = log_2 2 = 1$$
$$leaf \space nodes = n^1$$

$$f(n) = 10n = \Theta(n^1)$$

**Because they are the same, case 2 applies:**

$$T(n) = \Theta(n * \lg n)$$
### Example - Case 3

## Example

```ad-question
Apply the Masster Theorem to determine the run-time complexity of the algorithm with recurrence equation:
$$T(n) = 2T(\frac{n}{2}) + n^2$$
```

**Solve # leaf nodes**

$$leaf \space nodes = n^{\log_b a} = n^1$$

**Since $f(n) = n^2$**

$\epsilon = 1$  in $f(n) = \Omega(n^{\log_b (a+\epsilon)}) = \Omega(n^{1+1} \Omega(n^2)$

**Lokis like case 3, but need to check regularity condition**

$$Level \space 1 \space overhead \le fraction \space * \space Level \space 0 \space overhead$$

$$af(\frac{n}{b}) = r f(n)$$
$$2f(\frac{n}{2}) = 2(\frac{n}{2})^2 = 0.5 n^2$$
$$r = 0.5 \epsilon(0, 1)$$
```ad-note
$r$ is an element of the interval from 0 to 1 (not inclusive)
```

**Thus:**
$$T(n) = \Theta(f(n)) \Rightarrow T(n)=\Theta(n^2)$$

# Binary Search and Linear Search

```ad-summary
title: Goals
- Know how binary search & linear search algorithms work.
- Know the itme coplexity for binary search and lienar search algoirthms (best-case vs. worst-case)
- Know how to write and solve recurrence equations to describe the behavior of binary search algorithm.
- Know how to implement binary and linear seach algoirthms in C++
```


## Solving for Binary Search Given Array

![[Pasted image 20231106082719.png]]
### Example

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

## Recurrence Equation for Binary Search

#### Best Case N/A!

If the value is in the middle, it returns it right away, thus $T(n)=\Omega(1)$

#### Worst-Case

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
Need to relate $k$ to $n$ using $n=2^k-1$

$$n+1 = 2^k$$
$$\lg(n+1) = \lg(2^k)=k$$
$$\therefore T(n) = \lg(n+1)$$
```ad-note
$$\lg(n+1) = \Theta(\lg(n))$$
```

**Lower Bound**:

$$n < n+1 \space \space \space \space \space \forall n \ge 1$$
$$\lg n < \lg(n+1)$$
**Upper Bound**:

$$n+1 < n^2 \space \space \space \space \space \forall n \ge 2$$
$$\lg(n+1) < \lg(n^2)$$
$$\lg(n-1) < 2 \lg(n)$$
**Combined Big Theta  Equation**:

$$\therefore \lg n \le \lg(n+1) \le 2 \lg(n) \space \space \space \space \space \forall n \ge 2$$
$$T(n) = \Theta(\lg(n))$$
```ad-important
Binary Search is $\Omega(1)$ AND $O(\lg(n))$ in run-time complexity.
- $\Theta(1)$ in memory complexity
```

## Pseudocode

### Linear

```
Alg: LINEAR-SEARCH-ARRAY(A, n, keyVal)
	for i <- 1 to n 
		if A[i] = keyVal
			return i
	return -1
```

### Binary


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

## C++ Code

### Linear
```c++
int linearSearch(int A[], int b, int n, int key, int& comparisons) {
    for (int i = b; i < n; i++) {
        comparisons++;
        if (A[i] == key) {
            return i;
        }
    }
    return -1;
}
```

### Binary

```c++
int binarySearch(int A[], int b, int n, int key, int& comparisons) {
    //base case: reached if keyval not found
    if (b > n) {
        return -1;
    }
    comparisons++; //Add another comparison as all other cases have comparisons
    int q = floor((b+n)/2); //consider middle index
     //if keyval is found in the middle
    if (key == A[q]) {
        return q;
    }
    //keyVal is in the first half
    if (key < A[q]) {
        return binarySearch(A, b, q-1, key, comparisons);
    }
    //else, keyval is is the last half
    return binarySearch(A, q+1, n, key, comparisons);
}
# Linked Lists

```ad-summary
title: Goals
- Know the differences between arrays and linked lists (advantages and disadvantages, for example random access with arrays vs. sequential access, how memeory is organized for each, search limitations, etc.).
- Know how different types of linked lists work (singly and doubly linked lists)
- Know how to insert an element in a linked list at the beginning/middle/end.
- Know how to delete an element from a linked list at the beginning/middle/end.
- Know how to implement linked lists in C++
- Understand how pointers work in C++
- Know the time complexity for linked lists operations (insert/delete/search) whether it is intended tob e a sorted linked list or not, and know best/worst case conditions.
```
# Queues and Stacks

```ad-summary
title: Goals
- Understand how queues and stacks work.
- Know the time complexity for queues and stacks operations.
- Know how to implement queues and stacks operations.
- Know how to implement queues and stacks using arrays and linked lists.
- Know how to use queues and stacks to solve specific problems
```

## Stacks

A linear data structure that operates base don the Last-In-First-Out (LIFO) principle

**Main Operations:**
- Push
- Pop


![[Pasted image 20231127081805.png]]

```ad-important
title: Stack Terms
- Underflow state= empty stack
- Overflow state = completely full stack
- Push
- Pop
- Peek
![[Pasted image 20231127081828.png]]
```

## Different Ways of Accessing Data Members

- **Random Access**
	- Accessed Directly (Constant Time)
	- Arrays
- **Sequential Access**
	- Elements accessed in a specific order
	- Linked Lists
- **Limited Access**
	- Special ways of accessing sequentially
	- Aka a special case of sequential access

## Applications of a Stack

**Undo** operation in text editors

![[Pasted image 20231127081846.png]]

Browser **back** button

![[Pasted image 20231127081920.png]]

**Call Stack**

![[Pasted image 20231127081912.png]]

## Stack Implementations

In the standard library, stack is an **adaptor class**:
- Built on another data structure
	- I.e.
		- Arrays
			- Quick but limited size
		- Linked List
			- Extra overhead to allocate, link, unlink, deallocate, but not limited in size
		- Other Collection Structures

## Creating a Stack with Limited Access Using Arrays

**Public Member Functions**:
- `void push(int val)`
- `int pop()` 
- `int peek()`
- `bool isFull()`
- `bool isEmpty()`

**Private Data Members**:
- Array (`int[] A`)
- Index of The Current Top (`int i`)
- Max Size (`int n`)

```ad-question
What does a full and empty stack look like?
- Case 1: Top is the top element 
	- `top = -1` (empty)
	- `top = n-1` (full)
- Case 2: Top is the next empty spot
	- `top = 0` (empty)
	- `top = n` (full)
```

```ad-note
title: Other Considerations
- Check status of stack before pushing/popping elements or peeking
- Cannot rely on users to perform necessary checks
```

### Algorithm for Push

```ad-summary
title: Steps
1. Check if the stack is full or not
2. If the stack is full, then print error of overflow and exit the program
3. If the stack is not full, add it to the top and increment top
```

### Algorithm for Pop

```ad-summary
title: Steps
1. Check if the stack is empty or not.
2. If the stack is empty, then print error of underflow and exit the program.
3. If the stack is not empty, then reutrn the element at the top (decrementing top when appropriate)
```

### Time and Space Complexity for Main Functions

**Static**

|       | Push        | Pop         | Peek        |
| ----- | ----------- | ----------- | ----------- |
| **Time**  | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| **Space** | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$            |

**Dynamic

|          | Push                              | Pop         | Peek        |
| -------- | --------------------------------- | ----------- | ----------- |
| **Time** | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(1)$ |
|  **Space**  | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(1)$ |         |                                   |             |             |

```ad-note
**Pop** has a different run time depending on implementation
- Can shrink the dynamic array as needed
- The above assumes that it **does not** shrink
```

## Implementation

```c++

```

# Binary Trees vs. Binary Search Trees (BSTs)

```ad-summary
title: Goal
- Know the terms and properties of trees ( and in particular binary trees) and binary search trees (BSTs are binary trees that satisfy the BST property on the keys of the nodes).
- Know how binary search tree operations work (insert/delete/search/min/max/successor).
- Know how to traverse a binary search tree (in-order/pre-order/post-order/level-by-level).
- Know the time complexity for binary search tree (BST) operations, wrost-case and best-case. ALso distinguish search in a BST vs. binary tree.
```

# Cumulative Knowledge

```ad-summary
title: Goals
- Given a specific application of data, be able to reason about the best data structure for that applicaiton based on your knowledge of what the advantages and disadvantages of each data structure are for a specific algorithm (ex. inseriton, deletion, search, finding min/max etc.)
- or principle features of the data structures (LIFO, FIFO, binary search, etc.)
```
# Short Answers

## Binary Trees and Binary Search Trees (BSTs)

1. Describe the structure of a binary search tree (BST).

A binary search tree (BST) is a nonlinear data structure comprised of nodes, each encapsulating data members, including an ordering identifier (called the key), and linking members for left child and right child (and sometimes parent if a bidirectional tree is desired). A BST is a tree, where the data nodes are the vertices and the links are the edges. A node pointer called root references the only node with no parent (the root of the tree) and nodes with no children are called leaf nodes (left and right child links point to NULL). The height of the tree is the maximal number of edges from root to any leaf node. A BST satisfies the the property that the left subtree of any node (the subtree whose root is the left child of the node) has keys that are smaller than (or equal to) the key of the node, the right subtree has keys that are larger than (or equal to) the key of the node, and the left and right subtrees are themselves BSTs.

2. Describe the process of adding a new node to a BST. Use this to state and justify its worst-case time complexity. Describe also the best-case time complexity.

The key of the new node to be added is compared recursively to each existing node's key, starting with the root node, and progresses to the left child if the key of the new node is less than (or equal) to the existing node's key or progresses to the right child if the key of the new node is greater than the existing node's key. This process terminates when the associated child link (left or right) points to NULL and the new node is placed as that associated child of the last node whose key is compared with the new key. In the worst case, this path from root to the node where the new node is placed traverses the maximal number of edges (which is the height of the tree). Hence, the process of adding a new node is $O(h)$, where $h$ is the right of the BST. The best-case scenario is when the root has an open child spot and the node to be inserted should go there. In best-case it is $\Omega(1)$

3. Describe an algorithm for finding the minimum key in a BST. Use this to state and justify its best-case and worst-case time complexity.

Assuming a nonempty BST, a node pointer (current) may be used and initially be set to the root. The key of the root may be assigned as the `min` and a while loop may be set up that terminates when the left child of the current is NULL such that inside the loop the `min` is updated as the current node's key and then current is updated to be its left child. Upon termination of the while loop, the `min` variable is the minimum key of the BST. This algorithm in worst-case traverses the longest path from root to leaf node, so has a worst-case run time of $O(h)$, where $h$ is the height of the BST. The worst-case is when there are only left children, in which case the run time is $O(n)$. In the best case, the root has no left child, and a constant number of operations are executed, so the best-case run time is $\Omega (1)$. 

4. Describe the difference between breadth-first and depth-first traversal of a binary tree.

Breadth-first traversal of a tree involves visiting the nodes of a tree layer by layer, and typically left to right. It is easiest to implement using a queue of node pointers. Depth-first traversal of a tree involves visiting nodes along a path from root to leaf node (typically visiting left children first) and recursively backtracking to visit the other child of each node once leaf nodes are encountered. Recursive functions are the easiest way to implement depth-first traversal (hence, a stack).

5. Describe the differences between pre-order, in-order, and post order traversal of a binary tree and BST.

All of these traversal methods are depth-first, but differ in the order in which the node is processed (aka visited). For pre-order traversal, first the left child is visited, then the node itself is processed, and finally its right child. For post-order traversal, first the left child is visited, then the right child and lastly the node is processed. These traversal methods apply for generic binary tree. For a BST, in-order traversal of the keys will process the key in sorted order.

6. Describe the three main cases of deleting a node from a BST (assume a node pointer to the node to be deleted, which is not NULL, is an input parameter for the algorithm, and there are parent pointers). Use this tot state and justify its worst-case time complexity.

The three cases are: (1) the node is a leaf node, (2) the node has one child, and (3) the node ahs two children.
- In case 1, the parent node may have the child pointer associated with the node to be deleted set to NULL and the node may simply be deleted.
- In case 2, the node should be replaced with its child (and subtree(, so the child's parent link should be set to match the node's parent link, and the associated child link of the parent should be updated to point to the child. Then, the node may be deleted.
- In case 3, there are two subcases: The successor is the right child of the node, or it is not:
	- In case 3a, the right child and its subtree may replace the node. Since it is the successor, it will not have a left child, so its left child may be set to point to the left child of the node to be deleted. The parent link of the successor may be set to be the parent of the node to be deleted, and the parent's associated child link may be updated to point to the successor. Then, the node may be deleted
	- In case 3b, the successor should first be replaced with its right child (and its subtree). This is done by setting the right child's parent link to match the successor's parent. The left child link of the successor's parent (it must be a left child, as the successor would be the minimum in the subtree) is then linked do the right child of the successor. Once the successor is supplanted by its right child, then the successor may supplant the node to be deleted. This is done by making the parent link of the successor point to the parent of the node to be deleted, making the left child of the successor to be the left child of the node to be deleted, and by making the right child of the successor to be the right child of the node to be deleted. At this point the node may be deleted.

While most of these steps are constant run time, determining the successor is worst-case $O(h)$,, where $h$ is the height of the three, and this occurs when the node to be deleted is the root node and the path to the successor is equal to the height of the three. Hence, the worst-case complexity is $O(h)$.

## FIFO Queues

7. Describe the queue data structure with its operations of enqueue and dequeue in your own words accurately.

A queue data structure is a linear data structure that implements the First-In-First-OUT (FIFO) principle. A new data element is added to the queue at the rear using the enqueue operation and a data element may be removed from the queue from the front using the dequeue operation. If multiple data elements are put into the queue using enqueue operations, the first element to be put int eh queue will be the first to be dequeued from the queue for processing (a first-come, first-serve behavior).

8. Describe how a (fixed size) circular queue may be implemented with constant run-time enqueue and dequeue operations on a static array of size $n$.

A circular queue may be implemented on a static array of size $n$ by keeping track of the front and rear indexes. AN empty queue may be encoded by the condition that the front and rear indexes are equal, and a full queue may be encoded by the condition that the front is one more than then rear, modulo $n$ (meaning either `front = rear + 1` if `0 < front < n`, OR `front = 0` when `rear=n-1`). This allows a capacity of `n-1` for the queue. Enqueueing is done when the queue is not full by adding the data element at the rear and then incrementing the rear index modulo $n$ (meaning if `rear = n-1` prior to enqueueing, it will become 0 after the enqueue operation). Dequeuing may be done when the queue is not empty by returning the element at the front then incrementing the front index modulo $n$
## Stacks

9. Describe the stack data structure with its operations of push and pop in your own words accurately

A stack data structure is a linear data structure that implements the Last-In-First-Out (LIFO) principle. A new data element may be put onto the stack using the push operation and the top data element may be taken off the stack using the pop operation. If multiple data elements are put on the stack using a push operation, the last element to be put on the stack will be the first to be popped off the stack for processing (hence the LIFO name).

## Linked Lists

10. Describe in your own words accurately a singly linked list. Distinguish a singly linked list from a doubly linked list.

A singly linked list is a linear data structure comprised of nodes encapsulating one or more data members and chained together using node pointers as links connecting one node to the next in the linked list (with the last node's next link assigned to NULL). A linked list is referenced using a node pointer called head, pointing to the first node in the linked list, and usually also has a tail pointer referencing the last node in the list. A doubly linked list contains a second linking member for each node that points to the previous node in the linked list (with the head node's previous link pointing to NULL)

11. Describe the process of adding a new node to the head of a singly linked list. Use this to state and justify its worst-case complexity.

IN order to add a new node to the head of a singly linked list, the new node's next pointer should be assigned to the head of the linked list. Then the head pointer can be updated to be the new node. This constant number of operations leads to worst-case time complexity of $O(1)$.

12. Describe the process of deleting a node from a singly linked list with a specific key value (assume all nodes have unique key values, there is no tail pointer, and the linked list is NOT empty). Use this to state and justify its best-case and worst-case time complexities.

In order to delete a node from a singly linked list, two node pointer variables should be used: current and previous. In the special case that the head node matches the key value, only one of the temporary pointer variables is needed, say current. In this case, current is set to point to the head node and then the head pointer may be updated to point to the next node in a singly linked list. Now the current node may be deleted. This constant number of operations leads to a best-case time complexity of $\Theta(1)$. Otherwise, the current node pointer can be set to the node after the head and the previous node pointer can be set to the head. A while-loop may be used to iterate through the linked list checking the key value of the current node, as long as it is not pointing to NULL (this is the condition of the while-loop). The previous node pointer is updated so as to point to the current node of the previous iteration of the while-loop. If the current node ahs a matching key, then it is deleted by first setting the next link of the previous node to reference the node that current's next link references, which keeps the linked list chained as needed. Then, the current node may be deleted and the function may return. If the while loop terminates without finding the key (meaning the key is not in the linked list), the function may return without deleting any node. The worst-case scenario is when the key is not present, or it is the last node, and in either case, the complexity is $\Theta(n)$, where $n$ is the number of nodes in the linked list. Thus, node deletion is $\Omega(1)$ and $O(n)$

13. Describe how to traverse a linked list to print the key of each node in the list. Describe its run-time complexity.

To traverse a linked list, a single node pointer may be used, call it current. Starting at the head, and suing a while loop, progressively display the key and move to the next node until current points to NULL. Traversal is $\Theta(n)$, always linear running time. 

14. Discuss the advantages and disadvantages of dynamic arrays and linked lists in terms of access, insertion, and deletion.

From the perspective of access, arrays are better because they allow random access in constant time, whereas linked lists require sequential access, which is worst-case linear time. Form the perspective of insertion (data addition), linked lists are better (assuming the dynamic array is full) because insertion at the head (or tail) may be done in constant time for a linked list, whereas insertion for a full dynamic array requires creating a new, larger dynamic array and copying over all of the data, which has linear run time. Form the perspective of deletion, they are similar, as a dynamic array may simply increment its pointer to the first element and delete the previous first element similar to how the head may be moved to the second node in the linked list and delete the old head node.

## Formal Arguments and Asymptotic Complexity

15. Describe what a loop invariant is and how it is used to prove the correctness of an algorithm.

A loop invariant is a formal statement about the state of program variables being operated on in a loop phrased in such a way that the statement is true upon initialization (initialization step), maintained in each iteration of the loop (maintenance step), and upon exiting the loop (termination step).If the loop invariant is demonstrated to hold upon initialization and maintenance, and the statement holds meaning upon termination toward achieving the goal of the algorithm, and the algorithm terminates, or halts, then correctness can be established via the loop invariant.

16. Describe what a recurrence equation is and how it is useful in the analysis of algorithms. 

Recurrence equations are mathematical expressions that represent the current value of a sequence of values as a function of previous values and other terms. Because they depend on previous values, to determine a closed-from solution (equation) that solves the recurrence equation requires the initial conditions (or base cases). Recurrence equations are useful for analyzing the run-time complexity of recursive functions, including divide-and-conquer algorithms.

17. Define the big $O$ notation of $O(g(n))$ in your own words accurately.

$O(g(n))$ is the set of functions that asymptotically grow slower than a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be upper bound by a constant multiple of $g(n)$, asymptotically.

18. Define the big Omega notation $\Omega(g(n))$ in your own words accurately.

$\Omega g(n)$ is the set of functions that asymptotically grow faster than a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be lower bound by a constant multiple of $g(n)$, asymptotically.

19. Define the big Theta notation of $\Theta(g(n))$ in your own words accurately.

$\Theta(g(n))$ is a set of functions that asymptotically grow within a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be tightly bound within two constant multiples of $g(n)$, asymptotically.

## Divide-and-Conquer and Incremental Recursive Algorithms

20. Describe how incremental recursive algorithms (implemented as functions that call themselves only once within a function with an incrementally smaller input) solve a problem, using your own words, accurately. 

Recursive algorithms incrementally  make the problem smaller until a base condition is reached that can be easily solved, at which point the base solutions are recursively combined to solve the overall problem.

21. Describe how divide-and-conquer algorithms solve a problem, using your own words, accurately.

Divide-and-conquer algorithms partition the problem into smaller subproblems of similar kind recursively, until the subproblems can be solved directly, and then combine the results to solve the larger problem.

22. Describe the Towers of Hanoi problem and how it leads to exponential running time.

The Towers of Hanoi is a puzzle involving three "towers" and $n$ disks of different radius, stacked on top of each other from largest (at the bottom) to the smallest (at the top) on the first tower. The goal is to get all disks moved to the third tower (the destination), and stacked in the same manner as initialized, while following the rules. The rules of the puzzle require that only a single disk may be moved from the top of one tower  and placed on another tower, and only smaller disks may be placed on larger disks(no larger disk may be placed on a smaller disk)> A recursive solution to the puzzle involves moving $n-1$ of the disks to the middle tower, then moving the largest disk to the destination tower, and finally moving the $n-1$ disks form the middle tower to the destination tower. This recursive solution requires two instances of the problem of size $n-1$, along with one extra move, which is what leads to the exponential number of moves (or running item).

## Linear and Binary Search

23. Describe how the linear search algorithm processes an array of values given a key (you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm to preform as desired.

Linear search goes through each element of the array and compares it with the key. Once a match if found, it returns the index where the key match is in the array. Otherwise, if not match is found, it returns `-1`  to indicate no match is found. For linear search, no characteristics of the data are used.

24. Describe how the binary search algorithm processes an array of values given a key (you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm to perform as desired.

Binary search requires the data to be sorted (this is the characteristics that is used). It is a divide-and-conquer algorithm that uses the fact that the values are sorted to skip to the (approximate) midpoint value and compares it with the key.  Otherwise, if the key is smaller than the midpoint value, the binary search function is called on the left side of the array. If the key is larger than the midpoint value, the binary search function is called on the right side of the array. Recursively halving the size of the array to search with a constant factor of work to do at each function call gives an $O(\log n)$ run time.

## Quick Sort and Merge Sort (Divide-and-Conquer Comparison Algorithms)

25. Describe how the merge sort algorithm processes an array of values to sort them (you may assume the values are integers).

Merge sort is a divide-and-conquer algorithm that divides the array into roughly halves, recursively, until the resulting subarrays are singletons, which are trivially sorted. It then combines the sorted subarrays using a merge subroutine that creates copies of the two subarrays and, starting at the front of each subarray, iteratively goes thorough each element of each subarray and places the smaller of the two values as the next element in the merged array while incrementing the index of the subarray from which that element came. Once it adds the last element of either subarray, it can append the rest of the elements of the other subarray to complete the merged array. It continues merging subarrays in this manner until the entire array is merged and sorted.

26. Describe how the quick sort algorithm covered in class processes and array of values to sort them (you may assume the values are integers).

The quick sort algorithm covered in class is an in-place, divide-and-conquer algorithm that recursively partitions the array (and alter subarrays) using a subroutine called Partition, which takes the last element, called the pivot, and finds the location where that element (the pivot) should be within the subarray in sorted order, places the pivot there, and then returns the index where the pivot is (in its correct position with respect to sorting). It does so by using two indexes, one that progresses thorough the subarray element-by-element that compares the pivot with each element in the array using this index. The second index is sued to keep track of the location one to the left of where the pivot should go in the subarray, and starts one position to the left of the starting index of the subarray. The second index is only incremented in the case where the next element is less than or equal to the pivot, after which the element at the updated second index is swapped with the element at the first index. This ensures that the smaller (or equal) value that is encountered is swapped with one of the larger values that were passe dover while the first index iterates thorough the subarray. Once the first index goes thorough all the elements (except the last since that is the pivot), the pivot is swapped with the value at the position of one past the second index, which places the pivot in the correct location in the subarray. After Partition is called, the quick sort algorithm is called recursively on the left side of the subarray (no including the pivot), and the right side of the subarray(again, not including the pivot), until the subarrays are of size $1$ or empty.

## Incremental Sorting Algorithms

27. Describe how the selection sort algorithm processes an array of values to sort them (you may assume the values are integers).

Selection sort treats the front of the array as the sorted portion (initially empty) and progressively builds up the sorted portion of the array by finding the next smallest element on the right side of the array to put at the end of the sorted portion. Once it gets to the end (right side0 of the array), it swaps the values at the smallest index to the right with the value at the next index to the right of the sorted portion of the array. It continues in this manner until the entire array is the sorted portion.

28. Describe how the insertion sort algorithm processes an array of values to sort them (you may assume the values are integers).

Insertion sort treats the front of the array as the sorted portion (initially just the first element) and progressively builds up the sorted portion of the array by finding where in the sorted portion of the array the next element on the unsorted portion of the array (right side), called the key, should go within the sorted portion. It does so by first storing the key and then comparing the key with the rightmost element in the sorted portion. It decrements the index and shifts to the right each value in the sorted portion until the key is no longer smaller than the element at the current index within the sorted portion of the array (or it gets to the front of the array). It then places the key at that location and moves on to the next value in the sorted portion of the array. It continues in this manner until the entire array is the sorted portion.

29. Describe how the bubble sort algorithm processes an array of values to sort them (you may assume the values are integers).

Bubble sort treats the back of the array as the sorted portion (initially empty) and progressively builds up the sorted portion of the array by starting at the first element and performing pairwise comparisons and swaps whenever the next element is smaller than the current element. The index is progressively incremented with pairwise comparisons and potentially swapped (if the next value is smaller) until the end of the array is reached. With each iteration through the array, doing these pairwise comparisons and swaps cause the next largest element to migrate to the right side of the array, like a bubble rising to the surface of a fluid. This progressively builds up the sorted portion of the array at the backside until only one element is left, which must be trivially sorted at the front of the array (the smallest value).

# General Algorithms and Data Structures

30. Define what an algorithm is accurately in your own words.

An algorithm is a sequence of instructions that accomplishes a task.

31. Define what a data structure is accurately in your words.

A data structure is a way of organizing, managing and storing information usable by a computer.

32. Describe what is a dynamics set, and attributes such as the key, satellite data and linking members

A dynamic set is a set that can change its elements over time. The key is an attribute of each element in the dynamic set that is searchable and also often used for organizing elements of the dynamic set (via sorting). Satellite data include all other related data in the dynamic set that would be organized with the key in the element Linking members are used to connect the data elements in the dynamic set implementation, generally implemented as pointers.

33. Describe what makes a good algorithm

A good algorithm should be correct (solves the problem accurately) and efficient (in terms of time and space complexity). Time complexity is captured by asymptotic runtime complexity and space complexity is captured by the amount of additional memory required to execute the algorithm.  Some algorithms for hard problems will tradeoff correctness (close enough by some metrics of distance in a vector space may be used) for efficiency. these are called approximation algorithms.

## Pointers, Static Memory and Dynamic Memory

34. Describe what a reference variable is in C++ accurately in your own words. 

A reference variable in C++ is an alias of another variable, which must be initialized when declared, cannot be changed to refer to another variable, and has the same memory address as the original variable.

35. Describe what a pointer is in C++ accurately in your own words.

A pointer is a variable that contains the memory address of another object or variable, which may be reassigned to another object of the same type or be assigned to NULL.

36. Describe the differences between static and dynamic memory in a C++ runtime environment.

All static memory is allocated at compile time, assigned to the stack, is fixed, and is automatically deallocated when the object is out of scope. Dynamic memory is allocated at run time, assigned to the heap, is dynamic (can change in size), and persists beyond the scope in which the allocation is made. The new and delete operators are used to dynamically assign and deallocate dynamic memory. All normally declared variables are static. 

37. Describe a dangling pointer in your own words accurately

A dangling pointer is a pointer that once referenced a dynamic memory object that has since been deallocated using the delete operator or references an object that is out of scope.

38. Describe how a memory leak can occur in a C++ Program.

A memory leak can occur when a pointer referencing a dynamically allocated object is reassigned to reference another object.






