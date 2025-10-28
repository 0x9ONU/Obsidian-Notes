Date: 27th October 2025
Date Modified: 27th October 2025
File Folder: Module 4
#diffeq

```ad-abstract
title: Topics
collapse: open

- Second Order Linear Equations

```

# Second-Order Homogeneous Linear Equations

## Definition and IVP
A second order differential equation is said to be **linear** if it can be written as:
$$
y^{\prime \prime} + p(x)y^\prime +q(x)y=f(x)
$$

```ad-summary
title: Theorem
Suppose $p$ and $q$ are continuous on an open interval ($a, b$), let $x_{0}$ be any point in ($a,b$), and let $k_{0}$ and $k_{1}$ be arbitrary real numbers. Then, **the initial value problem** should be:

$$
y^{\prime \prime}+p(x)y^\prime+q(x)y=0, y(x_{0})=k_{0}, y^\prime(x_{0})=k_{1}
$$
If $p, q$ are contionus on $(a,b)$ and $x_0 \in (a, b)$ 
$\Rightarrow \space \exists$ unique solution on $(a,b)$

```

### Example

#### Example 1

```ad-question

Consider the initial value problem:

$$
(x^2-25)y^{\prime \prime}+3xy^\prime-2y=0
$$

What is the largest interval $m$ which a unique solution exists to the IVP with $y(7)=k_{0}, y^\prime(7)=k_{1}$?
```

**Get Into the Standard Form**

$$
y^{\prime \prime}+\frac{3x}{x^2-25}y^\prime-\frac{2}{x^2-25}y=0
$$
$$
p = \frac{3x}{x^2-25}, q=-\frac{2}{x^2-25}
$$
**Where are these two functions continuous?**

At both $x=5,-5$, the function is not continuous:

$$
\therefore (-\infty, -5),(-5, 5),(5, \infty)
$$
Since the initial condition makes sure that $x=7$, that means that that the largest interval the solution is on has to be on $(5, \infty) \quad \square$ 

#### Example 2

```ad-question
Consider the initial value problem:

$$
y^{\prime \prime}+x^2y+\sqrt{x-8}y=0
$$

What is the largest interval $m$ which a unique solution exists to the IVP with $y(13)=k_{0}, y^\prime(13)=k_{1}$?
```

**Where are both functions continuous?**: 

$$
(8, \infty) \Rightarrow \therefore \text{ the solution must be on this interval}
$$

## The General Solution of the Equation

$$
y^{\prime \prime}+py^{\prime}+qy=0
$$

Suppose $y_{1}$ and $y_{2}$ are the solutions of equation above, we would like to prove that $y = c_{1}y_{1}+c_{2}y_{2}$ is a solution to the equation.

$$
y_{1}^{\prime \prime}+py_{1}^\prime +qy_{1}=0, y_{2}^{\prime \prime}+py_{2}^\prime +qy_{2}=0
$$
$$
=c_{1}y_{1}^{\prime \prime}+c_{2}y_{2}^{\prime \prime}+p(c_{1}y_{1}^\prime c_{2}y_{2}^\prime)+q(c_{1}y_{1}+c_{2}y_{2})
$$
$$
= c_{1}(y_{1}^{\prime\prime}+py_{1}^\prime +qy_{1})+c_{2}(y_{2}^{\prime\prime}+py_{2}^\prime+qy_{2})=0
$$
## Linear Independence

```ad-summary
title: Definition
Suppose $p$ and $q$ are continuous on $(a,b)$. Then a set $\left \{ y_{1},y_{2} \right \}$ of solutions of:

$$
y^{\prime \prime}+p(x)y^\prime+q(x)y=0
$$
on $(a,b)$ is a fudnamental set if and only if $\left \{ y_{1},y_{2} \right \}$ is linearly independent on $(a,b)$
```

### Example

```ad-question
Suppose 
- $y_{1}=2, y_{2}=2x$
- $y_{1}=2x, y_{2}=3x$
- $y_1=e^{3x}, y_2=e^{2x}$ 

Are they linearly independent?
```

