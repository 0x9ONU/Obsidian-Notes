Date: 5th September 2025
Date Modified: 5th September 2025
File Folder: Module 1
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Homogeneous First-Order Differential Equations
- Bernoulli Equations

```

# Homogeneous First-Order

A first-order differential equation which can be written in the form:

$$
\frac{dy}{dx}=f\left( \frac{y}{x} \right)
$$
is known as **homogeneous first-order differential equation**. Homogeneous equations can be transformed into a separable equation by substituting:

$$
v=\frac{y}{x}
$$

```ad-note
If $v=\frac{y}{x}$, then $y=vx$; $\frac{dy}{dx}=v+x\frac{dv}{dx}$
```

## Example 1

$$
x^2y^\prime=y^2+xy, y(1)=1
$$
$$
\frac{dy}{dx}=\frac{y^2}{x^2}+\frac{xy}{x^2}
$$
$$
\frac{dy}{dx}=\left( \frac{y}{x} \right)^2+\left( \frac{y}{x} \right) \equiv f\left( \frac{y}{yx} \right)
$$

```ad-important
This makes it a first-order homogeneous function!
```

$$
\text{Suppose } v=\frac{y}{x}
$$
$$
y=vx
$$
$$
\frac{dy}{dx}=v+x \frac{dv}{dx}
$$

$$
v+x \frac{dv}{dx}=v^2+v
$$
$$
x \frac{dv}{dx}=v^2
$$
$$
\frac{1}{v^2}dv=\frac{1}{x}dx
$$
$$
\int \frac{1}{v^2}dv = \int \frac{1}{x} x
$$
$$
-\frac{1}{v}=\ln|x|+C
$$
$$
-\frac{x}{y}=\ln|x|+C
$$
$$
y = -\frac{x}{\ln|x|+C}
$$
$$
(1)= -\frac{(1)}{\ln|1|+C}
$$
$$
1=-\frac{1}{C}
$$
$$
C = -1
$$
$$
\boxed{y=-\frac{x}{\ln|x|-1}}
$$

## Example 2

```ad-question
Solve:
$$xy \frac{dy}{dx}=x^2+3y^2$$
```

$$
\frac{dy}{dx}=\frac{x}{y}+\frac{3y}{x}
$$
$$
v+x \frac{dv}{dx}=\frac{1}{v}+3v
$$
$$
x \frac{dv}{dx}=\frac{1}{v}+2v
$$
$$
x \frac{dv}{dx}=\frac{1+2v^2}{v}
$$
$$
\frac{v}{1+2v^2}dv=\frac{1}{x}dx
$$
$$
\int \frac{v}{1+2v^2}dv=\int \frac{1}{x}dx
$$
$$
u = 1+2v^2, du = 4vdv
$$
$$
\frac{1}{4}\int \frac{1}{u}du=\ln|x|+C
$$
$$
\frac{1}{4}\ln|1+2v^2|=\ln|x|+C
$$
$$
\frac{1}{4}\ln(1+2 \frac{y^2}{x^2})=\ln|x|+C
$$


# Bernoulli Equations

A differential equation of the form:

$$
\frac{dy}{dx}+p(x)y=Q(x)y^n
$$

is called the **Bernoulli Equation**

```ad-example
A simple Bernoulli Equation is:

$$\frac{dy}{dx}-y=xy^2$$
```

To solve the Bernoulli equation, use the substitution:

$$
u=y^{1-n}
$$

## Example 1

```ad-question
Solve the following Bernoulli Equation:

$$\frac{dy}{dx}-y=xy^2$$
```

Since it is a Bernoulli, then you make $u$ such that:

$$
u =y^{1-n}\Rightarrow u = y^{-1}
$$
$$
u = \frac{1}{y}
$$
$$
y = \frac{1}{u}
$$
$$
\frac{dy}{dx}=-\frac{1}{u^2} \frac{du}{dx}
$$

$$
-\frac{1}{u^2} \frac{du}{dx} -\frac{1}{u}=x \frac{1}{u^2}
$$
$$
\frac{du}{dx}+u=-x
$$
```ad-important
USE INTEGRATING FACTOR (first order)
```
$$
r(x)=e^{\int 1 dx}
$$
$$
r(x)=e^x
$$

$$
\frac{e^xdu}{dx} +ue^x=-xe^x
$$
$$
\frac{d}{dx}(ue^x)=-xe^x
$$
$$
ue^x=-\int xe^xdx+C
$$
```ad-note
Use Integration by parts
```

$$
u=-x, dv =e^xdx
$$
$$
du=-dx, v=e^x
$$

$$
uv-\int vdu
$$
$$
-xe^x+\int e^xdx
$$
$$
-xe^x+e^x+C
$$

$$
ue^x=-xe^x+e^x+C
$$
$$
u=-x+1+\frac{C}{e^x}
$$
$$
\frac{1}{y}=-x+1+\frac{C}{e^x}
$$
$$
\boxed{y=\frac{1}{-x+1+Ce^{-x}}}
$$

## Example 2

```ad-question
Solve the following:

