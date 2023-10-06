Date: 4th October 2023
Date Modified: 4th October 2023
File Folder: Week 7
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Algorithmic Analysis 

- **Running Time** (based on input size)
- Space complexity (memory overhead, based on **input size**)
- Communication Complexity (based on messages)
## Why is it important?

Helps figure out:
- What algorithm is "the best" in a given circumstance?
- How to anticipate empirical behavior

## Input Size, $n$

Often seen as a single integer
- Number of Items
- Size of an array
- Number of linked list nodes
- Number of database records
- Number of bits

```ad-note
COuld be multidimensional:
- Addition of $m * n$ matrices
```

## Measure of Computing Time

### Empirical Execution Time

- COmputer architecutre dependent
- Compiler dependent
- Need to use same machine, with same environment
- Used in testing architectures
- Want something architecture-independent

### Number of Statements executed

- Programming language dependent
- Want something language-independent

### Running TIme

- Assumes each line of pseudocode has an **execution (time) cost**, $C_i$ for line $i$ to execute the instruction once
- Multiply by # time executed
- Sum across all instructions

## Model of Computation: Random Access Machine (RAM)

- Pseudocode executed sequentially, no concurrent operations

```ad-example
Primitive instructions include:
- Arithmetic
	- Addition, subtractions, multiplciaiton, divisoin, remainder, floor, ceiling,e tc.
- Data Movement
	- load, store, copy
- Program Control
	- Condition and unconditional branch, subroutine call and return
```

```ad-important
Assumes single eprocessor and no memory hierarchy
```

### Total Running Time Calculation

- **Execution cost** of line $i$ in pseudocode, denoted by $C_i$
- **Size of the input** denoted by `int` $n$, which is usually large
- **Number of times** line $i$ is executed, denoted by $f_i(n)$
	- Dependent on $n$, and could depend on the scenario (best/worst/etc)
- **Run time spent executing line $i$** = $C_i * f_i(n)$
- Total Running Time, $T(n)$

$$T(n) = C)1 * f_1(n) + C_2 * f_2(n) + ... C_k * f_k(n) = \sum_{i=1}^{k} C_i * f_i(n)$$

## Examples
### Example: Running TIme of a SIngle For-Loop

```ad-question
Write the C++ code to implement this pseudocode, fill in the table below, and determine the running time, $T(n)$, of the for-loop snippet shown below
```

```
for i <- 1 to n-1
	x <- x+2
print x
```

```ad-check
title: Solution
- Size of the input: $n-1$
- Since for-loop takes on $n-1$ values
	- $f_2(n) = n-1$
- Solve for running time
	- $T(n) = \sum_{i=1}^3 C_i * f_i(n) = C_1n + C_2(n-2) + C_3$
	- $= (C_1+C+2)n + (C_3 - C_2)$
	- $= An + B$
- This algorithm (a single for-loop) has a **linear** running time

```ad-important
A loop will always have one **extra** execution at the beginning to check its conditions
```

| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | $n$            |
| $C_2$          | $n-1$            |
| $C_3$          | $1$                 |

```c++
for (int i = 1; i <= n; i++) {
	x += 2;
}
cout << x;
```


### Example: Running Time of a Single While-Loop (Traversal of Linked List)

```ad-question
For the pseudocode below that traverses a linked lkist, fill in the table below,and determine the running time, $T(n)$, of the while-loop snippet shown below.
```

```
traversalNode = head
while (traversalNOde is NOT NULL) 
	print traversalNode.key
	traversalNOde = traversalNode.next
```

```ad-check
title: Solution
- The size of the input is assumed to be $n$
	- There may be $n$ nodes in a linked list
- How many time will the while loop boy execute?
- Find running time:
	- $T(n) = \sum_{i=1}^4 C_i * f_i(n) = C_1 + C_2(n+1) + C_3(n) + C_4(n)$
	- $=(C_2 + C_3 + C_4)n + (C_1+C_2)$
	- $= An + B$
- Still a **linear** function
```


| Execution Cost | # Times Executed |
| -------------- | ---------------- |
| $C_1$          | 1                 |
| $C_2$          | $n+1$                 |
| $C_3$          | $n$                 |
| $C_4$               |    $n$              |

## Searching a Linked List for a Key Value

```ad-note
Has several possibilites, SO you have to assume one of the three following:
```ad-example
- **Worst-Case Scenario**: The key is not in the list
	- Practically the same as traversing the linked list
- **Best-Case Scenario**: The key is a the head!
	- Construction number of operations, regardless of $n$
- **Average-case scenario**: Requires assumptions... if
	- Unique keys between 1 and $n$
	- keyVal between 1 and $n$ (uniformly random)
	- Then, average # nodes searched by $\frac{n}{2}$
```

```ad-danger
Best-case Scenario is NOT an empty list!
- With algorithmic analysis, we assume $n$ is large, so not 0!
```

### Running Time of a While-Loop (Search in a Linked List)

```ad-question
For the pseudocode below that searches for a key value, `keyVal`, in a linked list, fill in the table below, and determine the running time, $T(n)$, of the while-loop snippet shown below, in best and worst case.
```

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

## Nested Loops

```ad-note
The runtime will differ depending on if the nested loops are **independent** OR **dependent** 
```

### Example: Running Time of Independent Nested For-Loops

```ad-question
For this pseudocode, fill in the table below, and determine the running time, $T(n)$, of the nested for-loop snippet shown below. Then, write the C++ code to implement the pseudocode and verify your results
```

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

```ad-note
Important question to ask for $C_6$, In each outer loop counter value, how many times will the inner loop body execute?: $n$ times. SO:
$$ n + n + n + ... + n = n * n = n^2$$
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

```ad-check
title: Solution
$$T(n) = C_1 + C_2 + C_3(n+1) + C_4n + C_5(N^2+n) + C_6n^2 + C_7 + C_8$$
$$T(n) = An^2 + Bn + C$$
- **Quadratic Funciton**
```

```c++
int n = 10;
int outerCount = 0;
int innerCount = 0;
for (int i = 1; i <= n; i++) {
	outerCounter++;
	for (int j = 1; i <= n; j++) {
		innerCount++;
	}
}
cout << "Inner Loop Executes:" << innerCount;
cout << "Outer Loop Executes: " << couterCounter;
```

### Example: Running Time for Dependent Nested For-Loops

```ad-question
For this pseudocode, fill in the table below, and determine the running time, $T(n)$, of the nested for-loop snippet shown below. Then, write the C++ code to implement the pseudocode and verify your results
```

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
| $C_5$          | $a$         |
| $C_6$          | $\frac{n(n+1)}{2}$            |
| $C_7$          | 1                |
| $C_8$          | 1                 |
