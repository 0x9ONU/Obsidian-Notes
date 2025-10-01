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
## Example 1

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



