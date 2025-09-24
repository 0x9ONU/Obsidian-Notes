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
