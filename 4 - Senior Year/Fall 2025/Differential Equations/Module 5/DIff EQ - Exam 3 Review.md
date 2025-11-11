Date: 11th November 2025
Date Modified: 11th November 2025
File Folder: Module 5
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Question 1: Vibrations

Solve the following equation for free undamped vibrations

$$
x^{\prime \prime}+25x =0, \quad x(0)=-2, \quad x^{\prime}(0)=-5
$$

**General Solution**
$$
r^2+25=0
$$
$$
r = \pm 5i
$$

$$
x(t)=c_{1}\cos 5t + c_{2} \sin 5t
$$
**IVP**

$$
x(0)=-2
$$
$$
(-2) = c_{1}\cos 5(0)+c_{2} \sin (0)
$$
$$
c_{1}=-2
$$
$$
x^\prime (t) = -5c \sin 5t + 5c_{2} \cos 5t
$$
$$
(-5)=-5c_{1} \sin (0)+5 c_{2} (0)
$$
$$
- 5= 5c_{2}
$$
$$
c_{2} = -1
$$
$$
x(t)=-2\cos 5t - \sin 5t
$$
**Standard Form**

$$
x(t)=C \cos (\omega t - \alpha)
$$
$$
C = \sqrt{c_{1}^2+c_{2}^2 }
$$
$$
C = \sqrt{ 5 }
$$
$$
\omega = 5
$$
$$
\alpha = \tan^{-1} \left( \frac{1}{2} \right) + \pi
$$
$$
\boxed{x(t) = \sqrt{ 5 }\cos\left( 5t-\pi-\tan^{-1}\left( \frac{1}{2} \right) \right)}
$$

# Question 2: Initial Value Problem for Non-homogeneous

$$
y^{\prime \prime}+5y^{\prime}+4y = 2+4x, \quad y(0)=1, \quad y^{\prime}(0)=0
$$
$$
y=y_{c}+y_{p}
$$
**Complimentary**

$$
r^2+5r+4=0
$$
$$
(r+1)(r+4)=0
$$
$$
r = -1, -4
$$
$$
y_{c}=c_{1}e^{-x}+c_{2}e^{-4x}
$$
**Trial Function and Particular**

$$
y_{t}=A+Bx
$$
$$
y^\prime_{t}=B
$$
$$
y_{t}^{\prime \prime}=0
$$
$$
0+5B+4(A+Bx)=2+4x
$$
$$
5B+4A+5Bx=2+4x
$$
$$
4B = 4 \Rightarrow B = 
$$
$$
4A+5B = 2
$$
$$
A = \frac{-3}{4}
$$
$$
y_{p}=-\frac{3}{4}+x
$$
**General Solution**

$$
y=c_{1}e^{-x}+c_{2}e^{-4x}+x-\frac{3}{4}
$$
$$
y(0)=1
$$
$$
(1)=c_{1}+c_{2}-\frac{3}{4}
$$
$$
c_{1}+c_{2} = \frac{7}{4}
$$
$$
y^{\prime}=-c_{1}e^{-x}-4c_{2}e^{-4x}+1
$$
$$
(0)=-c_{1}-4c_{2}+1
$$
$$
c_{1}+4c_{2}=1
$$
*Solve for System of Equations*

$$
\begin{matrix}
\not{c_{1}}+c_{2}=\frac{7}{4} \\
\not{-c_{1}}-4c_{2}=-1
\end{matrix}
$$

$$
-3c_{2}=-\frac{3}{4}
$$
$$
c_{2}= -\frac{1}{4}
$$
$$
c_{1}+c_{2} = \frac{7}{4}
$$
$$
c_{1} +\left( -\frac{1}{4} \right) = \frac{7}{4}
$$
$$
c_{1} = 2
$$
**Final Solution**

$$
y = 2e^{-x}-\frac{1}{4}e^{-4x}+x-\frac{3}{4}
$$


# Question 3

Find the diagonalizing matrix $P$ and diagonal matrix $D$ such that $P^{-1}AP=D$ where:

$$
A = \begin{matrix}
-5 & 2 \\
-7 & 4
\end{matrix}
$$
**Find the Eigenvalues**

$$
| \mathbf{A}- \lambda \mathbf{I}| = 0
$$
$$
\left | \begin{bmatrix}
-5 & 2 \\
-7 & 4
\end{bmatrix} - \lambda \begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}\right | =0
$$
$$
\left | \begin{matrix}
-5- \lambda & 2 \\
-7 & 4- \lambda
\end{matrix} \right | = 0
$$
$$
(-5-\lambda)(4-\lambda)+14 =0
$$
$$
-20+5 \lambda-4 \lambda + \lambda^2+14 = 0
$$
$$
\lambda^2+ \lambda - 6 =0
$$
$$
(\lambda + 3)(\lambda -2)=0
$$
$$
\lambda_{1}=-3, \lambda_{2}=2
$$
**Find eigenvectors**

