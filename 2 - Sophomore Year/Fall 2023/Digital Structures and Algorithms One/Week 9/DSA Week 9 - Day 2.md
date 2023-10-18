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

```ad-note
Insertion sort, on the other hand, has a different Big Theta Notation based on best and worst case:
- Best case: $\Theta(n)$
- Worst case: $\Theta(n^2)$
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

- Provides (best-case) **lower bound** on grwoth rate 
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

# The set \Omega(g(n))$ used in Big Omega Notation

$$\Omega(g(n)) = \{ f(n):\exists c \epsilon \mathbb{R}^+, n_0 \epsilon \mathbb{Z}^+ \space s.t. \space  0 \le cg(n) \le f(n) \space\forall n \ge n_0\}$$

## Theorem

For any two functions, $f(n)$ and $g(n)$, we have $f(n) = \Theta(g(n))$ if and only if $f(n) = O(g(n)$ and $f(n) = \Omega(g(n))$

