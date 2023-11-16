Date: 15th November 2023
Date Modified: 15th November 2023
File Folder: Week 13
#DSA1

# Algorithms
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

## Use Time Complexity Definitions on a given $T(n)$ Equation

### Proofs

```ad-important
- Find the maximum value to find $c_2$
- Find the smallest **postive** value to find $c_1$
- $n_0$ is where $n$ creates the smallest positive value (aka where $c_1$ happens)
	- Find where $n > c$ where $c$ is the constant
	- Between both the upper bound and lower bound, always choose the larger $n_0$
```

#### Example 1: Big Theta 1

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

#### Example 2: Big Theta 2

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

#### Example 3: Big O

```ad-question
Prove that running time $T(n) = n^3+20n+1$ is $O(n^4)$
```

To prove that $T(n)$ is $O(n^4)$, wed need to determine positive real constant $c \in \mathbb{R}^+$ and positive integer $n_0 \in \mathbb{Z}^+$ such that:

$$n^3 +20n+1 \le cn^4; \space \space \space \forall n \ge n_0$$

Divide out

$$\frac{1}{n}+\frac{20}{n^3}+\frac{1}{n^4} \le c$$

Notice that the left-hand side is always positive but progressively gets smaller as $n$ gets larger. So, let's check the above inequality for $n_0 = 1$, substituting the values gets us:

$$\frac{1}{n}+\frac{20}{n^3}+\frac{1}{n^4} = \frac{1}{1}+\frac{20}{1^3}+\frac{1}{1^4} = 20 \le c$$
Therefore, choosing $c=22$ and $n_0=1$ works. Hence, the inequality holds and $T(n)$ is $O(n^4)$

#### Example 4: Big Omega

```ad-question
Prove that running time $T(n)=n^3+20n$ is $\Omega(n^2)$
```

To prove that $T(n)$ is $\Omega(n^2)$, we need to determine positive real constant $c \in \mathbb{R}^+$ and positive integer $n_0 \in \mathbb{Z}^+$ such that:

$$cn^2\le n^3 +20n; \space \space \space \forall n \ge n_0$$

Divide:

$$c \le n+\frac{20}{n}$$

In this case, the second term on the right-hand side is always positive, so it will add to $n$ and make the sum more than $n$. Therefore a choice of $n_0=c=1$ will fork for all $n>0$. Hence $T(n)$ is $\Omega(n^2)$

#### Example 5: Harder Big Theta

```ad-question
Prove that running time $T(n) = 2n^2 + 4$ is $\Theta(n^2)$
```

To prove that $T(n)$ is $\Theta(n^2)$, we need to determine positive real constants $c_1, c_2 \in \mathbb{R}^+$ and positive integer $n_0 \in \mathbb{Z}^+$ such that:

$$c_1n^2 \le 2n^2 + 4 \le c_2n^2; \space \space \space \forall n \ge n_0$$

Divide

$$c_1 \le 2 + \frac{4}{n^2} \le c_2$$

For all positive $n$, the 2nd term in the sum of the middle function adds to the value of 2, so a lower bound of $c_1 = 2$ will work for all positive $n$. For the upper bound, we use the fact that the 2nd term goes to zero for large $n$. We can just pick any value of $n$ and solve for the result of the middle function, and choose $c_2$ equal or greater than this since the second term will be even smaller for all larger values of $n$. Let's go with $n=2$ since that will make an integer value for the function:

$$c_2 \ge 2+ \frac{4}{(2)^2} = 3$$
Thus, if we choose $c_1=2$ and $c_2=3$ then we nheed $n_0 \ge 2$ and can choose $n_0 =2$. Hence, we have found the constants and the positive integer such that the equality holds, so $T(n)$ is $\Theta(n^2)$

#### Example 6: Harder Big Omega

```ad-question
Prove that running time $T(n) = 4n^2 +2$ is $\Omega(n)$
```

To prove that $T(n)$ is $\Omega(n)$, we need to determine positive real constant $c \in \mathbb{R}^+$ and positive integer $n_0 \in \mathbb{Z}^+$ such that:

$$cn \le 2n^2+2; \space \space \space \forall n \ge n_0$$

Divide:

$$c \le 2n+2$$
For all positive $n$, the value $c=2$ will work, so we may choose $c=2$ and $n_0=1$ Hence, we have found the constants and integer such that the inequality holds, so $T(n)$ is $\Omega(n)$
### Proofs by Contradiction

