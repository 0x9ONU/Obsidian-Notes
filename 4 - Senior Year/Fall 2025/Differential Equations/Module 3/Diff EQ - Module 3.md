Date: 15th October 2025
Date Modified: 15th October 2025
File Folder: Module 3
#diffeq

# Vector Space
## Introduction to $n$-tuples

```ad-note
title: Remember
$\mathbb{R}$ represents the set of all real numbers
```

The notation $\mathbb{R}^n$ refers to *the collection of ordered lists of $n$ real numbers* ($n$-tuples), that is:
$$
\mathbb{R}^n = \{(x_{1},\dots, x_{n}) : x_{j} \in \mathbb{R} \text{ for } j=1\to n \}
$$
```ad-example
1. $\mathbb{R} = \{x | x \text{ is a real number} \}$
2. $\mathbb{R}^2 = \{ (x_1, x_2) | x_j \in \mathbb{R}\}$ (**Ordered Pairs**)
3. $(1, 0, 5) \in \mathbb{R}^3$
```

$\mathbb{R}^2$ determines the simple Cartesian coordinate system for a 2D system
![[Pasted image 20251015112334.png]]

## Moving Toward Vectors

We can move this idea into $n=3$, such that we can have 3 dimensions. This can create a **vector**!

```ad-tldr
title: Definition
Let $P = (p_1, \dots, p_n)$ be the coordinates of a point in $\mathbb{R}^n$. Then the vector $\vec{0P}$ with its tail at $0=(0,\dots,0)$ and its tip at $P$ is called the **position vector** of the point $P$:

$$
\vec{0P}= \begin{bmatrix}
p_{1} \\
\vdots \\
p_{n}
\end{bmatrix}
$$

$\therefore$ both $P = (p_1, \dots, p_n) \in \mathbb{R}^n$ and $\vec{0P} = [p_1, \dots, p_n]^T \in \mathbb{R}^n$
```


![[Pasted image 20251015112841.png]]

We can also determine the position vector from $P$ to $Q$ such that:

$$
\overrightarrow{PQ} = \left [ \begin{array}{c} q_{1}-p_{1}\\ \vdots \\ q_{n}-p_{n} \end{array} \right ] = \overrightarrow{0Q} - \overrightarrow{0P}\nonumber
$$
![[Pasted image 20251015113040.png]]

## Addition of Vectors in $\mathbb{R}^n$

If $\vec{u}= \begin{bmatrix} u_{1}  \\ \vdots \\ u_{n}\end{bmatrix}, \vec{v}=\begin{bmatrix} v_{1}  \\ \vdots \\ v_{n}\end{bmatrix}$, then $\vec{u}+\vec{v} \in \mathbb{R}^n$ and is defined by:

$$
\begin{aligned} \vec{u}+\vec{v} &= \left [ \begin{array}{c} u_{1} \\ \vdots \\ u_{n} \end{array} \right ] + \left [ \begin{array}{c} v_{1} \\ \vdots \\ v_{n} \end{array} \right ]\\ & = \left [ \begin{array}{c} u_{1}+v_{1} \\ \vdots \\ u_{n}+v_{n} \end{array} \right ]\end{aligned}
$$

```ad-note
The following laws remain true for vector addition:
1. Commutaive Law
2. Associative Law
3. Existence of an Additive Identity (0)
4. The Existence of an Additive Inverse
```

## Scalar Multiplication

If $\vec{u}\in \mathbb{R}^{n}$ and $k \in \mathbb{R}$ is a scalar, then $k\vec{u}\in \mathbb{R}^{n}$ is defined by:

$$
k\vec{u}=k\left [ \begin{array}{c} u_{1} \\ \vdots \\ u_{n} \end{array} \right ] = \left [ \begin{array}{c} ku_{1} \\ \vdots \\ ku_{n} \end{array} \right ]\nonumber
$$

```ad-note
The equivalent laws are also true for multplication 
```

## Magnitude of a Vector

Let $P=(p_{1},\dots,p_{n})$ be a point on $\mathbb{R}^n$. Then, the magnitude of a vector is defined as:

