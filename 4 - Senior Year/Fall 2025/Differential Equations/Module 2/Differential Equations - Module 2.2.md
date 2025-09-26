Date: 24th September 2025
Date Modified: 24th September 2025
File Folder: Module 2
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Row Elementary Matrix Operations

1. Add a scalar multiple of one row to another row, and replace the latter row with that sum
2. Multiply one row by a nonzero scalar
3. Swap the position of two rows

```ad-example
Perform the given row operations on $\textbf{A}$, where:

$$
\begin{bmatrix}
2  & -1 & 7 \\ 0  & 4 & -2 \\ 5 & 0 & 3
\end{bmatrix}
$$

$$-1R_1 \to R_1$$
$$R_1 + R_2 \to R_2$$
$$2R_2 + R_3 \to R_3$$
$$ R_3 \leftrightarrow R_2$$
```

$$
\begin{bmatrix}
2  & -1 & 7 \\ 0 & 4 & -2 \\ 5 & 0 & 3
\end{bmatrix} (-R_{1}\to R_{1}) \begin{bmatrix}
-2  & 1 & 7 \\ 0 & 4 & -2 \\ 5 & 0 & 3
\end{bmatrix}
$$
$$
\begin{bmatrix}
-2  & 1 & -7 \\ 0 & 4 & -2 \\ 5 & 0 & 3
\end{bmatrix} (R_{1}+R_{2}\to R_{2})\begin{bmatrix}
-2 & 1  &  -7 \\ -2  & 5 & -9 \\ 5 & 0 & 3
\end{bmatrix}
$$
$$
\begin{bmatrix}
-2 & 1  &  -7 \\ -2  & 5 & -9 \\ 5 & 0 & 3
\end{bmatrix}(2R_{2}+R_{3}\to R_{3}) \begin{bmatrix}
-2 & 1 & -7 \\ -2 & 5 & -9 \\ 1 & 10 & -15
\end{bmatrix}
$$
$$
\begin{bmatrix}
-2 & 1 & -7 \\ -2 & 5 & -9 \\ 1 & 10 & -15
\end{bmatrix} (R_3 \leftrightarrow R_2)
\begin{bmatrix}
-2 & 1 & -7 \\ 1 & 10 & -15 \\ -2 & 5 & -9 
\end{bmatrix}
$$

```ad-summary
title: Definition
Two matrices are called row equivalent if one can be obtain from the other by a (finite) sequence of elementary row operations
```

**Theorem**: If the augmented coefficient matrices of two linear systems are row equivalent, then the two systems have the same solution set.

# Reduced Row Echelon Form

```ad-summary
title: Definition
A matrix is in *reduced row echelon form* if its entries satisfy the following:
1. The first nonzero entry in each row is a 1
2. Each leading 1 comes in a column to the right of the leading 1s in rows above it.
3. All rows of all 0s come at the bottom of the matrix
4. *If a column contians a leading 1, then all other entries in taht column are 0. (FOR REDUCED ROW)*
```

**Theorem**: Every matrix $\textbf{A}$ is row equivalent to one and only one reduced row echelon matrix.

# Gaussian Elimination

```ad-summary
title: Definition
The technique for finding the reduced row echelon form of a matrix using the elementary row operations.
1. Create a leading 1
2. Use this leading 1 to put zeros underneath it
3. Repeat the above steps until all possible rows have leading 1
4. Put zeros above these elading 1s
```

## Example 1

```ad-question
Put the augmented matrix of the following system of lienar equations into reduced row echelon form

![[Pasted image 20250924113426.png]]
```

