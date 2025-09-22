Date: 18th September 2025
Date Modified: 18th September 2025
File Folder: Module 2
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Linear systems
- Matrices

```

# Introduction to Linear systems and Matrices

## System of Linear Equations Definition

A **linear equation** is an equation that can be written in the form:

$$
a_{1}x_{1}+a_{2}x_{2}+\dots a_{n}x_{n}=c
$$

A *system of linear equations* is a set of linear equations that involve the same variables. A general system of $m$ equations in $n$ variables can be written in the form:

$$
a_{11}x_{1}+a_{12}x_{2}+\dots +a_{1n}x_{n}=b_{1}
$$
$$
a_{21}x_{1}+a_{22}x_{2} + \dots + a_{2n}x_{n}=b_{2}
$$
$$
\dots
$$
$$
a_{m 1}x_{1}+a_{m 2}x_{2}+\dots + a_{mn}x_{n}=b_{m}
$$

```ad-summary
title: Definition
This linear system is called **homogenous** if the right hand sides constants ($b_1, b_2, \dots , b_m$ are all *zero*)
```

```ad-example
What are the solutions to $y = x-2)$? It would be $(x, x-2) \quad \forall \mathbb{R} \in x$
```
## Solution of A System of Linear Equations

```ad-summary
title: Definition
A *solution* to a system of linear equations is a set of values for the variables $x_i$ such that each equation in the system is satisfied. The *solution set* of a system of equations is the colleciton of all solutions.
```

A system of equations is called **inconsistent** if it has no solutions. It is called *consistent* otherwise.
## Solving Systems of Equations from A Graph

Possible different outcomes of a linear system:
1. **One Solution:** When a system of equations intersects at an ordered pair, the system has only one solution
2. **No Solutions**: When the lines that make up a system are parallel, there are no solutions because the two lines share no points in common
3. **Infinite Solutions**: Sometimes the two equations will graph as the same line, in which case we have an infinite number of solutions.

![[Pasted image 20250918190707.png]]

### Example

```ad-question
Use the graph of the system of equatoins to determine the number of solutions:

$$2x-3y=12$$
$$y=1/3x-3$$
```

![[Pasted image 20250918190810.png]]

This system has one solution at $(3, -2)$

## Definition of Matrix

```ad-summary
title: Definition
A *matrix* is a rectangular array of numbers. The horizontal lines of numbers form *rows* and the vertical lines of numbers form *columns*. The size of matrix is determined by numbers rows and columns of a matrix. A matrix with $m$ rows and $n$ columns (size by $m \times n$) is said to be an $m \times n$ matrix ("an $m$ by $n$ matrix")
```

$$
\begin{bmatrix}
a_{11} & a_{12} & a_{13} & \dots & a_{1n} \\ a_{21} & a_{22} & a_{23} & \dots & a_{2n} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ a_{m1}  & a_{m2}  & a_{m 3}  & \dots  & a_{mn}
\end{bmatrix}
$$
## Augmented Coefficient Matrix

![[Pasted image 20250922113818.png]]

## Special Matrices

**Zero Matrix**: $O_{m \times n}$

$$
\begin{bmatrix}
0 & 0 \\ 0 & 0
\end{bmatrix}_{{2\times 2}}
$$
**Identity Matrix**: $I_{m \times m}$

$$
\begin{bmatrix}
1  &  0 \\ 0  &  1
\end{bmatrix}_{2 \times 2}
$$

$$
\begin{bmatrix}
1  &  0  &  0 \\ 0  &  1  &  0 \\ 0  &  0  &  1
\end{bmatrix}_{3 \times 3}
$$

**Row Matrix**:

$$
\begin{bmatrix}
1  &  2  &  0  &  5
\end{bmatrix}_{1 \times 4}
$$
**Column Matrix**:

$$
\begin{bmatrix}
3 \\ 0 \\ -1
\end{bmatrix}_{3 \times 1}
$$

