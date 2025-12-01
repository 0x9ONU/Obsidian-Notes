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

$$