$$
m(P)=\left( \sum^n_{k=1} p_{k}^2 \right)^{1/2}
$$
## Distance on two Vectors

Let $P=(p_{1},\dots,p_{n})$ and $Q=(q_{1},\dots,q_{n})$ be two points in $\mathbb{R}^n$. Then the distance between these points is defined as:

$$
d(P,Q)= \left( \sum^n_{k=1} |p_{k}-q_{k}|^2 \right)^{1/2}
$$
## Unit Vector

Let $\vec{u}$ be a vector in $\mathbb{R}^n$. Then, we call $\vec{u}$ a **unit vector** if it has a length of one, such that:

$$
||\vec{u}||=1
$$

Let $\vec{v}$ be a vector in $\mathbb{R}^n$. Then, the vector $\vec{u}$ which has the same direction as $\vec{v}$ but length equal to 1 is the corresponding unit vector of $\vec{v}$:

$$
\vec{u}=\frac{1}{||\vec{v}||}\vec{v}
$$
### Example 1

Find the unit vector $\vec{u}$ in the direction of $\vec{v} = \left <-3, 3 \right>$

$$
|\vec{v}| = \sqrt{ (-3)^2+(3)^2 }= \sqrt{ 18 }=3\sqrt{ 2 }
$$
$$
\vec{u}= \frac{1}{|\vec{v}|}\vec{v}
$$
$$
=\frac{1}{3\sqrt{ 2 }} \left<-3, 3 \right> = \left < -\frac{1}{\sqrt{ 2 }}, \frac{1}{\sqrt{ 2 }} \right >
$$

## Vector Space Definition

Let 

### Subspace Definition

Let $W$ be a nonempty subset of the vector space $V$. Then $W$ is a *subspace* $V$ provided that $W$ itself is a vector space with the operations of addition and multiplication by scalars as defined in $V$. Two conditions:
1. If $\mathbf{u}$ and $\mathbf{v}$ are vectors in $W$, then $\mathbf{u}+\mathbf{v}$ is also in $W$
2. If $\mathbf{u}$ is in $W$ and $c$ is a scalar, then the vector $c \mathbf{u}$ is also in $W$


#### Example 1

```ad-question
Determine whether $W$ is a subspace:

$W$ is the set of vectors in $\mathbb{R}^3$ such that $x_1=5x_{2}$
```

$$
W = \left \{ (x_{1},x_{2},x_{3}) \space | \space x_{1}=5x_{2} \right \}
$$

**Is it non-empty? $\checkmark$**
- $\left < 0,0, 0 \right >\in W \rightarrow \text{YES}$

**Is it closed under addition?** $\checkmark$

Suppose that:
1. $\mathbf{u}=\left< u_{1},u_{2},u_{3} \right>$
2. $\mathbf{v}=\left< u_{1},u_{2},u_{3} \right> \in W$

$$
\text{is }\mathbf{u}+\mathbf{v}\in W?
$$
Since $\mathbf{u, v}\in W$
$$
u_{1}=5u_{2}
$$
$$
v_{1}=5v_{2}
$$
$$
\mathbf{u}+\mathbf{v}= \left < u_{1}+v_{1},u_{2}+v_{2},u_{3}+v_{3} \right >
$$
Replace values

$$
u_{1}+v_{1}=5u_{2}+5v_{2}
$$
$$
5(u_{2}+v_{2}) \Rightarrow \mathbf{u}+\mathbf{v} \in W \quad \checkmark
$$

**Is it Closed under Scalar Multiplication** $\checkmark$

Suppose that:
1.  $\mathbf{u}=\left< u_{1},u_{2},u_{3} \right>$
2. $\Rightarrow u_{1}=5u_{2}$
3. $c \in \mathbb{R}$

$$
c \mathbf{u}=\left <cu_{1},cu_{2},cu_{3} \right>
$$
$$
cu_{1}=5u_{2}
$$
$$
u_{1}=5(cu_{2})
$$
$$
\Rightarrow c \mathbf{u}\in W \quad \checkmark
$$
$$
\boxed {\therefore W \in \mathbb{R}^3}
$$
#### Example 2

```ad-question
Determine whether $W$ is a subspace:

$W$ is the set of vectors in $\mathbb{R}^3$ such that $x_2=1$
```

