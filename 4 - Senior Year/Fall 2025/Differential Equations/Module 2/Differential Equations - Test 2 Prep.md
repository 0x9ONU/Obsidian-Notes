Date: 7th October 2025
Date Modified: 7th October 2025
File Folder: Module 2
#diffeq

# Question 1: Inverse of a Matrix

```ad-question
Find the inverse $\mathbf{A}^{-1}$ of the given matrix by elementary row operations!
```

$$
\mathbf{A}=\begin{bmatrix}
2 & -1 & 3  \\
1 & 0 & 2 \\
3 & 1 & 4
\end{bmatrix}
$$
$$
\mathbf{AI} = \begin{bmatrix}
2 & -1 & 3 & 1 & 0 & 0  \\
1 & 0 & 2 & 0 & 1 & 0 \\
3 & 1 & 4 & 0 & 0 & 1
\end{bmatrix}
$$
$$R_{1}\leftrightarrow R_{2}
\begin{bmatrix}
1 & 0 & 2 & 0 & 1 & 0 \\
2 & -1 & 3 & 1 & 0 & 0 \\
3 & 1 & 4 & 0 & 0 & 1
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1} +R_{2}\to R_{2} \\
-3R_{1} +R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & 2 & 0 & 1 & 0 \\
0 & -1 & -1 & 1 & -2 & 0 \\
0 & 1 & -2 & 0 & -3 & 1
\end{bmatrix}
$$
$$
R_{2} \leftrightarrow R_{3} \begin{bmatrix}
1 & 0 & 2 & 0 & 1 & 0 \\
0 & 1 & -2 & 0 & -3 & 1 \\
0 & -1 & -1 & 1 & -2 & 0
\end{bmatrix}
$$
$$
R_{2}+R_{3} \to R_{3} \begin{bmatrix}
1 & 0 & 2 & 0 & 1 & 0 \\
0 & 1 & -2 & 0 & -3 & 1 \\
0 & 0 & -3 & 1 & -5 & 1
\end{bmatrix}
$$
$$
\frac{1}{3}R_{3} \to R_{3} \begin{bmatrix}
1 & 0 & 2 & 0 & 1 & 0 \\
0 & 1 & -2 & 0 & -3 & 1  \\
0 & 0 & 1 & -\frac{1}{3} & \frac{5}{3} & -\frac{1}{3}
\end{bmatrix}
$$
$$
\begin{matrix}
2R_{3}+R_{2} \to R_{2} \\
-2R_{3}+R_{1} \to R_{1}
\end{matrix} \begin{bmatrix}
1 & 0 & 0 & \frac{2}{3} & -\frac{7}{3} & \frac{2}{3} \\
0 & 1 & 0 & -\frac{2}{3} & \frac{1}{3} & \frac{1}{3}  \\
0 & 0 & 1 & -\frac{1}{3} & \frac{5}{3} & -\frac{1}{3}
\end{bmatrix}
$$
# Question 2: Determinant

```ad-question
Find the following Determinant
```

$$
\begin{bmatrix}
1 & 2 & -1 & 3 \\
0 & 1 & 4 & -2 \\
2 & -1 & 3 & 0 \\
1 & 0 & 2 & 5
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1}+R_{3} \to R_{3} \\
-R_{1}+R_{4} \to R_{4}
\end{matrix} \begin{bmatrix}
1 & 2 & -1 & 3 \\
0 & 1 & 4 & -2 \\
0 & -5 & 5 & -6 \\
0 & -2 & 3 & 2
\end{bmatrix}
$$
$$
(1) \begin{bmatrix}
1 & 4 & -2 \\
-5 & 5 & -6 \\
-2 & 3 & 2
\end{bmatrix} +(0)\dots+(0)\dots+(0)\dots
$$
$$
\begin{matrix}
5R_{1}+R_{2} \to R_{2} \\
2R_{1}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 4 & -2 \\
0 & 25 & -16  \\
0 & 11 & -2
\end{bmatrix}
$$
$$
(1) \begin{bmatrix}
25 & -16 \\
11 & -2
\end{bmatrix}+(0)\dots+(0)\dots
$$
$$
\det(\mathbf{A})_{2 \times 2}=ac-bd
$$
$$
= -50 + 176
$$
$$
\det(\mathbf{A})=126
$$
# Question 3: Scalar Multiplication and Addition

