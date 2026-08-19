Date: 6th October 2025
Date Modified: 6th October 2025
File Folder: Module 2
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Determinants

## Determinant of a $1 \times 1$ and $2 \times 2$ Matrix

```ad-summary
title: Defintion
The determinant of an $n \times n$ matrix $\mathbf{A}$ is a number denoted by $\det(\mathbf{A})$ or $|\mathbf{A}|$, that is determined by $\mathbf{A}$.

If $\mathbf{A}$ is a $1 \times 1$ matrix $\mathbf{A}=[a]$, then $\det(\mathbf{A})=a$
```

**Formula for Computing the Determinate of a $2 \times 2$ matrix:

Let $\mathbf{A}=\begin{bmatrix} a & b \\ c & d \end{bmatrix}$. The determinant of $\mathbf{A}$, denoted by $\det(\mathbf{A})$, is $ad-bc$or

## Minor and Cofactor of a Matrix

Let $\mathbf{A}$ be $n \times n$ matrix. The $i,j$ - *minor* of $\mathbf{A}$, denoted by $\mathbf{A}_{ij}$, is the determinant of the $(n-1) \times (n-1)$ matrix formed by deleting the $i^{th}$ row and the $j^{th}$ column of $\mathbf{A}$.

The $i, j$-*cofactor* of $\mathbf{A}$ is the number of $C_{ij}=(-1)^{i+j}\mathbf{A}_{ij}$

## Cofactor Expansion

Let $\mathbf{A}$ be an $n \times n$ matrix. The cofactor expansion of $\mathbf{A}$ along the $i^{th}$ row is the sum:

$$a_{i1}C_{i1}+a_{i2}C_{i 2} + \dots+a_{in}C_{i n}$$

The cofactor expansion of $\mathbf{A}$ along the $j^{th}$ column is the sum

$$
a_{1j}C_{1j}+a_{2j}C_{2j}+\dots+a_{nj}C_{nj}
$$
## Determinant of an $n \times n$ Matrix

If $\mathbf{A}$ is an $n \times n$ matrix, where $n \ge 2$, then $\det(\mathbf{A})$ is the number that can be found by taking the cofactor expansion along any row or column of $\mathbf{A}$. For example:

$$
\det(\mathbf{A})= a_{11}C_{11}+a_{12}C_{1 2} + \dots+a_{1n}C_{1 n}
$$

```embed
title: "Ex: Find a 3x3 Determinant using Cofactor Expansion on Row 2"
image: "https://i.ytimg.com/vi/nqI0RkWeSwU/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AHYCYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLAfkNCMexN2_x3tFU7mbFOapW6Cvw"
description: "This video explains how to evaluate a determinant of a 3x3 matrix using cofactor expansion on row 2. http://mathispower4u.com"
url: "https://www.youtube.com/watch?v=nqI0RkWeSwU"
favicon: ""
aspectRatio: "57.971014492753625"
```

## Determinant of a Transpose of a Matrix

```ad-summary
title: Definition
The Transpose of the $m \times n$ matrix $\mathbf{A}=[a_{ij}]$ is the $n \times m$ matrix $\mathbf{A}^T$ defined by:

$$
\mathbf{A}^T=[a_{ji}]
$$
```

**Theorem**: If $\mathbf{A}$ is a square matrix, then $\det(\mathbf{A}^T)=\det(\mathbf{A})$

https://math.libretexts.org/Bookshelves/Linear_Algebra/Fundamentals_of_Matrix_Algebra_(Hartman)/03%3A_Operations_on_Matrices/3.01%3A_The_Matrix_Transpose

## Determinant Using Elementary Row Operations

**Theorem**: Let $\mathbf{A}$ be an $n \times n$ matrix and let $\mathbf{B}$ be formed by performing one elementary row operation on $\mathbf{A}$
1. If $\mathbf{B}$ is formed from $\mathbf{A}$ by adding a scalar multiple of one row to another, then $\det(\mathbf{B})=\det(\mathbf{A})$
2. If $\mathbf{B}$ is formed from $\mathbf{A}$ by multiplying one of the rows of $\mathbf{A}$ by a scalar $k$, then $\det(\mathbf{B})=k \det(\mathbf{A})$
3. If $\mathbf{B}$ is formed by $\mathbf{A}$ by interchanging two rows of $\mathbf{A}$, then $\det(\mathbf{B})=-\det(\mathbf{A})$

### Example 1

$$
\begin{bmatrix}
1 & 2 & 4 \\
7 & 1 & 2 \\
2 & 3 & 1
\end{bmatrix}
$$
$$
\begin{matrix}
-7R_{1}+R_{2} \to R_{2} \\
-2R_{1}+R_{3}\to R_{3}
\end{matrix} = \begin{bmatrix}
1 & 2 & 4 \\
0 & -13 & -26 \\
0 & -1 & -7
\end{bmatrix}
$$
$$
-\frac{1}{13}R_{2}+R_{3} \to R_{3} \begin{bmatrix}
\boxed{1} & 2 & 4 \\
0 & \boxed{-13} & -26 \\
0 & 0 & \boxed{-5}
\end{bmatrix}
$$
$$
\det(\mathbf{A})=65
$$