$$
W = \left \{ (x_{1},x_{2},x_{3}) \space | \space x_{2}=1 \right \}
$$
It is *not* closed under addition because:

$$
\mathbf{u}=\left <u_{1},u_{2},u_{3} \right>
$$
$$
\mathbf{v}=\left <v_{1},v_{2},v_{3} \right>
$$
$$
\mathbf{u}+\mathbf{v}= \left < u_{1}+u_{2},2,u_{3}+v_{3} \right > \not \in W
$$
$$
\boxed{\therefore W \not \in \mathbb{R}^3}
$$

## Linear Combination

The vector $\mathbf{w}$ is called a *linear combination* of the vectors $\mathbf{v}_{1},\mathbf{v}_{2}, \dots,\mathbf{v}_{k}$ provided that there exists scalars $c_{1},c_{2},\dots,c_{k}$ such that:

$$
\mathbf{w}=c_{1}\mathbf{v}_{1}+c_{2}\mathbf{v}_{2}+\dots+c_{k}\mathbf{v}_{k}
$$
Given a vector $\mathbf{w}$ in $\mathbb{R}^n$, the problem of determining whether or not $\mathbf{w}$ is a linear combination of the vectors $\mathbf{v}_{1},\mathbf{v}_{2}, \dots,\mathbf{v}_{k}$ amounts to solving a linear system to see whether we can find the scalars so that the above equation holds.

```ad-example
$$
\vec{v}_{1}= \left < 1, 0 \right>, \vec{v}_{2}=\left < 0, 1 \right > \in \mathbb{R}^2
$$
$$
\vec{w}=\left < 5,2 \right > = 5\vec{v}_{1}+2\vec{v}_{2}
$$
```

### Example 1

```ad-question
Express $\vec{w}$ as a linear combination of $\vec{u}$ and $\vec{k}$
```

$$
\vec{u}=(1,-2), \vec{v}=(-1,3), \vec{w} = (1, 0)
$$

Suppose that $\vec{w}=c_{1}\vec{u}+c_{2}\vec{v}$

$$
\begin{bmatrix}
1  \\
0
\end{bmatrix}=c_{1}\begin{bmatrix}
1 \\
-2
\end{bmatrix}
+c_{2} \begin{bmatrix}
-1  \\
3
\end{bmatrix}
$$
$$
\begin{bmatrix}
0  \\
1
\end{bmatrix}= \begin{bmatrix}
c_{1} \\
-2c_{1}
\end{bmatrix}+\begin{bmatrix}
-c_{2} \\
3c_{2}
\end{bmatrix}
$$
$$
\begin{bmatrix}
0 \\
1
\end{bmatrix}= \begin{bmatrix}
c_{1} -c_{2} \\
-2c_{1} +3c_{2}
\end{bmatrix}
$$
$$
\begin{matrix}
c_{1}-c_{2}=1 \\
-2c_{1}+3c_{2}=0
\end{matrix}
$$
$$
\begin{bmatrix}
\vec{u}  & \vec{v} & \vec{w} \\
- - & -- & -- & \\

1 & -1 & 1 \\
-2 & 3 & 0
\end{bmatrix}
$$
*Use Row Operations…*
$$
\begin{bmatrix}
1 & 0 & 3 \\
0 & 1 & 2
\end{bmatrix}
$$
$$
\boxed{\vec{w}=3\vec{u}+2\vec{v}}
$$
### Example 2

$$
\mathbf{u}= (3,4), \mathbf{v}=(2,3), \mathbf{w}=(0, -1)
$$
$$
\begin{bmatrix}
3 & 2 & -1 \\
4 & 3 & -1
\end{bmatrix}
$$
$$
\frac{1}{3}R_{1}\to R_{1} \begin{bmatrix}
1 & \frac{2}{3} & -\frac{1}{3} \\
4 & 3 & -1
\end{bmatrix}
$$
$$
-4R_{1}+R_{1} \begin{bmatrix}
1 & \frac{2}{3} & -\frac{1}{3} \\
0 & \frac{1}{3} & \frac{1}{3}
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -1 \\
0 & 1 & 1
\end{bmatrix}
$$
$$
\vec{w}=-\vec{u}+\vec{v}
$$

