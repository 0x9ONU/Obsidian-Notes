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

```ad-note
They msut be piecewise smooth and continuous (where the derivative can be found across multiple intervals if necessary)
```