```ad-summary
1. Assume the proposition we want to prove is wrong and that the opposite is true
2. Follow the argument until a contradiciton occurs
- Someting like $a=b$ and $a \ne b$ or $a<b$ and $a>b$;
- In either case, both cannot be true
3. Since the premise leads to a contradiction, the opposite must be true
4. Hence, the original proposition is true
```

#### Example 1: From Class


```ad-question
Show that $f(n) = \frac{1}{3}n^2 - 2n$ is NOT $\Theta(n^3)$
```

- Assume that it is $\Theta(n^3)$. Then, $\exists c_1, c_1 > 0$ and $n_0 > 0$ such that:
$$c_1n^3 \le \frac{1}{3}n^2 -2n \le c_2 n^3 \space \space \forall n \ge n_0$$
- Divide each side by $n^2$
$$c_1n \le \frac{1}3 - \frac{2}{n} \le c_2n \space \space \forall n \ge n_0$$
- For $\max\{ \frac{1}{3} - \frac{2}{n}, n_0 \}$
$$\frac{1}{3} - \frac{2}{n} < \frac{1}{3} < 1 \space \space\forall n \ge 1$$
- To get to the contradiction we want:
$$c_1n > 1 \leftrightarrow n > \frac{1}{c_1}$$

- If $n \ge max \{ \frac{1}{c_1}, n_0 \}$

$$\frac{1}{3}-\frac{2}{n} < \frac{1}{3} < 1 \le c_1 (\frac{1}{c_1}) \le c_1n$$
$$\therefore c_1n > \frac{1}{3} - \frac{2}{n} \space \space \forall n \ge max \{\frac{1}{c_1}, n_0 \} \ge n_0$$
- By the assumption:
$$c_1 \le \frac{1}{3} - \frac{2}{n} \space \space \forall n \ge max \{\frac{1}{c_1}, n_0 \} \ge n_0$$
- **Contradiction**: 
Therefore, assumption was wrong, so $f(n)$ is NOT $\Theta(n^3)$

#### Example 2: Big Theta Contradiction

```ad-question
Prove that running time $T(n)=n^3 + 20n+1$ is NOT $\Theta(n^2)$
```

```ad-note
The key to this problem is realizing that the upper bound will fail to be true
```

In this case we use proof by contradiction. Suppose $T(n)$ is $O(n^2)$. Then, there exists a positive constant $c$ and positive integer $n_0$, such that:

$$n^3+20n+1\le cn^2 \space \space \space \forall n \ge n_0$$

From this inequality, we derive a contradiction, at which point we may conclude that $T(n)$ is not $O(n^2)$, and hence not $\Theta(n^2)$. Divide thorough:

$$n+\frac{20}{n}+\frac{1}{n^2} \le c$$

Let $n > \max \{ c, n_0 \}$. For these "larger" values of $n$, we will show that for $n > c$, the left side of the inequality above will be greater than $c$, so we arrive at a contradiction to the above inequality. Note that $\frac{20}{n}$ and $\frac{1}{n^2}$ are both greater than 0 for all $n$, so adding them to $c$ will be greater than $c$ by itself:

$$n + \frac{20}{n}+\frac{1}{n^2} > c+ \frac{20}{n}+\frac{1}{n^2} > c$$

This inequality contradicts the one above, and the proof is complete.

#### Example 3: Big O Contradiction

```ad-question
Prove that running time $T(n)=n^3$ is NOT $O(n^2)$
```

Let's assume to the contrary that $n^3$ is $O(n^2)$. Then there must exist a constant $c$ and $n_0$ such that:

$$n^3 \le cn^2; \space \space \space \forall n \ge n_0$$

In other words, we need to show that there are no constants $c$ and $n_0$ that satisfy this inequality for all values of $n$. Divide out:

$$n \le c; \space \space \space \forall n \ge n_0$$

But this is not possible, we can never choose a constant $c$ large enough that $n$ will never exceed it, since $n$ can grow without bound (in fact, $n > \max \{  c, n_0 \}$ will give $n >c$). Thus, the original assumption, that $n^3 = O(n^2)$, must be wrong, so $n^3$ is NOT $O(n^2)$ 

#### Example 4: Big Omega Contradiction

```ad-question
Prove that running time $T(n) = 4$ is NOT $\Omega(n)$
```