```ad-question
For the given matrices, compute $4\mathbf{A}+\mathbf{B}$
```

$$
\mathbf{A}=\begin{bmatrix}
3 & -2 \\
4 & 1
\end{bmatrix}, \mathbf{B}=\begin{bmatrix}
1 & 5 \\
-3 & 2
\end{bmatrix}
$$
$$
4\mathbf{A}+\mathbf{B}=4 \begin{bmatrix}
3 & -2 \\
4 & 1
\end{bmatrix}+\begin{bmatrix}
1 & 5 \\
-3 & 2
\end{bmatrix}
$$
$$
= \begin{bmatrix}
13 & -3 \\
13 & 6
\end{bmatrix}
$$
# Question 4: RREF

```ad-question
Reduce the given matrix into row reduced echelon form (RREF)
```

$$
\begin{bmatrix}
1 & 3 & -2 & 4 \\
2 & 5 & 1 & 7 \\
3 & 8 & 4 & 10
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1}+R_{2} \to R_{2} \\
-3R_{1}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 3 & -2 & 4 \\
0 & -1 & 5 & -1 \\
0 & -1 & 10 & -2
\end{bmatrix}
$$
$$
-R_{2}\to R_{2} \begin{bmatrix}
1 & 3 & -2 & 4 \\
0 & 1 & -5 & 1 \\
0 & -1 & 10 & -2
\end{bmatrix}
$$
$$
\begin{matrix}
-3R_{2}+R_{1} \to R_{1} \\
R_{2} + R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & 13 & 1 \\
0 & 1 & -5 & 1 \\
0 & 0 & 5 & -1
\end{bmatrix}
$$
$$
\frac{1}{5}R_{3} \to R_{3} \begin{bmatrix}
1 & 0 & 13 & 1 \\
0 & 1 & -5 & 1 \\
0 & 0 & 1 & -\frac{1}{5}
\end{bmatrix}
$$
$$
\begin{bmatrix}
5R_{3}+R_{2} \to R_{2} \\
-13R_{3} + R_{1} \to R_{1}
\end{bmatrix} \begin{bmatrix}
1 & 0 & 0  & \frac{18}{5} \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & -\frac{1}{5}
\end{bmatrix}
$$
# Question 5: System of Equations by Back Substitution

$$
x_{1}+2x_{2}+x_{3}+x_{4}=7
$$
$$
3x_{2}-x_{3}+2x_{4}=4
$$
$$
2x_{3}+x_{4}=10
$$
$$
x_{4}=3
$$
yk how to do this lol

# Question 6: System of Equations Using Elementary Row Operations

$$
2x_{1}+x_{2}-x_{3}=1
$$
$$
3x_{1}-2x_{2}+4x_{3}=7
$$
$$
x_{1}+4x_{2}+3x_{3}=9
$$
$$
\begin{bmatrix}
2 & 1 & -1 & 1 \\
3 & -2 & 4 & 7 \\
1 & 4 & 3 & 9
\end{bmatrix}
$$
$$
R_{1} \leftrightarrow R_{3}\begin{bmatrix}
1 & 4 & 3 & 9 \\
3 & -2 & 4 & 7 \\
2 & 1 & -1 & 1
\end{bmatrix}
$$
$$
\begin{matrix}
-3R_{1}+R_{2} \to R_{2} \\
-2R_{1}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 4 & 3 & 9 \\
0 & -14 & -5 & -20 \\
0 & -7 & -7 & -17
\end{bmatrix}
$$
$$
-\frac{1}{14}R_{2} \to R_{2} \begin{bmatrix}
1 & 4 & 3 & 9 \\
0 & 1 & \frac{5}{14} & \frac{10}{7} \\
0 & -7 & -7 & -17
\end{bmatrix}
$$
$$
\begin{matrix}
7R_{2}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 4 & 3 & 9  \\
0 & 1 & \frac{5}{14} & \frac{10}{7}  \\
0 & 0 & -\frac{9}{2} & -7
\end{bmatrix}
$$
$$
-\frac{9}{2}x_{3} =-7
$$
$$
x_{3} = \frac{14}{9}
$$
$$
x_{2}+\frac{5}{14}\left( \frac{14}{9} \right)=\frac{10}{7}
$$
$$
x_{2} = -\frac{55}{63}
$$
$$
x_{1}=-\frac{53}{63}
$$
