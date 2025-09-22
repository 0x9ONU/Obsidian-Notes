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

## Solution of A System of Linear Equations

```ad-summary
title: Definition
A *solution* to a system of linear equations is a set of values for the variables $x_i$ such that each equation in the system is satisfied. The *solution set* of a system of equations is the colleciton of all solutions.
```

A system of equations is called **inconsistent** if it has no solutions. It is called *consistent* otherwise.
## Solving Systems of Equations from A Graph

Possible different outcomes if a system is *homogeneous*:
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