In this case, we use proof by contradiction. Suppose $T(n)$ is $\Omega(n)$. Then there exists a positive constant $c$ and positive integer $n_0$, such that:

$$cn \le 4, \space \space \space \forall n \ge n_0$$

From this inequality, we derive a contradiction, at which point we may conclude that $T(n)$ is NOT $\Omega(n)$. Since $c$ is a positive constant, we can choose $n > \max \{ n_0, \frac{4}{c} \} \ge n_0$, from which we see that:

$$cn > c(\frac{4}{c}) = 4$$

The contradiction is that we are saying $cn \le 4$ and $cn > 4$ for large enough values of $n$. Hence, $T(n)$ is NOT $\Omega(n)$ 

#### Example 5: Big O Contradiction

```ad-question
Prove taht running time $T(n) = 7n^3$ is NOT $O(n^2)$
```

Use proof by contradiction. Suppose $T(n)$ is $O(n^2)$. Then, there exists a positive constant $c$ and positive integer $n_0$, such that:

$$7n^3 \le cn^2; \space \space \space \forall n \ge n_0$$

Form this inequality, we derive a contradiction, at which point we may conclude that $T(n)$ is not $O(n^2)$. Divide through:

$$7n \le c, \space \space \space \forall n \ge n_0$$

Since $c$ is a positive constant, we can choose $n > \max \{ n_0, \frac{c}{7} \} \ge n_0$ form which we see that:

$$7n > 7 (\frac{c}{7}) = c$$

The contradiction is that we are saying $7n \le c$ and $7n > c$ for large enough values of $n$. Hence, $T(n)$ is NOT $O(n^2)$

#### Example 6: HARD Theta Contradiction

```ad-question
Prove that running time $T(n) = 3n^2-4n+2$ is NOT $\Theta(n)$
```

We use proof by contradiction. Suppose $T(n)$ is $\Theta(n)$. Then, there exists positive constants $c_1, c_2$ and positive integer $n_0$, such that:

$$c_1 n \le 3n^3 -4n +1 \le c_2 n, \space \space \space \forall n \ge n_0$$

From this, inequality, we derive a contradiction, at which point we may conclude that $T(n)$ is not $\Theta(n)$. Note that it is the upper bound that will fail (since $T(n)$ is not $O(n)$) Divide and focus on upper bound:

$$3n-4 + \frac{2}{n} \le c_2, \space \space \space \forall \ge n_0$$

If $n > \frac{c_2+4}{3}$, we have:
$$3n-4+\frac{2}{n} > 3n-4 > 3\frac{c_2+4}{3}-4 = c_2 +4-4=c_2$$
Thus, for $n > \max \{ \frac{c_2+4}{3}, n+0 \}$, we have the contradiction:

$$3n-4 + \frac{2}{n} > c_2$$
and
$$3n-4+\frac{2}{n} \le c_2$$

Hence, $T(n) = 3n^2-4n+2$ is NOT $\Theta(n)$

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
## Loop Invariants

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

```ad-important
Array Notation:
- $A[1..j]$ denotes the subarray of elements $A[1], A[2],...,A[j]$
- $A[k..j]$, with $k > j$, is considered an empty subarray
- $A[j..j]$ is an array with a single value.
```
### Example 1: Selection Sort

```
Alg: SELECTION-SORT(A, n)
for i <- 1 to n-1
	smallestIndx <- i
	for j <- (i+1) to n
		if A[j] < A[smallestIdx]
			then smallestIndx <- j
	swap A[i] <-> A[smallestIndx]
```

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
- `A[k..n]` are greater than elements in `A[1..k-1]`
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
- `smallestIdx` references the smallest element of the subarray `A[i..j-1]`
	- meaning `A[smallestIdx]` is the smallest element of subarray `A[i..j-1]`

 **Initialization**: `j` starts at `i+1`
- $A[i..j-1] = A[i..i+1-1] = A[i..i]=^{def}A[i] = A[smallestIdx]$, which is the smallest value (trivially so)

**Maintenance:** Assume true for $j=k$ and show it is still true for $j=k+1$
- Assume: $A[smallestIdx] = min\{A[i],...,A[k-1]\} (j=k)$
- Line 5 updates `smallestIdx` as $j=k$ only if $a[k] < A[smallestIdx]$
- At end. $A[smallestIdx] = min\{A[i]... A[k]\}(j=l+1)$