### Example 3

```ad-question
Is the following vector $\vec{b}$ the linear combination of $\vec{v}_1$ and $\vec{v}_2$
```

$$
\vec{v}_{1}= \begin{bmatrix}
11  \\
2 \\
4
\end{bmatrix}, \vec{v}_{2} = \begin{bmatrix}
-2 \\
1 \\
15
\end{bmatrix}, \vec{b}= \begin{bmatrix}
16  \\
7 \\
53
\end{bmatrix}
$$
$$
c_{1}\vec{v}_{1}+c_{2}\vec{v}_{2}=\vec{b}
$$
$$
\begin{bmatrix}
\vec{v}_{1} & \vec{v}_{2} & \vec{b} \\
-- & -- & -- \\
11 & -2 & 16 \\
2 & 1 & 7 \\
4 & 15 & 53
\end{bmatrix}
$$
*RREF later…*
$$
\begin{bmatrix}
1 & 0 & 2 \\
0 & 1 & 3 \\
0 & 0 & 0
\end{bmatrix}
$$
$$
\vec{b}=2\vec{v}_{1}+3\vec{v}_{2} \quad \checkmark
$$

### Example 4

```ad-question
Prove that $\begin{bmatrix} -22 \\ -16 \\ 0 \end{bmatrix}$ belongs to the span of $\left\{ \begin{bmatrix} -1  \\ -4 \\ 2 \end{bmatrix}, \begin{bmatrix} -5 \\ -2 \\ -1 \end{bmatrix} \right \}$ is a linear combination of those two vecotrs.
```

$$
\begin{bmatrix}
-1 & -5 & -22 \\
-4 & -2 & -16 \\
2 & -1 & 0
\end{bmatrix}
$$
*RREF*

$$
-R_{1} \to R_{1} \begin{bmatrix}
1 & 5 & 22 \\
-4 & -2 & -16 \\
2 & -1 & 0
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1}+R_{3}\to R_{3}
\end{matrix} \begin{bmatrix}
1 & 5 & 22 \\
0 & 18 & 72 \\
0 & -11 & -44
\end{bmatrix}
$$
$$
\frac{1}{18}R_{2} \to R_{2}
\begin{bmatrix}
1 & 5 & 22 \\
0 & 1 & 4 \\
0 & -11 & -44
\end{bmatrix}
$$
$$
\begin{matrix}
-5R_{2} +R_{1} \to R_{1} \\
11R_{2} +R_{3} \to R_{3}
\end{matrix}
\begin{bmatrix}
1 & 0 & 2 \\
0 & 1 & 4 \\
0 & 0 & 0
\end{bmatrix}
$$

$$
\boxed{\vec{b}=2\vec{v}_{1}+4\vec{v}_{2}}
$$


## Spanning Set

The collection of all linear combinations of a set of vectors $\left\{ \vec{v}_{1}, \dots, \vec{v}_{k} \right\}$ in $\mathbb{R}^n$ is known as the span of these vectors and is written as: $\text{span}\left\{ \vec{v}_{1}, \dots, \vec{v}_{k} \right\}$

```ad-example
$$
\vec{v}_{1}= \left < 1, 0 \right>, \vec{v}_{2}=\left < 0, 1 \right > \in \mathbb{R}^2
$$
$$
\vec{w} = xv_1 + yv_2
$$
```

## Linear Independence

The vectors in a vector space $V$ are said to be *linearly independent* provided that the equation:

$$
c_{1}\vec{v}_{1}+c_{2}\vec{v}_{2}+\dots+c_{k}\vec{v}_{k}=0
$$

**ONLY IF** it has a trivial solution $\boxed{c_{1}+c_{2}+\dots+c_{k}=0}$

```ad-example
That is, the only linear combination of $V$ that respresents the zero vector $\mathbf{0}$ is the trival combination:

$$0 \vec{v}_1+0\vec{v}_2+\dots+0 \vec{v}_k$$
```

```ad-note
A set is called *linearly dependent* if it does not fit this rule such that

$$c_{1}+c_{2}+\dots+c_{k}\ne0$$
```

