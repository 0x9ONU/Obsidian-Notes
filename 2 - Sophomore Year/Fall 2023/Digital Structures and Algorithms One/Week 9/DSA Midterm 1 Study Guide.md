Date: 18th October 2023
Date Modified: 18th October 2023
File Folder: Week 9
#DSA1

# Algorithms (General):

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

| Algorithm      | Summary                             | Best-Case     | Worst-Case    |
| -------------- | ----------------------------------- | ------------- | ------------- |
| Insertion Sort | $\Omega(n) \space \& \space O(n^2)$ | $\Theta(n)$   | $\Theta(n^2)$ |
| Selection Sort | $\Theta(n^2)$                       | $\Theta(n^2)$ | $\Theta(n^2)$ |
| Bubble Sort    | $\Theta(n^2)$                       | $\Theta(n^2)$ | $\Theta(n^2)$ |

**Memory Complexity**

| Algorithm      | Summary     | Best-Case   | Worst-Case    |
| -------------- | ----------- | ----------- | ------------- |
| Insertion Sort | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$   |
| Selection Sort | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$   |
| Bubble Sort    | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |

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

```ad-summary
- Provides (best-case) **lower bound** on growth rate 
	- Insertion sort is $\Omega(n)$ in asymptotic run-time complexity
	- Captures its **best-case running time is** $\Theta(n)$
```

$$\Omega(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le cg(n) \le f(n) \space\forall n \ge n_0\}$$

### Examples

1. **Algorithm 1:** $T_{best}(n) = 4n + 2$ & $T_{worst}(n) = 8n^2\lg(n) +4n+2$

$$\Omega(n) \space \& \space O(n^2\lg n)$$
	Alternatively: $\Theta(n)$ is the best case while $\Theta(n^2)$ is the worst case

2. **Algorithm 2:** $T_{best}(n) = 5n^3 =3n +1$ & $T_{worst}(n) = 6n^3+4n^2-3n+1$
$$\Omega(\lg n) \space \& \space O(n)$$
3. **Algorithm 3:** $T_{best}(n) = 5$ & $T_{worst} = 2 \lg n + 5

$$\Omega (1) \space \& \space O(\lg n)$$

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

# Sorting 

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

# Linked List

