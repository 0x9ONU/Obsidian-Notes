Date: 29th September 2025
Date Modified: 29th September 2025
File Folder: Module 2
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Matrix Operations

```

# Matrix Equality

```ad-summary
title: Definition
Two $m \times n$ matrices $\textbf{A}$ and $\textbf{B}$ are equal if their corresponding entries are equal. Must be the same size and have the same entries!
```

$$
\mathbf{A}=
\begin{bmatrix}
1  & 2 \\ 3 & 4
\end{bmatrix}; \mathbf{B}=\begin{bmatrix}
1 \\ 2 \\ 3 \\ 4
\end{bmatrix}; \mathbf{C}= \begin{bmatrix}
1 & 3 \\ 2 & 4
\end{bmatrix}
$$
$$
\mathbf{A} \ne \mathbf{B} \ne \mathbf{C}
$$
# Matrix Addition

```ad-summary
title: Definition
Let $\mathbf{A}$ and $\mathbf{B}$ be $m \times n$ matricies. The sum of $\mathbf{A}$ and $\mathbf{B}$, denoted by $\mathbf{A}+\mathbf{B}$, is obtained by adding corresponding entries of $A$ and $B$. **They MUST be the same size for this to work**
```

$$
\text{If } \mathbf{A}= \begin{bmatrix}
a_{11} & a_{12} & \dots  & a_{1n} \\ a_{21} & a_{22} & \dots & a_{2n} \\ \vdots  & \vdots & \vdots  & \ddots \\ a_{m1}  & a_{m2}  & \dots  & a_{mn}
\end{bmatrix} \text{ and } \mathbf{B} = \begin{bmatrix}
b_{11} & b_{12} & \dots  & b_{1n} \\ b_{21} & b_{22} & \dots & b_{2n} \\ \vdots  & \vdots & \vdots  & \ddots \\ b_{m1}  & b_{m2}  & \dots  & b_{mn}
\end{bmatrix} \text{, then}
$$
$$
\mathbf{A}+\mathbf{B} = \begin{bmatrix}
a_{11}+b_{11} & a_{12}+b_{12} & \dots  & a_{1n}+b_{1n} \\ a_{21}+b_{21} & a_{22}+b_{22} & \dots & a_{2n}+b_{2n} \\ \vdots  & \vdots & \vdots  & \ddots \\ a_{m1}+b_{m1}  & a_{m2}+b_{m2}  & \dots  & a_{mn}+b_{mn}
\end{bmatrix}
$$
$$
Or\dots
$$
$$
\mathbf{A}=[a_{ij}]_{m \times n}, \mathbf{B}=[b_{ij}] \Rightarrow \mathbf{A}+\mathbf{B} = [a_{ij}+b_{ij}]_{m \times n}
$$
# Scalar Multiplication

```ad-summary
title: definition
Let $\textbf{A}$ be an $m \times n$ matrix and let $k$ be a scalar. The scalar multipolcation of $k$ and $mathbf{A}$ denoted by $k \mathbf{A}$, is obtained by multiplying each element of $\mathbf{A}$ by $k$
```

$$
\text{If } \mathbf{A}= \begin{bmatrix}
a_{11} & a_{12} & \dots  & a_{1n} \\ a_{21} & a_{22} & \dots & a_{2n} \\ \vdots  & \vdots & \vdots  & \ddots \\ a_{m1}  & a_{m2}  & \dots  & a_{mn}
\end{bmatrix} \text{ then } k\mathbf{A}=\begin{bmatrix}
ka_{11} & ka_{12} & \dots  & ka_{1n} \\ ka_{21} & ka_{22} & \dots & ka_{2n} \\ \vdots  & \vdots & \vdots  & \ddots \\ ka_{m1}  & ka_{m2}  & \dots  & ka_{mn}
\end{bmatrix}
$$
# Matrix Subtraction

```ad-important
Set $k=-1$ and do scalar multiplication on the second matrix, and then add the other matrix to each other 
```

## Example

$$
\mathbf{A} = \begin{bmatrix}
1  & 2 & 3 \\ 0 & 5 & 7
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
0 & 0 & 0 \\ 1 & -1 & 2
\end{bmatrix}
$$
$$
-1\mathbf{B} = \begin{bmatrix}
0 & 0 & 0 \\ -1 & 1 & -2
\end{bmatrix}
$$
$$
\mathbf{A-B}=\begin{bmatrix}
1 & 2 & 3 \\ -1 & 6 & 5
\end{bmatrix}
$$
# Examples for Scalar Multiplication and Addition

## Example 1

```ad-question
Given the matricies and numbers, compute the new matrix. Compute the matrix $c\mathbf{A}+d\mathbf{B}$ for every matrix
```

$$
\mathbf{A}= \begin{bmatrix}
3 & -5 \\ 2 & 7
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
-1 & 0  \\ 3 & -4
\end{bmatrix}, c =3, d=4
$$
$$
3\mathbf{A}=\begin{bmatrix}
9 & -15 \\ 6 & 21
\end{bmatrix}, 4\mathbf{B}=\begin{bmatrix}
-4 & 0 \\ 12 & -16
\end{bmatrix}
$$
$$
3\mathbf{A}+4\mathbf{B} = \begin{bmatrix}
5 & -15 \\ 18 & 5
\end{bmatrix}
$$
# Multiply a Row Vector by a Column Vector

Let $\mathbf{u}$ be a $1\times n$ row vector with entries $u_{1}, u_{2},\dots,u_{n}$ and $\mathbf{v}$ be an $n\times1$ column vector with entries $v_{1},v_{2},\dots,v_{n}$. Then the product of $\mathbf{u}$ and $\mathbf{v}$, denoted by $\mathbf{uv}$ is:

$$
\sum^n_{i=1}u_{1}v_{1}+u_{2}v_{2}+\dots+u_{n}v_{n}
$$

```ad-warning
This only works when the row's length and the column's height are the same! ($n = m$)
```

```ad-example