$$
\begin{bmatrix}
-3 & -3 & 9 & 12 \\ 2 & 2 & -4 & -2 \\ 0 & -2 & -4 & -8
\end{bmatrix}\left( -\frac{1}{3}R_{1}\to R_{1} \right) \begin{bmatrix}
1 & 1 & -3 & -4 \\ 2  & 2 & -4 & -2 \\ 0 & -2 & -4 & -8
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 1 & -3 & -4 \\ 2  & 2 & -4 & -2 \\ 0 & -2 & -4 & -8
\end{bmatrix} (-2R_{1}+R_{2}\to R_{2})\begin{bmatrix}
1 & 1 & -3 & -4 \\ 0 & 0 & 2 & 6 \\ 0  & -2 & -4 & -8
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 1 & -3 & -4 \\ 0 & 0 & 2 & 6 \\ 0  & -2 & -4 & -8
\end{bmatrix} (R_{2} \leftrightarrow R_{3}) \begin{bmatrix}
1 & 1 & -3 & -4 \\ 0  & -2 & -4 & -8 \\ 0 & 0 & 2 & 6
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 1 & -3 & -4 \\ 0  & -2 & -4 & -8 \\ 0 & 0 & 2 & 6
\end{bmatrix}\left( -\frac{1}{2} R_{2}\to R_{2} \right) \begin{bmatrix}
1 & 1 & -3 & -4 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 2 & 6
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 1 & -3 & -4 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 2 & 6
\end{bmatrix}(-R_{2}+R_{1}\to R_{1})\begin{bmatrix}
1  & 0 & -5 & -8 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 2 & 6
\end{bmatrix}
$$
$$
\begin{bmatrix}
1  & 0 & -5 & -8 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 2 & 6
\end{bmatrix} \left( \frac{1}{2}R_{3}\to R_{3} \right) \begin{bmatrix}
1 & 0 & -5 & -8 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 1 & 3
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -5 & -8 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 1 & 3
\end{bmatrix} (5R_{3}+R_{1}\to R_{1}) \begin{bmatrix}
1 & 0 & 0 & 7 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 1 & 3
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & 0 & 7 \\ 0 & 1 & 2 & 4 \\ 0 & 0 & 1 & 3
\end{bmatrix}(-2R_{3}+R_{2} \to R_{2}) \boxed{\begin{bmatrix}
1 & 0 & 0 & 7 \\ 0 & 1 & 0 & -2 \\ 0 & 0 & 1 & 3
\end{bmatrix}}
$$

$$
\boxed{x= 7; y=-2; z= 3}
$$
## Johnny Appleseed Example

$$
2x +y+3z=11
$$
$$
x+2y+z=6
$$
$$
y+2z=5
$$

$$
\begin{bmatrix}
2 & 1 & 3  & 11 \\ 1 & 2 & 1 & 6 \\ 0 & 1 & 2 & 5
\end{bmatrix}(R_{1}\leftrightarrow R_{2})\begin{bmatrix}
1 & 2 & 1 & 6 \\ 2  & 1 & 3 & 11 \\ 0 & 1 & 2 & 5
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 2 & 1 & 6 \\ 2  & 1 & 3 & 11 \\ 0 & 1 & 2 & 5
\end{bmatrix} (-2R_{1}+R_{2}\to R_{2})\begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & -3 & 1 & -1 \\ 0 & 1 & 2 & 5
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & -3 & 1 & -1 \\ 0 & 1 & 2 & 5
\end{bmatrix}(R_{2}\leftrightarrow R_{3})\begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & 1 & 2 & 5 \\ 0 & -3 & 1 & -1
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & 1 & 2 & 5 \\ 0 & -3 & 1 & -1
\end{bmatrix}(3R_{2}+R_{3}\to R_{3}) \begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 7 & 14
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 2 & 1 & 6 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 7 & 9
\end{bmatrix}(-2R_{2}+R_{1}\to R_{1}) \begin{bmatrix}
1 & 0 & -3 & -4 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 7 & 14
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -3 & -4 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 7 & 14
\end{bmatrix}\left( \frac{1}{7}R_{3}\to R_{3} \right)\begin{bmatrix}
1 & 0 & -3 & -4 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 1 & 2
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -3 & -4 \\ 0 & 1 & 2 & 5 \\ 0 & 0 & 7 & 14
\end{bmatrix}(-2R_{3}+R_{3}\to R_{3} \text{ AND } 3R_{3}+R_{1}\to R_{1}) \begin{bmatrix}
1 & 0 & 0 & 2 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 2
\end{bmatrix}
$$
$$
x=2; y=1; z=2
$$