### Example 2

$$
\begin{bmatrix}
8 & 5 & -1 \\
8 & 2 & 6 \\
6 & 8 & 7
\end{bmatrix}
$$
$$
-R_{1}+R_{2}\to R_{2} \begin{bmatrix}
8 & 5 & -1 \\
0 & -3 & 7 \\
6 & 8 & 7
\end{bmatrix}
$$
$$
-\frac{3}{4}R_{1}+R_{3} \to R_{3}\begin{bmatrix}
8 & 5 & -1 \\
0 & -3 & 7 \\
0 & \frac{17}{4} & \frac{31}{4} 
\end{bmatrix}
$$
$$
\frac{17}{12}R_{2} + R_{3} \to R_{3} \begin{bmatrix}
\boxed{8} & 5 & -1 \\
0 & \boxed{-3} & 7 \\
0 & 0 & \boxed {\frac{53}{3}}
\end{bmatrix}
$$
$$
\det(\mathbf{A})=-424
$$
## Adjoint and Inverse of a Matrix

**Theorem**: The inverse of an invertible matrix $\mathbf{A}$ is given by the formula:

$$
\mathbf{A}^{-1}= \frac{[\mathbf{A}_{ij}]^T}{|\mathbf{A}|}
$$
$$
\mathbf{A}^{-1}= \frac{\text{adj}{(\mathbf{A})}}{\det(\mathbf{A})}
$$
### Cofactor Matrix

Let $\mathbf{A}=[a_{ij}]$ be an $n \times n$ matrix. Then, the **cofactor matrix** of $\mathbf{A}$, dnoeted by $\text{cof}(\mathbf{A})$, is defined by:

$$
\text{cof}(\mathbf{A})=[\text{cof}(\mathbf{A}_{ij})] \text{ where } (\mathbf{A}_{ij}) \text{ is the } ij^{th} \text{ cofactor of } \mathbf{A}
$$

### Examples

#### Example 1

$$
\mathbf{A}= \begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}
$$
$$
\mathbf{A}_{11}=(-1)^{1+1}4=4
$$
$$
\mathbf{A}_{12}=(-1)^{1+2}3=-3
$$
$$
\mathbf{A}_{21}=(-1)^{2+1}2=-2
$$
$$
\mathbf{A}_{22}=(-1)^{2+2} 1= 1
$$
$$
\text{Cof}(\mathbf{A})= \begin{bmatrix}
4 & -3 \\
-2 & 1
\end{bmatrix}
$$
$$
\text{adj}(\mathbf{A})=\text{cof}(\mathbf{A})^T
$$
$$
= \begin{bmatrix}
4 & -3 \\
-2 & 1
\end{bmatrix}^{-1}
$$
$$
\text{adj}(\mathbf{A})= \begin{bmatrix}
4 & -2 \\
-3 & 1
\end{bmatrix}
$$
$$
\mathbf{A}^{-1}=\frac{1}{-2} \begin{bmatrix}
4 & -2 \\
-3 & 1
\end{bmatrix}
$$

#### Example 2

$$
\mathbf{A}= \begin{bmatrix}
7 & 4 \\
2 & 1
\end{bmatrix}
$$
$$
|\mathbf{A}|=ac-bd=-1
$$
*Cofactor Matrix*

$$
\mathbf{A}_{11}=(-1)^{1+1}1=1
$$
$$
\mathbf{A}_{12}=(-1)^{1+2}2=-2
$$
$$
\mathbf{A}_{21}=(-1)^{2+1}4=-4
$$
$$
\mathbf{A}_{22}=(-1)^{2+2} 7= 7
$$
$$
\text{cof}(\mathbf{A})\begin{bmatrix}
1 & -2 \\
-4 & 7
\end{bmatrix}
$$
$$
\text{adj}(A)= \begin{bmatrix}
1 & -4 \\
-2  & 7
\end{bmatrix}
$$
$$
\mathbf{A}^{-1}=-\begin{bmatrix}
1 & -4 \\
-2 & 7
\end{bmatrix}
$$
#### Example 3

$$
\begin{bmatrix}
1 & 2 & 3 \\
3 & 0 & 1 \\
1 & 2 & 1
\end{bmatrix}
$$
$$
-R_{1}+R_{3} \to R_{3} \begin{bmatrix}
1 & 2 & 3 \\
3 & 0 & 1 \\
0 & 0 & -2
\end{bmatrix}
$$
$$
=-2 \begin{bmatrix}
3 & 1 \\
0 & -2
\end{bmatrix}-(0)\dots+(0)\dots
$$
$$
-2[(3)(-2)-(1)(0)]
$$
$$
\det(\mathbf{A})=12
$$
*Cofactor Matrix*

