Date: 2nd September 2025
Date Modified: 2nd September 2025
File Folder: Module 1
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Linear First-Order Differential Equations

```

# Definition

A firs order differential equation is said to be **linear** if it can be written as:

$$
y^\prime +p(x)y=f(x)
$$
where $p(x)$ and $f(x)$ are continuous on some interval

```ad-note
A first order differneital equaiotn cannnot be written like this is *nonlinear*
```

```ad-example
$$y^\prime + \frac{3}{x^2}y = 1$$
$$\sin x\frac{dy}{dx}+3y=\cos x \Rightarrow \frac{dy}{dx}+\frac{3}{\sin x}y= \csc x$$
```

# Steps for Getting Solutions of Linear First-Order Differential Equations

## Example 1:

```ad-question
$$y^\prime -2xy=e^{x^2}$$
```

**Step 1**: Check if it is in the general form

It *is* in the general form!

$$
p(x)=-2x, f(x)=e^{x^2}
$$

```ad-important
$p(x)$ is the **integrating factor**
```

**Step 2**: Find *integrating factor* using the general form

$$
\boxed {\text{Integrating Factor} = r(x)= e^{\int p(x)dx}}
$$
$$
=e^{\int-2xdx}
$$
$$
r(x) =e^{-x^2}
$$
**Step 3:** Multiply both sides of the differential equation by the integrating factor.

$$
y^\prime e^{-x^2}-2xe^{x^2}y=e^{x^2} \times e^{-x^2}
$$

**Step 4:** Replace

```ad-note
This makes the left side equal to $\frac{d}{dx}(y\times r(x))$
$$\frac{d}{dx}(ye^{-x^2})$$
```

$$
\frac{d}{dx}(ye^{-x^2})=1
$$

**Step 5:** Solve for $y$

$$
ye^{-x^2}=1dx
$$
$$
ye^{-x^2}=x+C
$$
$$
\boxed{y=(x+C)e^{x^2}}
$$

## Example 2:

$$
y^\prime+\frac{3}{x^2}y=1
$$
$$
r(x)=e^{\int p(x)dx}
$$
$$
=e^{\int 3/x^2dx}
$$
$$
r(x)=e^{-3/x}
$$
$$
\frac{d}{dx}(ye^{-3/x})=e^{-3/x}
$$$$
ye^{-3/x}=\int e^{-3/x}dx
$$$$
y = e^{-3/x}\int e^{-3/x}dx +C
$$
## Example 3:

$$
3xy^\prime+y=12x
$$
$$
y^\prime+\frac{1}{3x}y=4
$$
$$
p(x)=\frac{1}{3x}
$$
$$
r(x)=e^{\int 1/3x dx}
$$
$$
=e^{1/3 \int 1/x dx}
$$
$$
=e^{1/3 \ln|x|}
$$
$$
=e^{\ln|x|^{1/3}}
$$
$$
r(x)=|x|^{1/3} = \begin{bmatrix}
x^{1/3} \text{ if } x \ge {0} \\ (-x)^{1/3} \text{ if } x < 0 
\end{bmatrix}
$$

*For $x > 0$*

$$
\frac{d}{dx}(yx^{1/3})=4x^{1/3}
$$
$$
yx^{1/3}=\int 4x^{1/3}dx
$$
$$
yx^{1/3}=4*3x^{4/3}+C
$$
$$
y = 3x+Cx^{-1/3}
$$

# Initial Value Problems

## Example 1:

```ad-question
Solve the following initial value problem:

$$y^\prime + y = 3, y(0)=0$$
```

$$
p(x)=1, f(x)=3
$$
$$
r(x)=e^{\int(1)dx}
$$
$$
r(x) = e^x
$$
$$
\frac{d}{dx}(ye^x)= 3e^x
$$
$$
ye^x=3\int e^xdx
$$
$$
ye^x=3e^x+C
$$
$$
y = 3+Ce^{-x}
$$

$$
(0)=3+Ce^{0}
$$
$$
C= -3
$$
$$
\boxed{y=3+3e^{-x}}
$$









