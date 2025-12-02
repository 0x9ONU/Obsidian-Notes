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
#### Example 4

$$
x^{\prime \prime}+4x=\cos t \quad x(0)=0; \quad x^\prime(0)=0
$$

$$
\laplace\{x^{\prime \prime}\}+4 \laplace \{ x \} = \laplace \{ \cos t \}
$$
$$
[s^2X(s)-sx(0)-x^\prime(0)]+4X(s) = \frac{s}{s^2+1}
$$
$$
(s^2+4)X(s)=\frac{s}{s^2+1}
$$
$$
X(s) = \frac{s}{(s^2+1)(s^2+4)}
$$
$$
x(t) = \laplace^{-1} \{ X(s) \}
$$
$$
x(t) = \laplace^{-1}\left\{  \frac{s}{(s^2+1)(s^2+4)}  \right\}
$$
**Partial Fraction**
$$
\frac{s}{(s^2+1)(s^2+4)} = \frac{As+B}{s^2+1} + \frac{Cs+D}{s^2+4}
$$
$$
s = (As+B)(s^2+4)+(Cs+D)(s^2+1)
$$
$$
s = As^3+4As+Bs^2+4B+Cs^3+Cs+Ds^2+D
$$
$$
s = (A+C)s^3+(B+D)s^2+(4A+C)s+4B+D
$$
*Coefficient Decomposition*
$$
A+C = 0
$$
$$
B+D = 0
$$
$$
4A+C=1
$$
$$
4B+D=0
$$
$$
A=-C \quad B=-D
$$
$$
4(-D)+D=0
$$
$$
-5D = 0
$$
$$
D = 0; \quad B=0
$$
$$
4(-C)+C = 1
$$
$$
C = -\frac{1}{3} \quad A = \frac{-1}{3}
$$
$$
= \laplace^{-1} \left \{ \frac{1}{3} \frac{s}{s^2+1} -\frac{1}{3} \frac{s}{s^2+4} \right \}
$$
$$
x(t) = \frac{1}{3}\cos t - \frac{1}{3} \cos 2t
$$
## Convolution

The convolution of $f * g$ of the piecewise continuous functions $f$ and $g$ is defined for $t \ge 0$ as following:

$$
\int_{0}^t f(\tau)g(t-\tau) d \tau = F(s)G(s) = f * g
$$

We will also write $f(t) * g(t)$ when convenient

We can further make a $u$-substitution ($u = t- \tau$) in the integral such that:

$$
f(t)*g(t)= \int_{0}^t f(t-u)g(u)du
$$


```ad-example
Lets find the convolution of $\cos t$ and $\sin t$

$$
\cos t * \sin t = \int_{0}^t \cos \tau \sin (t - \tau) d \tau
$$

Apply the trig identity:

$$
\cos A \sin B = \frac{1}{2}[\sin(A+B)-\sin(A-B)]
$$
to obtain:

$$
\cos t * \sin t = \int_{0}^t \frac{1}{2}[\sin t - \sin(2 \tau -1)]d \tau
$$
$$
= \eval{\frac{1}{2} \tau \sin t + \frac{1}{4 \cos (2 \tau -t)}}{\tau = 0}{t}
$$
```

### Example

#### Example 4 Using Convolution

$$
x(t) = \laplace^{-1} \left\{  \frac{s}{(s^2+1)(s^2+4)}  \right\}
$$
$$
= \laplace^{-1}\left\{  \frac{s}{s^2+4} \times \frac{1}{s^2+1}  \right\}
$$
$$
= \cos 2t * \sin t
$$
$$
= \int_{0}^t \cos 2 \tau \sin (t- \tau) d \tau
$$
$$
= \int_{0}^t \frac{1}{2}[\sin(2\tau + t- \tau)-\sin(2\tau - t+ \tau)]d \tau
$$
$$
= \frac{1}{2} \int_{0}^t [\sin(\tau + t)-\sin(3 \tau +1)] d \tau
$$
$$
= \eval{-\frac{1}{2}\cos(\tau +t)+\frac{1}{6}\cos(3\tau -t)}{0}{t}
$$
$$
\left [ -\frac{1}{2}\cos(2t)+\frac{1}{6}\cos(2t) \right]-\left [-\frac{1}{2}\cos t + \frac{1}{6}\cos t \right]
$$
$$
x(t) = -\frac{1}{3}\cos(2t)+\frac{1}{3}\cos t
$$
#### Example 5

$$
x(t) = \laplace^{-1} \left\{ \frac{1}{s(s-1)}  \right\}
$$
$$
= \laplace^{-1} \left\{  \frac{1}{s}* \frac{1}{s-1}  \right\}
$$
$$
= 1 * e^t
$$
$$
=\int_{0}^t e^{t-\tau} d \tau
$$
$$
u = t - \tau
$$
$$
du = -d \tau
$$
$$
\eval{-e^{t-\tau}}{0}{t}
$$
$$
[-e^{t-t}]-[-e^{t}]
$$
$$
x(t) = -1+e^t
$$