$$
A_{11}=(-1)^{1+1} \begin{bmatrix}
0 & 1 \\
2 & 1
\end{bmatrix}=0-2=-2
$$
$$
A_{12}=(-1)^{1+2} \begin{bmatrix}
3 & 1 \\
1 & 1
\end{bmatrix}=-(3-1)=-2
$$
$$
A_{13}=(-1)^{1+3} \begin{bmatrix}
3 & 0  \\
1 & 2
\end{bmatrix}=6-0=6
$$
$$
A_{21}=(-1)^{2+1} \begin{bmatrix}
2 & 3 \\
2 & 1
\end{bmatrix} =-(2-6)=4
$$
$$
A_{22}=(-1)^{2+2}\begin{bmatrix}
1 & 3 \\
1 & 1
\end{bmatrix} = (1-3)=-2
$$
$$
A_{23}=(-1)^{2+3} \begin{bmatrix}
1 & 2 \\
1 & 2
\end{bmatrix} = -(2-2)=0
$$
$$
A_{31}=(-1)^{3+1} \begin{bmatrix}
2 & 3 \\
0 & 1
\end{bmatrix}=(2-0)=2
$$
$$
A_{32} = (-1)^{3+2} \begin{bmatrix}
1 & 3 \\
3 & 1
\end{bmatrix} = -(1-9)=8
$$
$$
A_{33}=(-1)^{3+3} \begin{bmatrix}
1 & 2 \\
3 & 0
\end{bmatrix}=(0-6)=-6
$$
$$
\text{cof}(\mathbf{A})= \begin{bmatrix}
-2 & -2 & 6 \\
4 & -2 & 0 \\
2 & 8 & -6
\end{bmatrix}
$$
$$
\text{adj}(\mathbf{A})=\begin{bmatrix}
-2 & 4 & 2 \\
-2 & -2 & 8 \\
6 & 0 & -6
\end{bmatrix}
$$
$$
\mathbf{A}^{-1}= \frac{1}{12} \begin{bmatrix}
-2 & 4 & 2 \\
-2 & -2 & 8 \\
6 & 0 & -6
\end{bmatrix}
$$
## Cramer’s Rule

$$
\mathbf{A}x=\mathbf{B}
$$
$$
x_{1}=\frac{|\begin{bmatrix}
b_{1} & a_{12} &\dots &  a_{1n} \\
b_{2} & a_{22} & \dots & a_{2n} \\
b_{n} & a_{n 1} & \dots & a_{nn}
\end{bmatrix}|}{|\mathbf{A}|}
$$
$$
x_{2}=\frac{|\begin{bmatrix}
a_{1} & b_{1} & \dots &  a_{1n} \\
a_{2} & b_{2} & \dots &  a_{2n} \\
a_{n1} & b_{n} & \dots & a_{nn}
\end{bmatrix}|}{|\mathbf{A}|}
$$
$$
\vdots
$$
$$
x_{n}= \frac{\boxed{}}{|\mathbf{A}|}
$$
### Examples

#### Example 1

```ad-question
Solve using Cramer's Rule
```

$$
2x-y=5; x+y=2
$$
$$
\mathbf{A}= \begin{bmatrix}
2 & -1 \\
1 & 1
\end{bmatrix}, \mathbf{B}= \begin{bmatrix}
5 \\
2
\end{bmatrix}
$$
$$
|\mathbf{A}|=(2)-(-1)=3
$$
$$
x= \frac{|\begin{bmatrix}
5 & -1 \\
2 & 1
\end{bmatrix}|}{3}=\frac{7}{3}
$$
$$
y= \frac{|\begin{bmatrix}
2 & 5 \\
1 & 2
\end{bmatrix}|}{3}= -\frac{1}{3}
$$
#### Example 2

```ad-question
Use Cramer's Rule to compute the $x_1$ solutin of the system
```

$$
\begin{matrix}
-2x_{1} +2x_{2}+ 4x_{3} =11 \\
-4x_{1}+6x_{2}+8x_{3} = 26 \\
-4x_{1}+4x_{2}+6x_{3}=14
\end{matrix}
$$
$$
\mathbf{A}= \begin{bmatrix}
-2 & 2 & 4 \\
-4 & 6 & 8 \\
-4 & 4 & 6
\end{bmatrix}, \mathbf{B}= \begin{bmatrix}
11 \\
26 \\
14
\end{bmatrix}
$$
**Find the Determinant of $\mathbf{A}$**
$$
\begin{matrix}
-2R_{1}+R_{2} \to R_{2} \\
-2R_{1}+R_{3} \to R_{3}
\end{matrix}\begin{bmatrix}
-2 & 2 & 4 \\
0 & 2 & 0 \\

\end{bmatrix}
$$
#comebacklater 