$$(1+x^2)\frac{dy}{dx}+2xy=\frac{1}{(1+x^2)y}$$
```

$$
\frac{dy}{dx}+\frac{2x}{(1+x^2)}y=\frac{1}{(1+x^2)^2}y^{-1}
$$
$$
u=y^{1-(-1)}=y^2
$$
$$
\frac{du}{dx}=2y \frac{dy}{dx}
$$
$$
\frac{dy}{dx}=\frac{1}{2y} \frac{du}{dx}
$$

$$
y\frac{dy}{dx} + \frac{2x}{(1+x^2)}y^2=\frac{1}{(1+x^2)^2}
$$
$$
y\left( \frac{1}{2y} \right) \frac{du}{dx}+ \frac{2x}{1+x^2}u=\frac{1}{(1+x^2)^2}
$$
$$
\frac{du}{dx}+\frac{4x}{1+x^2}u=\frac{2}{(1+x^2)^2}
$$
```ad-important
Linear!
```

$$
r(x)=e^{4\int\frac{1}{1+x^2}dx}
$$
$$
u = 1+x^2, du = 2xdx
$$
$$
=e^{2 \int 1/u du}
$$
$$
e^2\ln|1+x^2|
$$
$$
r(x)=(1+x^2)^2
$$

$$
\frac{d}{dx}(u(1+x^2)^2)=2
$$
$$
u(1+x^2)^2=2x+C
$$
$$
\boxed {y^2(1+x^2)^2=2x+C}
$$
# Homework Examples

## Question 1

```ad-question
Find the IVP:

$$\frac{dy}{dx}+\frac{2}{x}y=0, y(1)=2$$
```

$$
\frac{dy}{dx}=-\frac{2y}{x}
$$
$$
v = \frac{y}{x} \Rightarrow \frac{dy}{dx}=-2v
$$
$$
v+x \frac{dy}{dx}=-2v
$$
$$
x \frac{dy}{dx}=-3v
$$
$$
\frac{1}{-3v}dv = \frac{1}{x}dx
$$
$$
-\frac{1}{3} \int \frac{1}{v}dv = \int \frac{1}{x}dx
$$
$$
-\frac{1}{3}\ln|v|=\ln|x|+C
$$
$$
-\frac{1}{3}\ln| \frac{y}{x}|=\ln|x|+C
$$
$$
\ln|\left( \frac{y}{x} \right)^{-1/3}|=\ln|x|+C
$$
$$
(|\frac{y}{x}|)^{-1/3}=C|x|
$$
$$
| \frac{y}{x} |=C|x|^{-3}
$$
$$
|y|=C|x|^{-2}
$$
$$
y=\frac{C}{x^2}
$$
$$
(2)=\frac{C}{(1)^2}
$$
$$
C=2
$$
$$
\boxed{y=\frac{2}{x^2}}
$$
## Question 2

```ad-question
Find the general solution of the following diff eq:

$$\frac{dy}{dx}=\frac{10x+5y}{5x+10y}$$
```

$$
\frac{dy}{dx}= \frac{2x+y}{x+2y}
$$
$$
\frac{dy}{dx}=\frac{x\left( 2+\frac{y}{x} \right)}{x\left( 1+2\frac{y}{x} \right)}
$$
$$
v+x \frac{dv}{dx}=\frac{2+v}{1+2v}
$$
$$
x \frac{dv}{dx}= \frac{2+v}{1+2v} -v
$$
$$
x \frac{dv}{dx}=\frac{2+v-v(1+v)}{1+2v}
$$
$$
x \frac{dv}{dx}=\frac{2+v-v-2v^2}{1+v}
$$
$$
x \frac{dv}{dx}=\frac{2-2v^2}{1+v}
$$
$$
\frac{1+v}{2-2v^2}dv =\frac{1}{x}dx
$$
$$
\int \frac{1+v}{2-2v^2}dv = \int \frac{1}{x}dx
$$


$$
\int \frac{1}{2-2v^2}dv + \int \frac{v}{2-2v^2}dv
$$
*First Integral* - Partial Fractions

$$
\frac{1}{2}\int \frac{1}{1-v^2}
$$
$$
\frac{1}{1-v^2}=\frac{1}{(1-v)(1+v)}=\frac{A}{v+1}+\frac{B}{1-v}
$$
$$
1=A(1-v)+B(1+v)
$$
$$
\text{At } v = -1; 1=2A; A=\frac{1}{2}
$$
$$
\text{At } v=1; 1=2A; A=\frac{1}{2}
$$
$$
B=-\frac{1}{2}, A=\frac{1}{2}
$$

$$
\frac{1}{2}\left[ \frac{1}{2}\int \frac{1}{1+v} + \frac{1}{2}\int \frac{1}{1-v} \right ]
$$
$$
\frac{1}{4}\ln|1+v|+\frac{1}{4}\ln|1-v|
$$

*Second Integral* - U-Sub

$$
u = 2-2v^2, du=-2vdv
$$
$$
-\frac{1}{2} \ln|2-2v^2|
$$
$$
\frac{1}{4} \ln|1+v|+\frac{1}{4}\ln|1-v|-\frac{1}{2}\ln|2-2v^2|=\ln|x|+C
$$
$$

$$