You may also use the *determinate* to find if a vector is linearly independent or not for an $n \times n$ matrix.
- This is also true for $n \times k$ where some $k \times k$ submatrix of $\mathbf{A}$ has nonzero determinant
### Examples 
#### Example 1

```ad-question
Determine whether the given vectors $\vec{u}, \vec{v}, \vec{w}$ are linearly independent or dependnet.
```

$$
\vec{u}=\left<2,0,1 \right>, \vec{v}=\left < -3, 1, -1 \right >, \vec{w}=\left < 0, -2, -1 \right >
$$
Suppose that $a \vec{u}+b \vec{v} + c \vec{w}=\vec{0}$

$$
2a-3b+0c=0
$$
$$
0a+1b-2c=0
$$
$$
1a-1b-1c=0
$$
*Make the coefficient matrix*
$$
\begin{bmatrix}
2 & -3 & 0 \\
0 & 1 & -2 \\
1 & -1 & -1
\end{bmatrix}
$$
$$
R_{1}\leftrightarrow R_{3} \begin{bmatrix}
1 & -1 & -1 \\
0 & 1 & -2 \\
2 & -3 & 0
\end{bmatrix}
$$
$$
-2R_{1}+R_{3}\to R_{3}
\begin{bmatrix}
1 & -1 & -1 \\
0 & 1 & -2 \\
0 & -1 & 2
\end{bmatrix}
$$
$$
\begin{matrix}
R_{2}+R_{1}\to R_{1} \\
R_{2}+R_{3}\to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & -3 \\
0 & 1 & -2 \\
0 & 0 & 0
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -3 & 0 \\
0 & 1 & -2 & 0 \\
0 & 0 & 0 & 0
\end{bmatrix}
$$

```ad-important
Since there is a free variable for $c$, this means that the system is **linearly dependent**.
```
$$
c =t
$$
$$
b-2c=0
$$
$$
b=2t
$$
$$
a-3c=0
$$
$$
a=3t
$$

$$
3t\vec{u}+2t \vec{v}+t \vec{w} = \vec{0}
$$

#### Example 2

$$
\vec{u}= \left < 1, 1, 0 \right >, \vec{v} \left < 5, 1, 3 \right >, \vec{w} = \left < 0, 1, 2 \right >
$$
$$
\begin{bmatrix}
1 & 5 & 0 \\
1 & 1 & 1 \\
0 & 3 & 2
\end{bmatrix}
$$
$$
-R_{1}+R_{2} \to R_{2}
\begin{bmatrix}
1 & 5 & 0 \\
0 & -4 & 1  \\
0 & 3 & 2
\end{bmatrix}
$$
$$
-\frac{1}{4}R_{2} \to R_{2} \begin{bmatrix}
1 & 5 & 0 \\
0 & 1 & -\frac{1}{4} \\
0 & 3 & 2
\end{bmatrix}
$$
$$
\begin{matrix}
-5R_{2}+R_{1} \to R_{1} \\
-3R_{2}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & \frac{5}{4} \\
0 & 1 & -\frac{1}{4} \\
0 & 0 & \frac{11}{4}
\end{bmatrix}
$$
$$
\frac{4}{11}R_{3} \to R_{3} \begin{bmatrix}
1 & 0 & \frac{5}{4} \\
0 & 1 & -\frac{1}{4} \\
0 & 0 & 1
\end{bmatrix}
$$
$$
c_{1}=0, c_{2}, c_{3}=0
$$
```ad-important
It is linearly independent!!
```

#### Example 3

```ad-question
Find if the following vectors are linearly dependent/independent by using the *determinate*.
```

$$
\vec{v}_{1}=\left < 1, 0 \right >, \vec{v}_{2}=\left < 3, 9 \right >
$$

$$
\begin{bmatrix}
1 & 3 \\
0 & 9
\end{bmatrix} = 9-0\ne 0
$$
Linearly *independent*

#### Example 4

$$
\vec{v}_{1}=\left< -5, -7 \right >, \vec{v}_{2}=\left < -10, -14 \right >
$$
$$
\begin{bmatrix}
-5 & -10 \\
-7 & -14
\end{bmatrix}=70-70=0 \Rightarrow \boxed{\text{Linearly Dependent}}
$$
### Example 5

