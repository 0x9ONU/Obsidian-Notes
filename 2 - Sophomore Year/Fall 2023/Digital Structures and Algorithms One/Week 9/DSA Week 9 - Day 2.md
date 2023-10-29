	Date: 16th October 2023
Date Modified: 16th October 2023
File Folder: Week 9
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Asymptotic Complexity Analysis

```

# Growth Rate Analogy: Counting Bricks in a Structure

If we want to lay some landscaping bricks to edge our flowerbed with mulch, and we need 3 bricks for 1m, how many bricks will we need to line 10m of flowerbed?
- $30 * 3 = 90 \space bricks$ (Linear Growth)

What if our landscaping business also builds brick walls? 
* $30^2 * 3 = 2700 \space bricks$ (Quadratic) 

# Big Theta Notation $\Theta(f(n))$

(**Tight** bound on growth rate)


```ad-summary
**Precisely** specifies growth rate
- Bubble Sort and Selection Sort have best-case and worst-case running times of the form:
	- $T(n) = An^2+Bn+C$
- Summarized as
	- $T(n) = \Theta(n^2)$
```

```ad-important
Once it hits aysomtotically (to large $n_0$) accurate, the function ($f$) can be described by big theta notation when two multiples of the growth rate function ($g(n)$) can sandwhich the function.
```

```ad-warning
When best case and worst case are **not** the same, a function can not be summarized by only one Big Theta Notation. It must be marked for both the best and worst case senario
```

# Big O Notation $O(f(n))$

- Provides (worst-case) **upper bound** on growth rate:
	- Insertion sort is $0(n^2)$ in asymptotic run-time complexity
	- Captures that its worst-case running time is $\Theta(n^2)$

```ad-note
Notice that the asyptotic nature means that it is only true when larger than $n_0$
```

# Big Omega Notation $\Omega (f(n))$

- Provides (best-case) **lower bound** on growth rate 
	- Insertion sort is $\Omega(n)$ in asymptotic run-time complexity
	- Captures its **best-case running time is** $\Theta(n)$

# Example: Asymptotic Complexity Notation

For the following algorithms, whose best- and worst-case run-time functions are provided, describe their asymptotic run-time complexity concisely using Big O, Big Theta and Big Omega notation, as appropriate

1. **Algorithm 1:** $T_{best}(n) = 4n + 2$ & $T_{worst}(n) = 8n^2\lg(n) +4n+2$

$$\Omega(n) \space \& \space O(n^2\lg n)$$
	Alternatively: $\Theta(n)$ is the best case while $\Theta(n^2)$ is the worst case

2. **Algorithm 2:** $T_{best}(n) = 5n^3 =3n +1$ & $T_{worst}(n) = 6n^3+4n^2-3n+1$
$$\Omega(\lg n) \space \& \space O(n)$$
3. **Algorithm 3:** $T_{best}(n) = 5$ & $T_{worst} = 2 \lg n + 5

$$\Omega (1) \space \& \space O(\lg n)$$

# Run-Time and Space Complexity Summary

## Incremental Sorting Algorithms 

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

## Linked List Algorithm 

| Algorithm                | Summary                | Best-Case   | Worst-Case  |
| ------------------------ | ---------------------- | ----------- | ----------- |
| Traversal                | $\Theta(n)$            | $\Theta(n)$ | $\Theta(n)$ |
| Search                   | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Insertion at head/tail   | $\Theta(1)$            | $\Theta(1)$ | $\Theta(1)$ |
| Insertion in Sorted List | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Deletion at head/tail    | $\Theta(1)$            | $\Theta(1)$ | $\Theta(1)$ |
| Deletion in Sorted List  | $\Omega(1)$ and $O(n)$ | $\Theta(1)$ | $\Theta(n)$            |

| Algorithm                | Summary     | Best-Case   | Worst-Case  |
| ------------------------ | ----------- | ----------- | ----------- |
| Traversal                | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Search                   | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Insertion at head/tail   | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Insertion in Sorted List | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Deletion at head/tail    | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| Deletion in Sorted List  | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |

# The set $\Theta(g(n))$ used in Big Theta Notation (formal definition)

$$\Theta(g(n)) = \{ f(n):\exists c_1, c_2 \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le c_1g(n) \le f(n) \le c_2g(n) \space\forall n \ge n_0\}$$

```ad-summary
In $f(n)$ There exists two variables that belong to a set of positive real numbers and $n_0$ is a set of psotive integers such that the lower growth rate function ir greater than zero and $f(n)$ is greather than the growth rte funciton which is less than the second growth rate function 
```

```ad-important
$f(n)$ is asymptotically negative
```

# The set $0(g(n))$ used in Big O Notation

$$O(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le f(n) \le cg(n) \space\forall n \ge n_0\}$$

```ad-note
Only has the lower bound
```

# The set $\Omega(g(n))$ used in Big Omega Notation

$$\Omega(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le cg(n) \le f(n) \space\forall n \ge n_0\}$$

## Theorem

For any two functions, $f(n)$ and $g(n)$, we have $f(n) = \Theta(g(n))$ if and only if $f(n) = O(g(n)$ and $f(n) = \Omega(g(n))$

## Example: Constructive Proof demonstrating Asymptotic Complexity Bound

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

```ad-important
- Find the maximum value to find $c_2$
- Find the smallest **postive** value to find $c_1$
- $n_0$ is where $n$ creates the smallest positive value (aka where $c_1$ happens)
	- Find where $n > c$ where $c$ is the constant
	- Between both the upper bound and lower bound, always choos ehte larger $n_0$
```

