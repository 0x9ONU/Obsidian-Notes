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

