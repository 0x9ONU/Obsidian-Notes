Date: 27th August 2025
Date Modified: 27th August 2025
File Folder: Materials
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Separation of Variables

```

# Separation of Variables

A first order differential equation is separable *if* it can be written as:
$$
\frac{dy}{dx} = f(t)g(y)
$$
You can **separate the variables** to keep the $x$ and $y$ terms together

$$
\frac{1}{g(y)}dy=f(x)dx
$$
$$
\boxed {\int \frac{1}{g(y)}dy = \int f(x)dx + C}
$$

**Example**: Separate the variables and solve the differential equation

$$
\frac{dy}{dx}=xy
$$
$$
\frac{1}{y}dy = xdx
$$
$$
\int \frac{1}{y}dy=\int x dx +C
$$
$$
\ln \mid y \mid = \frac{1}{2}x^2+C \Leftarrow \text{Implicit Solution}
$$

```ad-warning
The solution above is an implicit solution, since it is not exactly equal to $y$ explicitly
```

$$
e^{\ln \mid y \mid}=e^{1/2x^2+C}
$$
$$
\mid y \mid=e^{1/2x^2+C}
$$
$$
y = \pm e^{1/2x^2+C}
$$
$$
=\pm e^{1/2x^2} \times e^c
$$
$$
\boxed {y = Ae^{1/2x^2}} \Leftarrow \text{Explicit Solution}
$$

```ad-important
Only giving the implicit solution is enough *unless* it is **explicitly** asked for wink wink nudge nudge
```

## Find Solution of Separable Differential Equations

### Example 1

```ad-question
Solve for $y$ to make the following differential into the explicit form:

$$\frac{dy}{dx}=y\sin x$$
```

$$
\frac{1}{y}dy=\sin xdx
$$
$$
\int \frac{1}{y}dy = \int \sin xdx
$$
$$
\ln|y|=-\cos x +C
$$
$$
y = Ae^{-\cos x}
$$