$$
\vec{v}_{1}= \left < 1, 0 \right >, \vec{v}_{2}= \left < 3, 9 \right >, \vec{v}_{3}= \left < -5, -7 \right >
$$
$$
\begin{bmatrix}
1 & 3 & -5 \\
0 & 9 & -7
\end{bmatrix}
$$
Since there are more unknowns then equations, we know that this *must* be **linearly dependent**

#### Example 5

$$
\begin{bmatrix}
1 & 0 & 3 \\
4 & -2 & 9 \\
2 & -1 & 5
\end{bmatrix}
$$
$$
\begin{matrix}
-4R_{1}+R_{2}\to R_{2} \\
-2R_{1}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & 3 \\
0 & -2 & -3 \\
0 & -1 & -1
\end{bmatrix}
$$
$$
\begin{bmatrix}
-2 & -3 \\
-1 & -1
\end{bmatrix} = 2-3=-1 \Rightarrow \boxed{\text{Linearly Independent}}
$$
## Basis

A finite set $S$ of vectors in a vector space $V$ is called *basis* for $V$ provided that:
1. The vectors in $S$ are linearly independent
2. The vectors in $S$ spans $V$

```ad-example
$$\vec{v}_1 = \left < 1, 0 \right > , \vec{v}_2 = \left < 0, 1 \right >$$
By previous examples, we already know that this is linearly independent
$$\mathbb{R}^2 = \text{span} \left \{ \vec{v}_1, \vec{v}_2 \right \}$$
Therefore, $\vec{v}_1$ and $\vec{v}_2$ is a basis for $\mathbb{R}^2$
```

#### Example 1

Linearly independent?
$$
\left | \begin{matrix}
1 & 0 & 0 \\
2 & 1 & 2 \\
-1 & 0 & -1
\end{matrix} \right |
$$

$$
\begin{matrix}
\det(A)=-1 \ne 0
\end{matrix}
$$
## Finding a Basis for the Solution Space of a Given Homogeneous Linear System

Now we consider the following homogeneous linear system:

$$
\vec{A}\vec{x}=\vec{0}
$$
in which $\vec{A}$ is an $m \times n$ matrix, so the system consists of $m$ equations in the $n$ variables $x_{1},x_{2},\dots,x_{n}$.
- It’s solution space $W$ is then a  subspace of $\mathbb{R}^n$
- We want to determine the dimension of $W$ and, moreover, to find an explicit basis of $W$

```ad-note
- The Dimension is how many vectors are part of the set $W$
- The rank is the number of leading variables in the answer
```
#### Algorithm A

1. Reduce the coefficient matrix $\mathbf{A}$ to the echelon form.
2. Identify the $r$ leading variables and the $k=n-r$ free variables. If $k-0$, then $W=\left \{ \mathbf{0} \right \}$
3. Set the free variables equal to parameters $t_{1},t_{2},\dots,t_{k}$, and then solve by back substitution for the leading variables in terms of these parameters.
4. Let $\mathbf{v}_{j}$ be the solution vector obtained by setting $t_{j}$ equal to 1 and the other parameters equal to zero. Then $\left \{ \mathbf{v}_{1}, \mathbf{v}_{2},\dots,\mathbf{v}_{k} \right \}$ is a basis for $W$

### Examples

#### Example 1

```ad-question
Find a basis for the solution space of the homogenous linear system:


$$
\begin{matrix}
3x_{1}+6x_{2}-x_{3}-5x_{4}+5x_{5}=0 \\
2x_{1}+4x_{2}-x_{3}-3x_{4}+2x_{5}=0 \\
3x_{1}+6x_{2}-2x_{3}-4x_{4}+x_{5}=0
\end{matrix}
$$

```