**Termination:** $j=n+1$, so $A[smallestIdx] = min\{A[i],...,A[n+1-1]\}$

## Linked List Search

```
Alg: SEARCH_LL(listLL, keyVal)
searchNode = listLL.head
while (searchNode NOT = NULL
	if searchNode.key = keyVal
		return searchNode
	searchNode = searchNode.next
return NULL
```

At the beginning of each iteration of the while-loop, all of the nodes preceding `searchNode` have been examined and non have the `keyVal`

**Initialization:** Before the first iteration,
- `searchNode` is the head of the list.
- no nodes preceding `searchNode` (**vacuously true**).
- Vacuously true in this case. 

**Maintenance:** May assume no nodes preceding `searchNode` have `keyVal`
- In this loop iteration, if `searchNode` has `keyVal`, return it!
- Otherwise move on to the next node
- Again, all nodes preceding do not have `keyVal`

**Termination**: If `searchNode.key = keyVal` (First time it was found (and returns))
- Otherwise, terminates when off the list (`searchNOde = NULL`)

## Find Max Value

```
Alg: FIND-MAX-VAL(A, n)
maxVal = A[1]
for i <- 2 to n
	if A[i] > maxVal
		maxVal = A[i]
return maxVal
```


```ad-note
Algorithm is correct if halts and $maxVal = max\{A[1], A[2],...,A[n]\}$
```

**Before**: Before $i$
- $maxVal = max \{A[1],... A[i-1]\}$

**Initialization**: Before the first iteration ($i=2$):
- `maxVal` is set to the first element of the array where $maxVal = A[1]$ (line 1)
- If that is the case, $maxVal = max\{A[1]\} = max\{A[1],...,A[i-1]\}$  (vacuously true)

**Maintenance**: Assume true for $i \le k$ (go into loop with $i=k$)
- Therefore, $maxVal = max\{A[1], ..., A[k-1]\}$
- **Need to show**: $maxVal = max \{A[1],...,A[k]\}$
- Check if $A[k] >maxVal$ (Line 3)
- Make $maxVal = max \{max\{ A[1]..., A[k-1] \}, A[k] \}$ (line 4)
	- Note that the inner "max" is the original value for `maxVal`

**Termination**: Upon exiting the loop, $i = n + 1$ 
- The loop invariant with this value $n+1$ gives:
- $maxVal = max \{ A[1],..., A[n+1-1]\}$
- $maxVal = max\{A[1],...,A[n]\}  \space QED$
- Halts because the for loop executes $n-1$ times and exits
## Factorial

```ad-question
Consier the followng alogirthm for calcualting n factorial, givne by $n! = n*(n-1)*...*2*1.$ Give the loop invariant for the initalizaiton, maintance, and termination conditons demonstrate the aglorithm's correctness.
```

```
Alg: nFactorial(n) //Assume n>-1
	temp <- 1
	for i <- 2 to n
		temp *= i
	return temp
```

```ad-note
Before stating the loop invariant, we should eal with corner cases of $n=0$ and $n=1$ in which the for loop does no execute. IN either of these special cases $temp =1$ is returned, which is $0!$ and $1$, so the algorithm is correct so far.
```

**Before**: At the start of each iteration, with loop counter $i$, $temp = 1 *...*i-1$

**Initialization:**
- The value of $i$ is $2$ and $temp =1$. The loop invariant indicates it is $1*(2-1)$, which is $1$, so it is true

**Maintenance:**
- Assuming $temp = 1*...*k-1$ before starting the loop with $i=k$,
- Line 3 updates $temp$ as $temp*k=(1*..*k-1)*k =1*...*k$, which demonstrates maintenance of the loop invariant

**Termination**:
- Upon termination, $i=n+1$
- The loop invariant states that $temp = 1*...*(n+1)-1 = 1*...*n$, which is $n!$.
- The algorithm halts (just a single for-loop), and returns $temp$ as $n!$, so it is correct.

## Arithmetic Sum

```Alg: arithmeticSum (n) //Assumes n > 0
	temp <- 0
	for i <- 1 to n
		temp += i
	return temp
```

**Before**: At the start of iteration $i$, $temp = 0+...+i-1$

**Initialization**:
- Upon starting the for-loop at $i=1$
- $temp = 0+...+(1-1)=0+...+0=0$ , so trivially true

**Maintenance:**
- Assuming $temp = 0+...+k-1$ going into iteration with $i=k$
- Line 3 updates temp as $temp +k = (0+...+k-1)+k=0...+k$
- The loop invariant is maintained.

