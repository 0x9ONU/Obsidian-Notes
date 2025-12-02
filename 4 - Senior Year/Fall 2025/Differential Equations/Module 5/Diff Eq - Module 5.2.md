Date: 1st December 2025
Date Modified: 1st December 2025
File Folder: Module 5
#diffeq

# Transformation of the Initial Value Problems

We now discuses the application of Laplace transforms to solve a linear differential equations with constant coefficients such that:

$$
ax^{\prime \prime}(t)+bx^\prime(t)+cx(t) = f(t)
$$
With the transformed equation being:

$$
a \laplace\{x^{\prime \prime}(t)\}+b\laplace \{ x^{\prime}(t) \}+c \laplace \{ x(t) \} = \laplace\{f(t) \}
$$
## *Theorem 1:* Transformation of Derivatives

Suppose that the function $f(t)$ is continuous and piecewise smooth for $t \ge 0$ and is of exponential order as $t \to \infty$, so that there exist non-negative constants $M$, $c$, and $T$ such that:

$$
|f(t)| \le Me^{ct} \quad \forall t \ge T
$$
Then $\laplace\{ f^\prime (t) \}$ exists for $s > c$, and

$$
\laplace \{ f^\prime (t) \} = s \laplace\{ f(t)\}-f(0)=sF(s)-f(0)
$$
Thus:

$$
\laplace \{f^{\prime \prime}(t)  \}=s^2 F(s)-sf(0)-f^\prime(0)
$$
$$
\laplace \{ f^{\prime \prime \prime}(t)\}=s^3F(s)-s^2f(0)-sf^\prime(0)-f^{\prime \prime}(0)
$$
**For $n$**

$$
\laplace\{f^{(n)}(t) \}=s^nF(s)-s^{n-1}f(s)-s^{n-2}f^\prime(0)-\dots-f^{n-1}(0)
$$

```ad-note
They must be piecewise smooth and continuous (where the derivative can be found across multiple intervals if necessary)
```

### Examples

#### Example 1

```ad-question
Solve the IVP by using Lapalce transform:

$$x^{\prime \prime}+4x=0; \quad x(0) = 5; \quad x^\prime(0)=0$$
```

**Goal**: Find $x(t)$

*Step 1*: Apply Laplace Transform

$$
\laplace \{ x^{\prime \prime}(t) \}+4\laplace \{x(t) \}=\laplace \{0 \}
$$

Suppose that $\laplace\{x(t)\}=X(s)$

$$
[s^2X(s)-sx(0)-x^{\prime}(0)]+4X(s)=0
$$
$$
s^2X(s)-5s-0+4X(s)=0
$$
$$
s^2X(s)+4X(s)-5s=0
$$
*Step 2*: Solve for $X(s)$

$$
s^2X(s)+4X(s)=5s
$$
$$
X(s)[s^2+4]=5s
$$
$$
X(s)=\frac{5s}{s^2+4}
$$
*Step 3*: Apply the inverse Laplace transform

$$
x(t)=\laplace^{-1}\{X(s)\}
$$
$$
 = \laplace^{-1}\left\{  \frac{5s}{s^2+4}  \right\}
$$
$$
\boxed{x(t) = 5\cos(2t)}
$$
#### Example 2

$$
x^{\prime \prime}+9x = 0; \quad x(0)=3 \quad x^\prime(0)=4
$$
$$
\laplace\{x(t)\}=X(s)
$$
$$
[s^2X(s)-sx(0)-x^\prime(0)]+9X(s)=0
$$
$$
s^2X(s)-3s-4+9X(s)=0
$$
$$
s^2X(s)+9X(s)=3s+4
$$
$$
X(s)=\frac{3s+4}{s^2+9}
$$
$$
x(t) = 3\laplace^{-1}\left\{  \frac{s}{s^2+9} \right\}+\frac{4}{3} \laplace^{-1} \left\{ \frac{3}{s^2+9}  \right\}
$$
$$
\boxed{x(t) = 3\cos(3t)+\frac{4}{3}\sin(3t)}
$$
#### Example 3

$$
x^{(2)}-x^\prime-6x=0; \quad x(0)=2; \quad x^\prime(0)=-1
$$

$$
[s^2X(s)-sx(0)-x^\prime(0)]-[sX(s)-x(0)]-6X(s)=0
$$
$$
[s^2X(s)-2s+1]+[-sX(s)+2]-6X(s)=0
$$
$$
X(s)[s^2-s-6]-2s+3=0
$$
$$
X(s)=\frac{2s-3}{s^2-s-6}
$$
$$
X(s)=\frac{2s-3}{(s-3)(s+2)}
$$
*Partial Fractions Time*
$$
\frac{2s-3}{(s-3)(s+2)}=\frac{A}{s-3}+\frac{B}{s+2}
$$
$$
2s-3=A(s+2)+B(s-3)
$$
$$
\text{At }s=-2
$$
$$
2(-2)-3=B(-2-3)
$$
$$
B = \frac{7}{5}
$$
$$
\text{At }s=3
$$
$$
2(3)-3=A(3+2)
$$
$$
A = \frac{3}{5}
$$
$$
x(t) = \frac{3}{5}\laplace^{-1}\left\{  \frac{1}{s-3}  \right\}+\frac{7}{5}\laplace^{-1}\left\{  \frac{1}{s+2}  \right\}
$$
$$
\boxed{x(t)=\frac{3}{5}e^{3t}+\frac{7}{5}e^{-2t}}
$$