$$
\begin{bmatrix}
3 & 6 & -1 & -5 & 5 \\
2 & 4 & -1 & -3 & 2 \\
3 & 6 & -2 & -4 & 1
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1}+3R_{2} \to R_{2} \\
-R_{1}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
3 & 6 & -1 & -5 & 5 \\
0 & 0 & -1 & 1 & -4 \\
0 & 0 & -1 & 1 & -4
\end{bmatrix}
$$
$$
-1R_{2}+R_3\to R_{3} \begin{bmatrix} 
x_{1} & x_{2} & x_{3} & x_{4} & x_{5} \\

3 & 6 & -1 & -5 & 5 \\
0 & 0 & -1 & 1 & -4 \\
0 & 0 & 0 & 0 & 0
\end{bmatrix}
$$
**Leading**: $x_{1}, x_{3}$
**Free**: $x_{2},x_{4},x_{5}$

$$
x_{2}=t,x_{4}=t_{2},x_{5}=t_{3}
$$
$$
-x_{3}+x_{4}-4x_{5}=0
$$
$$
x_{3}=t_{2}-4t_{3}
$$
$$
3x_{1}+6x_{2}-x_{3}-5x_{4}+5x_{5}
$$
$$
3x_{1}+6t_{1}-(t_{2}-4t_{3})-5t_{2}+5t_{3}=0
$$
$$
3x_{1}+6t_{1}-6t_{2}+9t_{3}=0
$$
$$
x_{1}=-2t_{1}+2t_{2}-3t_{3}
$$

**Assume that $t_{1}=1$, and $t_{2},t_{3}=0$**
$$
\vec{v}_{1} = \begin{bmatrix}
-2 \\
1 \\
0 \\
0 \\
0
\end{bmatrix}
$$
**Assume that $t_{2}=1$, and $t_{1},t_{3}=0$**
$$
\vec{v}_{2} = \begin{bmatrix}
2 \\
0 \\
1 \\
1 \\
0
\end{bmatrix}
$$
**Assume that $t_{3}=1$, and $t_{1},t_{2}=0$**
$$
\vec{v}_{3} = \begin{bmatrix}
-3 \\
0 \\
-4 \\
0 \\
1
\end{bmatrix}
$$

```ad-important
The basis of the soltuion space:
$$
\left \{ \vec{v}_{1},\vec{v}_{2},\vec{v}_{3} \right \}
$$
This makes the dimension of the solution space three!
```

#### Example 2

$$
\begin{matrix}
x_{1}-2x_{2}+3x_{3}=0 \\
2x_{1}-3x_{2}-x_{3}=0
\end{matrix}
$$
$$
\begin{bmatrix}
1 & -2 & 3 \\
2 & -3 & -1
\end{bmatrix}
$$
$$
-2R_{1}+R_{2}\to R_{2} \begin{bmatrix}
1 & -2 & 3 \\
0 & 1 & -7
\end{bmatrix}
$$
**Leading**: $x_{1},x_{2}$
**Free**: $x_{3}$

$$
x_{3}=t
$$
$$
x_{2}-7t=0
$$
$$
x_{2}=7t
$$
$$
x_{1}-2x_{2}+3x_{3}=0
$$
$$
x_{1}-2(7t)+3(t)=0
$$
$$
x_{1}=11t
$$
**Assuming $t=1$**

$$
\vec{v} = 
\begin{bmatrix}
11 \\
7 \\
1
\end{bmatrix}
$$
$$
\therefore W = \left \{ \vec{v}_{1} \right \}
$$
*Dimension of Basis*: 1

#### Example 3

$$
\begin{matrix}
x_{1}-3x_{2}+2x_{3}-4x_{4}=0 \\
2x_{1}-5x_{2}+8x_{3}-3x_{4}=0
\end{matrix}
$$
## Eigenvalues and Eigenvectors

```ad-summary
title: Definition
```

Let $A$ be an $n \times n$ matrix and let $X \in \mathbb{C}^n$ be a *nonzero* vector which:

$$
AX =\lambda X
$$
For some *scalar* $\lambda$. Then $\lambda$ is called an **eigenvalue** of the matrix $A$ and $X$ and is an **eigenvector** of $A$ associated with $\lambda$, or $\lambda$-eigenvector of $A. The set of all eigenvectors of an $n \times n$ matrix of $A$ is denoted by $\sigma(A)$ and is referred to as the **spectrum of $A$** 

