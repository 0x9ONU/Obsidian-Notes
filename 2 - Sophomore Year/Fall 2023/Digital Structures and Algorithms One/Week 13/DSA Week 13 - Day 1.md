Date: 13th November 2023
Date Modified: 13th November 2023
File Folder: Week 13
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Recurrence Tree & Master Method

```

# Trees

Set of nodes (vertices) and edges (arcs)
- Known as parent and child relations

![[Pasted image 20231113080532.png]]

## Binary Tree?

Each node has at most two children
- Edges
- Descendant
- Ancestor
- Path
- Depth of a node
	- Level that node is placed
- Height of the tree
	- Lowest level of the tree

![[Pasted image 20231113080745.png]]

```ad-example
The divide part of the merge sort for an array of a length 8 has two children per node and a height of 3
![[Pasted image 20231113080839.png]]
```

```ad-important
$$leaf \space nodes = (children)^{height}$$
```

![[Pasted image 20231113081107.png]]

$$3^3 = 36 \space leaves$$

## Recurrence Equation for Divide-and-Conquer

$$T(n)=aT(\frac{n}{b})+f(n); \space T(n_b)=f_b(n)$$
Where:
- $a \ge 1$ is the number of times function calls itself
- $b > 1$ is the division factor
- $f(n)$ = number of instructions required (recursive case)
	- Includes divide and combine work
- $n_b$ = size of input in the base case
- $f_b(n)$ = number of instructions requiered (base case)

## Recursion Tree Method

- Each node = **overhead cost $f(n)$ of a single subproblem**
- Sum overhead across each level (based on depth)
- Overall run-time is the sum across all levels

```ad-note
Number of leaf nodes matter, and $T(1) = \Theta(1)$
```

![[Pasted image 20231113081506.png]]

### Example

```ad-question
Determine the recursiont ree and voerall run-time complexity of the algorithm with recurrence equation given by:
$$T(n) = 2T(\frac{n}{2}) + cn; \space \space \space c > 0$$
```

**Step 1:**

Start with $T(n)$, which has $a=2$ children and overhead $f(n)=cn$

![[Pasted image 20231113081640.png]]

**Step 2:**

Substitute for each case of $T(\frac{n}{2})$, the overhead cost with input size $\frac{n}{2}$, or $f(\frac{n}{2}) = \frac{cn}{2}$ and write the next recurrence equation:

![[Pasted image 20231113081847.png]]

**Step 3:**

Keep dividing into smaller subproblems unit the base case is reached:

![[Pasted image 20231113081921.png]]

**Step 4**:

Sum work across each level and determine number of leaf nodes to get overall work in last level

![[Pasted image 20231113081951.png]]

**Step 5:**

Sum work of all levels to get total running time complexity:

![[Pasted image 20231113082030.png]]

$$T(n) = cn*\lg n + \Theta (n)$$
$$T(n) = \Theta (n \lg n)$$

### Intuition from Recursion Tree

Three possibilities can happen:
- Number of leaf nodes dominate work, each with $T(1) = \Theta(1)$
- Overhead cost of $f(n)$ dominates
- These are the same (in terms of growth rates)

**Example**

$$T(n) = aT(\frac{n}{b})+f(n)$$

![[Pasted image 20231113082531.png]]

### Getting Number of Leaf Nodes

![[Pasted image 20231113082716.png]]

$$leaf \space nodes = (children)^{height} = (a)^{log_b(n)} = n^{log_b(a)}$$

## Master Theorem

Compares number of leaf nodes = $n^{\log_b(a)}$ with over head work, $f(n)$

### Case 1:

![[Pasted image 20231113082841.png]]

Given asymptotically postitive $f(n)$, with $a \ge 1$ and $b > 1$ in the recurrence equation:

```ad-important
If $f(n) = O(n^{\log_b (a-\epsilon)}$, for some constant $\epsilon > 0$, which means that $f(n)$ is polynomially smaller than $n^{log_b a}$ asymptotically, then $T(n) = \Theta(n^{log_b a})$
- Leaf node work dominates
```

#### Example - Case 1

```ad-question
APply the Masster Theorem to determine the run-time complexity of the algorithm with recurrence equation:
$$T(n) = 8T(\frac{n}{2}) + 1000n^2$$
```

$a = 8, b = 2$, so you can calculate # leaf nodes:

$$\log_b a = log_2 8 = 3$$
$$leaf \space nodes = n^{log_b a} = n^3$$

$$f(n) = O(n^{log_b a-\epsilon}) = O(n^{3-1}), \space where \space  \epsilon =1$$

Leaf node work dominates polynomially, so case 1 applies, and $T(n) = \Theta (n^3)$

### Case 2:

![[Pasted image 20231113083515.png]]

If $f(n) = \Theta(n^{\log_b a })$, then $T(n) = \Theta(n^{\log_b a} * \lg n)$$
- Leaf node work same asymptotic tight bound as overhead work

#### Example

$$T(n) = 2T(\frac{n}{2}) + 10n$$Given $a =2, b=2$:

$$log_b a = log_2 2 = 1$$
$$leaf \space nodes = n^1$$

$$f(n) = 10n = \Theta(n^1)$$

**Because they are the same, case 2 applies:**

$$T(n) = \Theta(n * \lg n)$$

### Case 3:

![[Pasted image 20231113083802.png]]

If $f(n) = \Omega(n^{\log_b (a + \epsilon)})$, for some constant $\epsilon > 0$, which means that $f(n)$ is polynomially larger than $n^{\log_b a}$ asymptotically, and $\exists r ∈ (0,1)$ such that $af(n/b)\le rf(n)$ for large $n$ (**regularity condition**), then $T(n) = \Theta(f(n))$
- Overhead work dominates

#### Example

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