1. YES!
2. NO! ($\frac{2x}{3x}=\frac{2}{3}$)
3. YES! ($\frac{e^{3x}}{e^{2x}}=e^x$)

### Checking Linear Independence using Wronskian

$$
\left |
\begin{matrix}
y_{1} & y_{2} & \dots & y_{n} \\
y^\prime_{1} & y^\prime_{2} & \dots & y^\prime_{n} \\
y^{\prime \prime}_{1} & y^{\prime \prime}_{2} & \dots & y^{\prime \prime}_{n} \\
\vdots & \vdots & \ddots & \vdots \\
y_{1}^{n-1} & y_{2}^{n-1} & \dots & y_{n}^{n-1}
\end{matrix}
\right | \ne 0 \quad \forall (a,b)
$$
If this is true, then $\left\{ y_{1},\dots,y_{n} \right \}$ is linearly independent on $(a,b)$

#### Examples

##### Example 1

$$
W \left \{2,2x,\cos x,\sin x \right \} = \left | \begin{matrix}
2 & 2x & \cos x & \sin x \\
0 & 2 & -\sin x & \cos x \\
0 & 0 & -\cos x & -\sin x \\
0 & 0 & \sin x & -\cos x
\end{matrix} \right |
$$
*Cofactor expansion*:
$$
2 \times \left | 
\begin{matrix}
2 & -\sin x & \cos x \\
0 & -\cos x & -\sin x \\
0 & \sin x & -\cos x
\end{matrix}
\right |
$$
$$
4 \times \left | \begin{matrix}
-\cos x & -\sin x \\
\sin x & -\cos x
\end{matrix} \right |
$$
$$
4(\cos^2 x +\sin^2x)
$$
$$
W = 4
$$
**They are Linearly Independent!**
##### Example 2

$$
y^{\prime\prime}-5y^\prime-6y=0
$$
$$
y_{1}=e^{6t}, y_{2}=e^{-t}
$$

*Find the Wronskian*

$$
W = \left | \begin{matrix}
e^{6t} & e^{-t} \\
6e^{6t} & -e^{-t}
\end{matrix} \right |
$$
$$
= -e^{5t}-6e^{5t}
$$
$$
W = -7e^{5t}
$$
**Linearly Independent!**

*Find the Solution of the IVP*

$$
y(0)=-7; y^\prime(0) = -21
$$

$$
y=c_{1}e^{6t}+c_{2}e^{-t}
$$
$$
-7 = c_{1}e^{6(0)}+c_{2}e^{-0}
$$
$$
-7=c_{1}+c_{2} \rightarrow 
$$
$$
y^\prime=6c_{1}e^{6t}-c_{2}e^{-t}
$$
$$
(-21)=6c_{1}-c_{2}
$$
*Solve System of Equations to get..*
$$
y=-4e^{6t}-3e^{-t}
$$
## Worksheet Examples

### Existence and Uniqueness #1

Consider the initial value problem:

$$
(x^2-4)y^{\prime \prime}+3xy^\prime+2y=0, y(x_{0})=y_{0}, y^\prime(x_{0})=y_{1}
$$

#### Work

$$
p=\frac{3x}{x^2-4}, q=\frac{2}{x^2-4}
$$
Interval:
$$
(-\infty, -2)(-2, 2)(2, \infty)
$$


- What is the largest interval containing $x_{0}=0$ on which a unique solution exists? $(-2, 2)$
- $x_{0}=2$: NO INTERVAL
- $x_{0}=-3$: $(-\infty, -2)$

### Existence and Uniqueness #2

What is the largest interval on which a unique solution exists:
$$
(x^2-1)y^{\prime\prime}+(x-1)y^\prime + y = 0, y(1)=2, y^\prime(1)=0
$$
$$
P = \frac{1}{x+1}, Q=\frac{1}{x^2-1}
$$
$$
(-\infty, -1)(-1, 1)(1, \infty)
$$

Since the initial condition starts at $x=1$, so no interval exists for this set.

### Wronskian and Linear Independence

#### Question 1

Compute the Wronskian of the functions:

$$
y_{1}(x)=e^{2x}, y_{2}(x)=x^2
$$
