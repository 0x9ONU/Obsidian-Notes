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
## Constant Coefficients for LH2O

$$
ay^{\prime \prime}+by^\prime+cy =0
$$
Suppose $y =e^{rx}$ is the solution

$$
y^\prime = re^{rx}, y^{\prime \prime}=r^2e^{rx}
$$
$$
a(r^2e^{rx})+b(re^{rx})+c(e^{rx})=0
$$
$$
e^{rx}(ar^2)+b(re^{rx})+c(e^{rx})=0
$$
$$
ar^2+br+c-0
$$

### Examples

#### Example 1

```ad-question
Find the generation solution of:

$$
y^{\prime \prime}-6y^\prime +8y=0
$$
```

*Characteristic Equation*
$$
r^2+6r+8=0
$$
$$
(r-4)(r-2)
$$
$$
r=4, 2
$$
$$
y=c_{1}e^{4x}+c_{2}e^{2x}
$$

#### Example 2

```ad-question
Find the generation solution of:

$$
y^{\prime \prime}-6y^\prime +13y=0
$$
```

$$
r^2-6r+13=0
$$
$$
r = \frac{-(-6) \pm \sqrt{ 30-4(1)(13) }}{2}
$$
$$
r=3+2i, 3-2i
$$
$$
e^{(3+2i)x},e^{(3-2i)x} 
$$
*Euler’s*

```ad-note
title: Remember

$$
e^{i \theta} = \cos \theta+i\sin \theta
$$
$$
e^{-i \theta}=\cos \theta-i\sin \theta
$$
```


$$
e^{3x}[\cos(2x)+i\sin(2x)], e^{3x}[\cos(2x)-i\sin(2x)]
$$
$$
y = c_{1}e^{3x}\cos(2x)+c_{2}e^{3x}\sin(2x)
$$

```ad-important
In general:
$$
a \pm ib = e^{ax}\cos bx+e^{ax}\sin (bx)
$$
```
#### Example 3

$$
y^{\prime \prime}+k^2y=0 \quad k > 0
$$
$$
r^2+k^2=0
$$
$$
r^2=-k^2
$$
$$
r = \pm \sqrt{ -k }
$$
$$
r = \pm i k
$$
$$
y = c_{1}\cos kx+c_{2}\sin kx
$$
### Example 4

```ad-question
Find the general solution:


```

$$
y^{\prime \prime \prime}-3y^{\prime \prime}+3y^{\prime}-y=0
$$
$$
r^3-3r^2+3r-1=0
$$
$$
\text{Try} \quad r =1
$$
$$
(r-1)(r^2-2r+1)=0
$$
$$
(r-1)(r-1)(r-1)=0
$$
$$
r = 1, 1, 1
$$
$$
e^x, xe^x, x^2e^x
$$
*General Solution*
$$
y =c_{1}e^x+c_{2}xe^x+c_{3}x^2e^x
$$
#### Example 5

```ad-question
Find the general solution:

$$
y^{(4)}+8^{\prime \prime}-9y=0
$$
```

*Characteristic*
$$
r^4+8r^2-9=0
$$
$$
\text{Try} \quad r=1
$$
$$
(r-1)(r^3+r^2+9r+9)
$$
$$
\text{Try} \quad r=-1
$$
$$
(r-1)(r+1)(r^2+9)=0
$$
$$
r=1, -1, \pm 3i
$$

$$
e^x, e^{-x}, \cos(3x), \sin(3x)
$$
$$
 y = c_{1}e^x+c_{2}e^{-x}+c_{3}\cos(3x)+c_{4}\sin(3x)
$$
#### Example 6

$$
y^{(3)}-y^{\prime \prime}+16y^{\prime}-16y=0
$$
$$
r^2-r^2+16r-16r=0
$$
$$
r^2(r-1)+16(r-1)=0
$$
$$
(r-1)(r^2+16)=0
$$
$$
r=1, r=\pm 4i
$$
$$
e^x, \cos(4x), \sin(4x)
$$
$$
y = c_{1}e^x+c_{2}\cos(4x)+c_{3}\sin(4x)
$$

#### Example 7

```ad-question
Solve the Initial Value Problem


$$
y^{(3)}-2y^{\prime \prime}+4y^\prime -8y=0; y(0)=2, y^\prime(0)=-2, y^{\prime \prime}(0)=0
$$
```

*General Solution*

$$
r^3-2r^2+4r-8=0
$$
$$
r^2(r-2)+4(r-2)=0
$$
$$
(r-2)(r^2+4)=0
$$
$$
r=2, \pm 2i
$$
$$
y = c_{1}e^{2x}+c_{2}\cos(2x)+c_{3}\sin(2x)
$$
*Value Time*

$$
y(0)=2
$$
$$
(2)=c_{1}+c_{2}
$$
$$
y^\prime(0)=-2
$$
$$
y^\prime=2c_{1}e^{2x}-2c_{2}\sin(2x)+2c_{3}\cos(2x)
$$
$$
(-2)=2c_{1}+2c_{3}
$$
$$
y(0)^{\prime \prime}=0
$$
$$
y^{\prime \prime}=4c_{1}e^{2x}-4c_{2}\cos(2x)-4c_{3}\sin(2x)
$$
$$
(0)=4c_{1}-4c_{2}
$$
*System of Equations*
$$
\begin{matrix}
c_{1}+c_{2}=2 \\
2c_{1}+2c_{3}=-2 \\
4c_{1}-4c_{2}=0
\end{matrix}
$$
$$
\begin{bmatrix}
1 & 1 & 0 & 2 \\
2 & 0 & 2 & -2 \\
4 & -4 & 0 & 0
\end{bmatrix}
$$
$$
\begin{matrix}
-2R_{1}+R_{2} \to R_{2} \\
-4R_{1}+R_{3}\to R_{3}
\end{matrix} \begin{bmatrix}
1 & 1 & 0 & 2 \\
0 & -2 & 2 & -6 \\
0 & -8 & 0 & -8
\end{bmatrix}
$$
$$
-\frac{1}{2}R_{2}\to R_{2} \begin{bmatrix}
1 & 1 & 0 & 2 \\
0 & 1 & -1 & 3 \\
0 & -8 & 0 & -8
\end{bmatrix}
$$
$$
\begin{matrix}
-1R_{2}+R_{1} \to R_{1} \\
8R_{2}+R_{3} \to R_{3}
\end{matrix} \begin{bmatrix}
1 & 0 & 1 & -1 \\
0 & 1 & -1 & 3 \\
0 & 0 & -8 & 16
\end{bmatrix}
$$
$$
c_{3}=-2, c_{2}=1, c_{1}= 1
$$
**SOLUTION**

$$
\boxed{
y=e^{2x}+\cos(2x)-2\sin(2x)}
$$