## Example 3

$$
x_{1}-5x_{2}+2x_{3}-7x_{4}+11x_{5}=0
$$
$$
	x_{2}-13x_{3}+3x_{4}-7x_{5}=0
$$
$$
x_{4}-5x_{5}=0
$$
$$
\begin{bmatrix}
1 & -5 & 2 & -7 & 11 & 0 \\ 0 & 1 & -13 & 3 & -7 & 0 \\ 0 & 0 & 0 & 1 & -5 & 0
\end{bmatrix}(5R_{2}+R_{1}\to R_{1})\begin{bmatrix}
1 & 0 & -63 & 8 & -24 & 0 \\ 0 & 1 & -13 & 3 & -7 & 0 \\ 0 & 0 & 0 & 1 & -5 & 0
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 & -63 & 8 & -24 & 0 \\ 0 & 1 & -13 & 3 & -7 & 0 \\ 0 & 0 & 0 & 1 & -5 & 0
\end{bmatrix}(-8R_{3}+R_{1}\to R_{1} \text{ AND } -3R_{3}+R_{2}\to R_{2}) \begin{bmatrix}
1 & 0 & -63 & 0 & 16 & 0 \\ 0 & 1 & -13 & 0 & 8 & 0 \\ 0 & 0 & 0 & 1 & -5 & 0
\end{bmatrix}
$$
$$
\text{Leading Variables: } x_{1}, x_{2}, x_{4}
$$
$$
\text{Free Vairables: }x_{3},x_{5}
$$
$$
\text{Suppose: } x_{3}=t, x_{5}=s \quad \forall t,s \in \mathbb{R}
$$
$$
x_{4}-5x_{5}=0
$$
$$
x_{4}-5s=0
$$
$$
x_{4}=5s
$$

$$
x_{2}-13x_{3}+8x_{5}=0
$$
$$
x_{2}-13t+8s=0
$$
$$
x_{2}=13t-8s
$$

$$
x_{1}-63x_{3}+16x_{5}=0
$$
$$
x_{1}-63t+16s=0
$$
$$
x_{2}=63t-16s
$$

**Parametric Form**
$$
x_{1}=63t-16s
$$
$$
x_{2}=13t-8s
$$
$$
x_{3}=t
$$
$$
x_{4}=5s
$$
$$
x_{5}=s
$$
**Vector Form**

$$
\begin{bmatrix}
x_{1} \\ x_{2}\\x_{3} \\ x_{4} \\ x_{5}
\end{bmatrix}=\begin{bmatrix}
63 \\ 13 \\0\\0\\0
\end{bmatrix}t+\begin{bmatrix}
-16 \\ -8 \\ 0 \\ 5 \\ 1
\end{bmatrix}s
$$
$$
\vec{x}=\vec{v}_{1}t+\vec{v}_{2}s
$$
## Example 4

$$
3x-y-5z=9
$$
$$
y-10z=0
$$
$$
-2x+y=-6
$$

$$
\begin{bmatrix}
3 & -1 & -5 & 9 \\ 0 &  1 & -10 & 0 \\ -2 & 1 & 0 & -6
\end{bmatrix} \to \begin{bmatrix}
1 & 0 & -5 & 3 \\ 0 & 1 & -10 & 0 \\ 0 & 0 & 0 & 0
\end{bmatrix}
$$
$$
\text{Leading: }x, y
$$
$$
\text{Free: }z
$$
$$
z=t
$$

$$
y-10z=0
$$
$$
y-10t=0
$$
$$
y=10t
$$

$$
x-5z=0
$$
$$
x-5t=3
$$
$$
x=5t+3
$$

$$
\begin{bmatrix}
x \\ y \\ z
\end{bmatrix} = \begin{bmatrix}
5 \\ 10 \\ 1
\end{bmatrix}t + \begin{bmatrix}
3 \\ 0 \\ 0
\end{bmatrix}
$$