```

$$
\mathbf{u}=\begin{bmatrix}
0 & 1 & 2
\end{bmatrix}, \mathbf{v} = \begin{bmatrix}
1 \\ 5 \\ 7
\end{bmatrix}
$$
$$
\mathbf{uv}=(0)(1)+(1)(5)+(2)(7)
$$
$$
\boxed{\mathbf{uv}=19}
$$
# Matrix Multiplication

```ad-summary
title: Definition
Let $\mathbf{A}$ be an $m\times p$ matrix, and let $\mathbf{B}$ be an $p\times n$ matrix. The matrix product of $\mathbf{A}$ and $\mathbf{B}$, denoted by $\mathbf{AB}$ is the $m\times n$ matrix whose entry in the $i^{th}$ row and the $j^{th}$ column is the product of the $i^{th}$ row of $\mathbf{A}$ and the $j^{th}$ column of $\mathbf{B}$
```

## Example 1

```ad-question
Find $\mathbf{AB}$
```
$$
\mathbf{A}=\begin{bmatrix}
2 & -1 \\ 3 & 2
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
-4 & 2 \\ 1 & 3
\end{bmatrix}
$$
$$
\mathbf{AB}=\begin{bmatrix}
(-4)(2)+(-1)(1)  & (2)(2)+(-1)(3) \\ (3)(-4)+(2)(1)  & (3)(2)+(2)(3)
\end{bmatrix}
$$
$$
\mathbf{AB}= \begin{bmatrix}
-9  & 1 \\ -10 & 12
\end{bmatrix}
$$
## Example 2

```ad-question
Find $\mathbf{BA}$
```

$$
\mathbf{B}=\begin{bmatrix}
-4 & 2 \\ 1 & 3 \end{bmatrix}, \mathbf{A}=\begin{bmatrix}
2 & -1 \\ 3 & 2
\end{bmatrix}
$$
$$
\mathbf{BA} = \begin{bmatrix}
(-4)(2)+(2)(3)  & (-4)(-1)+(2)(2) \\ (1)(2)+(3)(3)  & (1)(-1)+(3)(2)
\end{bmatrix}
$$
$$
\mathbf{BA} = \begin{bmatrix}
-2 & 8 \\ 11 & 5
\end{bmatrix}
$$

```ad-important
The matrix multiplication DOES NOT satisfy the commutative property ($\mathbf{AB} \ne \mathbf{BA}$)
```

## Example 3

$$
\mathbf{A}=\begin{bmatrix}
1 & 2 & 3
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
3 \\ 4 \\ 5
\end{bmatrix}
$$
$$
\mathbf{AB}=\begin{bmatrix}
(1)(3)+(2)(4)+(3)(5)
\end{bmatrix}
$$
$$
\mathbf{AB}= \begin{bmatrix}
26
\end{bmatrix}
$$

$$
\mathbf{B}=\begin{bmatrix}
3 \\ 4 \\ 5
\end{bmatrix}, \mathbf{A}=\begin{bmatrix}
1 & 2 & 3 \end{bmatrix}
$$
$$
\mathbf{BA}= \begin{bmatrix}
3 & 6 & 9 \\ 4 & 8 & 12 \\ 5 & 10 & 15
\end{bmatrix}
$$

## Example 4

```ad-question
Find $\mathbf{AB}$ and $\mathbf{BA}$
```

$$
\mathbf{A} = \begin{bmatrix}
1 & 0 & -3 \\ 3 & 2 & 4 \\ 2 & -3 & 5
\end{bmatrix}, \mathbf{B} = \begin{bmatrix}
7 & -4 & 3 \\ 1 & 5 & -2 \\ 0 & 3 & 9
\end{bmatrix}
$$
$$
\mathbf{AB} = \begin{bmatrix}
(7+0+0)  &  (-4+0-9)  & (3+0-27) \\ (21+2+0)  &  (-12+10-9) & (9-4+36) \\ (14-3+0)  & (-8-15+15) & (6+6+45)
\end{bmatrix}
$$
$$
\mathbf{AB} = \begin{bmatrix}
7 & -13 & -24 \\ 23 & -11 & 41 \\ 11 & -8 & 57
\end{bmatrix}
$$
# Properties of Matrix Multiplication

**Theorem**: Let $\mathbf{A}$, $\mathbf{B}$, $\mathbf{C}$ be matrices with dimensions so that that the following operations make sense, and let $k$ be a scalar. The following qualities hold:
1. $\mathbf{A}(\mathbf{BC})=(\mathbf{AB})\mathbf{C} \quad \text{ (Associative Property)}$
2. $\mathbf{A}(\mathbf{B+C})=\mathbf{AB}+\mathbf{AB}$ AND $(\mathbf{B}+\mathbf{C})\mathbf{A}=\mathbf{BA}+\mathbf{CA} \quad \text{(Distributive Property)}$
3. $k(\mathbf{AB})=(k\mathbf{A})\mathbf{A}=\mathbf{A}(k\mathbf{B})$
4. $\mathbf{AI}=\mathbf{IA}=\mathbf{A}$

## Example 1

```ad-question
For the three matrices $\mathbf{A, B, C}$, veritfy the associative law by computing both sides.
```

$$
\mathbf{A}=\begin{bmatrix}
3 & 1 \\
-1 & 4
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
2 & 5 \\
-3 & 1
\end{bmatrix}, \mathbf{C}=\begin{bmatrix}
0 & 1  \\
2 & 3
\end{bmatrix}
$$

**Step 1**: Find $\mathbf{A}(\mathbf{BC})$

$$
\begin{bmatrix}
3 & 1 \\
-1 & 4
\end{bmatrix}\left(\begin{bmatrix}
2 & 5 \\
-3 & 1
\end{bmatrix}\begin{bmatrix}
0 & 1 \\
2 & 3
\end{bmatrix}\right )
$$
$$
\begin{bmatrix}
3 & 1 \\
-1 & 4
\end{bmatrix}\begin{bmatrix}
10 & 17 \\
2 & 0
\end{bmatrix}=\begin{bmatrix}
32 & 51 \\
-2 & -17
\end{bmatrix}
$$
**Step 2**: Find $(\mathbf{AB})\mathbf{C}$

$$
\left(\begin{bmatrix}
3 & 1 \\
-1 & 4
\end{bmatrix}\begin{bmatrix}
2 & 5 \\
-3 & 1
\end{bmatrix}\right)\begin{bmatrix}
0 & 1  \\
2 & 3
\end{bmatrix}
$$
$$
\begin{bmatrix} 
3 & 16 \\
-14 & -1
\end{bmatrix}\begin{bmatrix}
0 & 1 \\
2 & 3
\end{bmatrix}=\begin{bmatrix}
32 & 51 \\
-2 & -17
\end{bmatrix}
$$
## Example 2

```ad-question
Prove that $\mathbf{AI}=\mathbf{IA}=\mathbf{A} \quad \forall A_{n \times n}, I_{n \times n}, n \in \mathbb{Z}$
```

**Suppose**
$$
\mathbf{A}=\begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\ 
\vdots & \vdots & \ddots & \vdots \\
a_{n1} & a_{{n2}} & \dots & a_{nn}
\end{bmatrix}, \mathbf{I}=\begin{bmatrix}
1 & 0 & \dots & 0 \\
0 & 1 & \dots & 0 \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \dots  & 0
\end{bmatrix}
$$
$$
\mathbf{AI}= \begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\ 
\vdots & \vdots & \ddots & \vdots \\
a_{n1} & a_{{n2}} & \dots & a_{nn}
\end{bmatrix} = \mathbf{A}
$$
$$
\mathbf{IA}= \begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\ 
\vdots & \vdots & \ddots & \vdots \\
a_{n1} & a_{{n2}} & \dots & a_{nn}
\end{bmatrix} = \mathbf{A}
$$
# Write Homogeneous System in the Matrix Form $\mathbf{Ax}=\mathbf{0}$, then Find the Solution in Vector Form

$$

\mathbf{A}=\begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\ 
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{{m2}} & \dots & a_{mn}
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
\vdots \\
x_{m}
\end{bmatrix}=\begin{bmatrix}
0 \\
0 \\
\vdots  \\
0
\end{bmatrix}
$$

## Example 1

```ad-question
The coefficent matrix for a homogeneous linear system is given. Find one nontrivial solution (not all variables equal to zero) of the associated system if possible. Assume the vairables of this system are $p_1$ and $p_2$ and their coefficients appear in that order in the matrix.
```

$$
\begin{bmatrix}
- 5& 5 \\
0 & 0
\end{bmatrix}
$$
$$
-\frac{1}{5}R_{1}\Rightarrow
\begin{bmatrix}
1 & -1 \\
0 & 0
\end{bmatrix}
$$
$$
\text{Leading}: p_{1}
$$
$$
\text{Free}: p_{2}
$$
$$
p_{2}=t
$$
$$
\begin{bmatrix}
1 & -1 \\
0 & 0
\end{bmatrix}\begin{bmatrix}
p_{1} \\
p_{2}
\end{bmatrix}
= \begin{bmatrix}
0  \\
0
\end{bmatrix}
$$
$$
p_{1}-p_{2}=0
$$
$$
p_{1}=p_{2}=t
$$
$$
(t,t)
$$
*Vector Form*:
$$
\begin{bmatrix}
p_{1} \\
p_{2}
\end{bmatrix} = \begin{bmatrix}
t \\
t
\end{bmatrix} = t\begin{bmatrix}
1 \\
1
\end{bmatrix}
$$
## Example 2

$$
\begin{bmatrix}
1 & 0 & 9 & -4 & -1 \\
0 & 1 & -7 & -7 & -5
\end{bmatrix}
$$

$$
\text{Leading}: p_{1}, p_{2}
$$
$$
\text{Free}: p_{3},p_{4},p_{5}
$$

$$
p_{3}=r; p_{4}=s; p_{5}=t
$$
$$
\begin{bmatrix}
1 & 0 & 9 & -4 & -1 \\
0 & 1 & -7 & -7 & -5
\end{bmatrix} \begin{bmatrix}
p_{1} \\
p_{2} \\
p_{3} \\
p_{4} \\
p_{5}
\end{bmatrix}=\begin{bmatrix}
0 \\
0 \\
0 \\
0 \\
0
\end{bmatrix}
$$
$$
p_{2}-7p_{3}-7p_{4}-5p_{5}=0
$$
$$
p_{2}-7r-7s-5t=0
$$
$$
p_{2}=7r+7s+5t
$$

$$
p_{1}+9p_{3}-4p_{4}-p_{5}=0
$$
$$
p_{1}+9r-4s-t=0
$$
$$
p_{1}=-9r+4s+t
$$
*Vector Form*
$$
\begin{bmatrix}
p_{1} \\
p_{2} \\
p_{3} \\
p_{4} \\
p_{5}
\end{bmatrix} = \begin{bmatrix}
-9r+4s+t \\
7r+7s+5t \\
r \\
s \\
t
\end{bmatrix}
$$
$$
\begin{bmatrix}
p_{1} \\
p_{2} \\
p_{3} \\
p_{4} \\
p_{5}
\end{bmatrix} = \begin{bmatrix}
-9 \\
7 \\
1 \\
0 \\
0
\end{bmatrix}r+\begin{bmatrix}
4 \\
7 \\
0 \\
1 \\
0
\end{bmatrix}s+\begin{bmatrix}
1 \\
5 \\
0 \\
0 \\
1
\end{bmatrix}t
$$











