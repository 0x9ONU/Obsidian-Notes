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
## Solve The Following Differential Equations

### Question 1

```ad-question
Solve the following diff eq:

$$y^{\prime}=\frac{x}{y}$$
```

$$
\frac{dy}{dx}=\frac{x}{y}
$$
$$
ydy=xdx
$$
$$
\int ydy=\int xdx
$$
$$
\frac{y^2}{2}=\frac{x^2}{2}+C
$$
$$
y^2=x^2 +C
$$
$$
y= \sqrt{x^2+C}
$$
### Question 2

```ad-question
Solve:

$$y^{\prime}=x^2y$$
```

$$
\frac{dy}{dx}=x^2y
$$
$$
\frac{1}{y}=x^2dx
$$
$$
\ln|y|=\frac{x^3}{3}+C
$$
$$
y=Ae^{x^3/3}
$$

### Question 3

```ad-question
Solve

$$\frac{dx}{dt}=x\sin(t); \text{for } x(0)=1$$
```

$$
\frac{1}{x}dx=\sin(t)dt
$$
$$
\int \frac{1}{x}dx = \int \sin (t)dt
$$
$$
\ln|x|=-\cos (t)+C
$$
$$
x = Ae^{-\cos(t)}
$$
$$
(1)=Ae^{-\cos(0)}
$$
$$
A= e
$$
$$
\boxed{x=e^{1-\cos(t)}}
$$

### Question 4

```ad-question
Solve:
$$\frac{dy}{dx}=xy+x+y+1$$
```

$$
\frac{dy}{dx}=xy+x+y+1
$$
$$
=x(y+1)+1(y+1)
$$
$$
\frac{dy}{dx}=(y+1)(x+1)
$$
$$
\frac{1}{y+1}dy=(x+1)dx
$$
$$
\int \frac{1}{y+1}dy = \int (x+1)dx
$$
$$
u = y+1, du =dx \Rightarrow \int \frac{1}{u}du
$$
$$
\ln|u|=\frac{x^2}{2}+x+C
$$
$$
\ln|y+1|=\frac{x^2}{2}+x+C
$$
$$
|y+1|=e^{x^2/2+x+C}
$$
$$
y+1= \pm e^C+e^{1/2x^2+x}
$$
$$
\boxed{y=Ae^{1/2x^2+x}-1}
$$

## Question 5

```ad-question
Solve:

$$xy^{\prime}=y+2x^2y, \text{for }y(1)=1$$
```

$$
x\frac{dy}{dx}=y+2x^2y
$$
$$
x \frac{dy}{dx}=y(2x^2+1)
$$
$$
\frac{x}{y} \frac{dy}{dx}=2x^2+1
$$
$$
\frac{1}{y}dy=2x+\frac{1}{x}dx
$$
$$
\ln|y|=x^2+\ln|x|+C
$$
$$
\ln|y|-\ln|x|=x^2+C
$$
$$
\ln{\frac{|y|}{|x|}}=x^2+C
$$
$$
\ln| \frac{y}{x}|=x^2+C
$$
$$
| \frac{y}{x}|=e^{x^2+C}
$$
$$
\frac{y}{x}=Ae^{x^2}
$$
$$
y=Axe^{x^2}
$$
$$
(1)=A(1)e^{1^2}
$$
$$
A= \frac{1}{e}
$$
$$
y= \frac{xe^{x^2}}{e}
$$
$$
\boxed{y=xe^{x^2-1}}
$$

### Question 6

```ad-question
A populaiton $x$ of rabbits on an isalnd is modeled by:

$$x^{\prime}=x-(\frac{1}{1000})x^2$$

Where the independen variable is itme in months where at $t = 0$ there are 40 rabbits on the island.
1. Find the soluiton to the equaiton with the inital condition
2. How many rabbits are on the island after 5 months?
```

$$
\frac{dx}{dt}=x-\frac{x^2}{1000}
$$
$$
\frac{1}{x-\frac{1}{1000}x^2}dx=dt
$$
$$
\int\left( \frac{1}{x-\frac{1}{1000}x^2}dx \right)=\int dt
$$
```ad-important
Use partial fractions! (Gulp)
```
$$
\frac{1}{x-\frac{1}{1000}x^2}=\frac{1}{x\left( 1-\frac{1}{1000}x \right)}
$$
$$
\frac{1}{x\left( 1-\frac{1}{1000}x \right)}=\frac{A}{x}+\frac{B}{1-\frac{1}{1000}x}
$$
$$
1 =A\left( 1-\frac{1}{1000}x \right)+Bx
$$
$$
\text{At }x=0 \Rightarrow 1 =A
$$
$$
\text{At } x = 1000 \Rightarrow 1=1000B
$$
$$
B=\frac{1}{1000}
$$
$$
\int \frac{1}{x}dx+ \frac{1}{1000} \int \frac{1}{1-\frac{x}{1000}}dx
$$
$$
\ln|x|+\frac{1}{1000}*-1000\ln |1-\frac{x}{1000}|+C
$$
$$
t=\ln |x|-\ln|1-\frac{x}{1000}|+C
$$
$$

$$
$$

$$