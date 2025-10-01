Date: 30th September 2025
Date Modified: 30th September 2025
File Folder: Module 2
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Inverse of Matricies

```

# Inverse of a Matrix

```ad-summary
title: Definition
Let $\mathbf{A}$ and $\mathbf{B}$ are matrices where $\mathbf{AB}=\mathbf{I}=\mathbf{BA}$, then
- $\mathbf{A}$ is invertible
- $\mathbf{B}$ is the inverse of $\mathbf{A}$, denoted by $\mathbf{A}^{-1}$
```

$$
\mathbf{A}=
\begin{bmatrix}
a & b \\
c & d
\end{bmatrix}
$$
$$
\text{if } ad-bc \ne 0, \text{ then }\mathbf{A}^{-1}=\frac{1}{ad-bc} \begin{bmatrix}
d & -b \\
-c & a
\end{bmatrix}
$$
## Example 1: $2 \times 2$ Inverse

```ad-question
Find the inverse of the matrix below
```

$$
\mathbf{A} = \begin{bmatrix}
2 & 3 \\
1 & 4
\end{bmatrix}
$$
$$
\mathbf{A}^{-1} = \frac{1}{5} \begin{bmatrix}
4 & -3 \\
-1 & 2
\end{bmatrix}
$$
**Verify**

$$
\mathbf{A}^{-1} = \begin{bmatrix}
\frac{4}{5} & -\frac{3}{5}  \\
-\frac{1}{5} & \frac{2}{5}
\end{bmatrix}
$$
$$
\mathbf{I}=\mathbf{AA}^{-1}
$$
$$
= \begin{bmatrix}
2 & 3 \\
1 & 4
\end{bmatrix} \times \begin{bmatrix}
\frac{4}{5} & -\frac{3}{5} \\
-\frac{1}{5} & \frac{2}{5}
\end{bmatrix}
$$
$$
= \begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix}
$$
## Example 2: $n\times n$ Inverse

Setup: $[\mathbf{AI}]_{n \times n}$

Do Elementary Row Operations: $[\mathbf{I}\mathbf{A}^{-1}]$

$$
\mathbf{AI} = \begin{bmatrix}
2 & 3 & 1 & 0 \\
1 & 4 & 0 & 1
\end{bmatrix}
$$
$$
\Rightarrow R_{2} \leftrightarrow R_{1} \begin{bmatrix}
1 & 4 & 0 & 1 \\
2 & 3 & 1 & 0
\end{bmatrix} \rightarrow -2R_{1}+R_{2} \rightarrow R_{2} \begin{bmatrix}
1 & 4 & 0 & 1  \\
0 & -5 & 1 & -2
\end{bmatrix}
$$
$$
-\frac{1}{5}R_{2}\rightarrow R_{2}=\begin{bmatrix}
1 & 4 & 0 & 1 \\
0 & 1 & -\frac{1}{5} & \frac{2}{5}
\end{bmatrix}
$$
$$
-4R_{2}+R_{1}\to R_{1} \begin{bmatrix}
1 & 0 &  \frac{4}{5} & -\frac{3}{5} \\
0 & 1 & -\frac{1}{5} & \frac{2}{5}
\end{bmatrix}
$$
## Example 3: Find the Following Inverse

$$
\mathbf{A}=\begin{bmatrix}
-5 & -18 \\
2 & 7
\end{bmatrix}
$$
$$
\mathbf{AI}=\begin{bmatrix}
-5 & -18 & 1 & 0 \\
2 & 7 & 0 & 1
\end{bmatrix}
$$
$$
\begin{bmatrix}
2 & 7 & 0 & 1 \\
-5 & -18 & 1 & 0
\end{bmatrix}
$$
$$
\frac{1}{2}R_{1}\to R_{1} = \begin{bmatrix}
1 & \frac{7}{2} & 0 & \frac{1}{2} \\
-5 & -18 & 1 & 0
\end{bmatrix}
$$
$$
5R_{1}+R_{2}\to R_{2} \begin{bmatrix}
1 & \frac{7}{2} & 0 & \frac{1}{2} \\
0 & -\frac{1}{2} & 1 & \frac{5}{2}
\end{bmatrix}
$$
$$
-2R_{2}\to R_{2} \begin{bmatrix}
1 & \frac{7}{2} & 0 & \frac{1}{2} \\
0 & 1 & -2 & -5
\end{bmatrix}
$$
$$
-\frac{7}{2}R_{2}+R_{1}\to R_{1} \begin{bmatrix}
1 & 0 & 7 & 18 \\
0 & 1 & -2 & -5
\end{bmatrix}
$$
$$
\mathbf{A}^{-1} = \begin{bmatrix}
7 & 18 \\
-2 & -5
\end{bmatrix}
$$
## Example 4: Find the Following Inverse

$$
\mathbf{A}=\begin{bmatrix}
-1& 3  & -8 \\
0 & 1 & -1 \\
0 & 0 & 1
\end{bmatrix}
$$
$$
\mathbf{AI} = \begin{bmatrix}
-1 & 3 & -8 & 1 & 0 & 0 \\
0 & 1 & -1 & 0 & 1 & 0 \\
0 & 0 & 1 & 0 & 0 & 1
\end{bmatrix}
$$
$$
-R_{1}\to R_{1} \begin{bmatrix}
1 & -3 & 8 & -1 & 0 & 0 \\
0 & 1 & -1 & 0 & 1 & 0 \\
0 & 0 & 1 & 0 & 0 & 1
\end{bmatrix}
$$
$$
3R_{2}+R_{1}\to R_{1} \begin{bmatrix}
1 & 0 & 5 & -1 & -3 & 0 \\
0 & 1 & -1 & 0 & 1 & 0 \\
0 & 0 & 1 & 0 & 0 & 1
\end{bmatrix}
$$
$$
-5R_{3} +R_{1} \to R_{1} \begin{bmatrix}
1 & 0 & 0 & -1 & -3 & -5 \\
0 & 1 & -1 & 0 & 1 & 0 \\
0 & 0 & 1 & 0 & 0 & 1
\end{bmatrix}
$$
$$
R_{3}+R_{2}\to R_{2} \begin{bmatrix}
1 & 0 & 0 & -1 & -3 & -5 \\
0 & 1 & 0 & 0 & 1 & 1 \\
0 & 0 & 1 & 0 & 0 & 1
\end{bmatrix}
$$
$$
\mathbf{A}^{-1}=\begin{bmatrix}
-1 & -3 & -5 \\
0 & 1 & 1 \\
0 & 0 & 1
\end{bmatrix}
$$