**Termination**:
- $i =n+1$, so $temp = 0+...+n+1-1=0+...+n = arithmetic \space sum.$ 
- It halts (for-loop) and is correct

## Find Maximum Distance Mystery Funciton

```
Alg: MYSTERY1 (A, n)
	 temp <- 0
	 for i <- 1 to n
		 for j <- i+1 to n
			 if |A[j]-A[i]| > temp
				 temp <- |A[j] - A[i]|
	return temp
```

### Inner Loop Invariant

**Before**: At the start of each iteration of the inner loop, with loop counter $j$, $temp$ is at least as large as the maximum absolute difference between $A[i]$ and values in $A[i..j-1]$

**Initialization**:
- The value of $j$ is $i+1$ entering the loop and temp is at least 0
- The only value in $A[i..j-1]=A[i..i]$ is $A[i]$ and the difference between $A[i]$ and itself is 0, so the loop invariant is trivially true so far.

**Maintenance:**
- Assuming $temp$ is at least as large as the maximum absolute difference between $A[i]$ and values in $A[i..k-1]$ when assuming $j=k$.
- In line 4, we compare the absolute difference between $A[i]$ and $A[k]$
- In line 5, temp is updated as the absolute different only if that difference is greater than temp.
- Hence, temp will still be at least as large as the maximum absolute difference between $A[i]$ and values in $A[i..k]$ after Lines 4-5 execute, ensuring the loop invariant is maintained.

**Termination**:
- Upon termination, $j=n+1$
- The loop invariant guarantees that temp is at least are large as the max. absolute difference between $A[i]$ and the values in $A[i..n]$ (rest of the array).

### Outer Loop Invariant

**Before**: At the start of each iteration of the outer for-loop, with loop counter $i$, $temp$ is the maximum absolute difference between values in $A[1..i-1]$ and the rest of the values in $A$.

**Initialization**:
- Upon entering the loop, $i=1$ and $temp=0$
- $A[1..i-1] = A[1..0]$, which is empty (vacuously true)

**Maintenance**:
- Assuming the loop invariant is true for $i \le k$
- $temp$ is the max. abs. difference between values in $A[1...k-1]$ and the rest of the values in $A$
- When $i=k$, the inner loop invariant's termination condition indicates that temp is at least as large as the max. abs. difference between $A[k]$ and values $A[k..n]$ (rest of the array).
- Note: The abs. difference between $A[k]$ and the values in $A[1..k-1]$ is taken care of in the assumption of this step.
- Hence, at the end of the loop we can say that $temp$ is the max. abs. difference between values in $A[1..k]$ and the rest of the values in $A$.

**Termination**
- Upon termination, $i=n+1$
- $temp$ is the max abs difference between values in $A[1..n]$ and the rest of the values in $A$, which is a way of saying that $temp$ is the max abs difference of values in $A$

## Merge from Merge Sort

```ad-note
- Induction-style argument
	- Base case to show get to singletons and combine them correctly
	- Inductive step to show merge correctly to maintain sorted order
- Focus on Merge
	- Main Loop Invariant (Lines 12-17)
	- Other loops left as exercise
```

```
i = 1 
j = 1
for k = p to r 
	if L[i] =< R[j] 
		A[k] = L[i] 
		i = i+1 
	else A[k] = R[j]
		j = j+1 
```

**Beginning of the Loop:**
- At the start of each iteration for the loop counter `k` of the for-loop
- $A[p..k-1]$ contains the smallest elements (k-p) elements of L and R is sorted in ascending order
- $L[i]$ and $R[j]$ are the smallest elements left in $L[i]$ & $R[j]$ (not yet been copied over to A)

**Initialization**:
- $A[p..p-1]$ is empty (vacuous)
- $p-p=0$ elements sorted (vacuous)
- $L[1]$ and $R[1]$ are smallest elements of L and R not copied

**Maintenance**:
- Line 13 & either 14/16 ensure $A[k]$ is next smallest element and $A[p..k]$ is sorted
- Whichever one picked has its index incremented, so $L[i]$ and $R[j]$ are still the smallest elements of resp. array not copied.

**Termination ($k=r+1$):
- $A[p..r]$ contains $r-p+1$, which are all, of the non-sentinel elements of $L$ and $R$ sorted in ascending order
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
## Quick Sort



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

