$$
(\mathbf{A}- \lambda \mathbf{I})=0
$$
*For $\lambda_{1}=-3$*

$$
\begin{bmatrix}
-5-(-3) & 2 \\
-7 & 4-(-3)
\end{bmatrix} \begin{bmatrix}
x  \\
y
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix}
$$
$$
\begin{bmatrix}
-2 & 2 \\
-7 & 7
\end{bmatrix}\begin{bmatrix}
x \\
y
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix}
$$
$$
\begin{matrix}
-2x+2y = 0 \\
-7x + 7y = 0
\end{matrix} \Rightarrow -x+y = 0, x=y
$$
$$
\vec{v}_{1}=\begin{bmatrix}
1 \\
1
\end{bmatrix}
$$
*For $\lambda_{2}=2$*

$$
\begin{bmatrix}
-7 & 2 \\
-7 & 2
\end{bmatrix} \begin{bmatrix}
x \\
y
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix}
$$
$$
\begin{matrix}
-7x+2y =0 \\
-7x+2y = 0
\end{matrix} \Rightarrow -7x+2y=0 \Rightarrow7x=2y
$$
$$
\vec{v}_{2}=\begin{bmatrix}
2 \\
7
\end{bmatrix}
$$

**Diagonalization**

$$
P = \begin{bmatrix}
1 & 2 \\
1 & 7
\end{bmatrix}
$$
$$
D = \begin{bmatrix}
-3 & 0 \\
0 & 2
\end{bmatrix}
$$
# Question: Basis

Find the basis for the solution space of:

$$
x_{1}+x_{2}+2x_{3}+x_{4}=0
$$
$$
2x_{1}-x_{2}+x_{3}-x_{4}=0
$$
**Find Free Variables**

$$
\begin{bmatrix}
1 & 1 & 2 & 1 \\
2 & -1 & 1 & -1
\end{bmatrix}
$$
$$
-2R_{1}+R_{2}\to R_{2} \begin{bmatrix}
1 & 1 & 2 & 1 \\
0 & -3 & -3 & -3
\end{bmatrix}
$$
$$
- \frac{1}{3} R_{2} \to R_{2}\begin{bmatrix}
1 & 1 & 2 & 1 \\
0 & 1 & 1 & 1
\end{bmatrix}
$$
**Leading $x_{1}, x_{2}$**

**Free $x_{3}, x_{4}$**

$$
x_{3}=s, x_{4}=t
$$
$$
x_{2}+x_{3}+x_{4}=0
$$
$$
x_{2}+s+t=0
$$
$$
x_{2} = -s-t
$$
$$
x_{1}+x_{2}+2x_{3}+x_{4}=0
$$
$$
x_{1}+(-s-t)+2s+t=0
$$
$$
x_{1} +s=0
$$
$$
x_{1}=-s
$$
*Vector Form*

$$
\begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3} \\
x_{4}
\end{bmatrix} = \begin{bmatrix}
-s \\
-s-t \\
s \\
t
\end{bmatrix}
$$
**Finding the Basis**

Assume $s=0, \quad t=1$
$$
\vec{v}_{1} = \begin{bmatrix}
0 \\
-1 \\
0 \\
1
\end{bmatrix}
$$
Assume $s=1 \quad t = 0$

$$\vec{v}_{1}=
\begin{bmatrix}
-1 \\
-1 \\
1 \\
0
\end{bmatrix}
$$
**Basis Solution Space**

$$
\text{Basis Solution Space}=\left \{ \vec{v}_{1}\vec{v}_{2} \right \}
$$
# Question 5: Linear Independance

Determine whether the following vectors are linearly independent:

$$
v_{1}= \left < 1, 1, 0 \right >, \vec{v}_{2}= \left < 0, 2, 1 \right >, \vec{v}_{3}=\left < 2, 3, 1 \right >
$$

$$
c_{1}\vec{v}_{1}+c_{2}\vec{v}_{2}+c_{3}\vec{v}_{3}= \vec{0}
$$

```ad-hint
The vectors will always be in an $n\times n$ space so you can use the determinant!
```

$$ \left | 
\begin{matrix}
1 & 0 & 2 \\
1 & 2 & 3 \\
0 & 1 & 1
\end{matrix} \right |
$$
$$
-1R_{1}+R_{2}\to R_{2} \begin{bmatrix}
1 & 0 & 2 \\
0 & 2 & 1 \\
0 & 1 & 1
\end{bmatrix}
$$
$$
(1) \left | 
\begin{matrix}
2 & 1 \\
1 & 1
\end{matrix} \right | - (0)\dots + (0)\dots
$$
$$
=2-1
$$
$$
2-1 \ne 0
$$
**It is Linearly Independent!!**

