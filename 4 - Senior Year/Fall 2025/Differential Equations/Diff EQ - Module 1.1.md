ciDate: 26th August 2025
Date Modified: 26th August 2025
File Folder: Week 1
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Introduction to Differential Equations

```

# Introduction (Module 1.1)

```ad-summary
title: Definition
A *differential equation* is an equation that contains one or more derivatives with an unknown funciton
```

$$\frac{dy}{dx}+46=x^2$$
$$2 \frac{d^2y}{dx^2}+\frac{dy}{dx}+y=\cos x$$

The **order** of the differential equations is the highest derivative in the equation.

## Verifying the Solutions of Differential Equations

### Question 1

```ad-question
Verify taht the funciton is a solution of the differntial equation:
1. $y = 3e^{-5x}; y^\prime +5y = 0$
2. $y=\cos (3x); y^{\prime\prime} +9y = 0$
```

```ad-important
Use subsitution and use differentiation!
```

$$y=\cos{3x}$$
$$y^\prime = -3\sin 3x$$
$$y^{\prime\prime} = -9\cos(3x)$$

$$
(-9\cos(3x))+(9\cos(3x))=0
$$
$$
0=0
$$

### Question 2

```ad-question
Which of the following is a soluion to the differential equation?
$$\frac{d^2y}{dx^2}+9y=0$$
1. $y = 0$
2. $y = e^{3x}$
3. $y = -\cos(3x)$
4. $y=sin(3x)$
5. $y=4e^{-3x}$
```

$$y^{\prime}=-12e^{-3x}$$
$$y^{\prime\prime}=36e^{-3x}$$
$$(36e^{-3x})+9(4e^{-3x})\ne0$$

### Question 3

```ad-question
Find the value $k$ for which teh constan fucntion $x(t)=k$ is a soluion of the differential equation
$$8t^4 \frac{dx}{dt}-3x-9=0$$
```

$$
x(t)=k
$$
$$
\frac{dx(t)}{dt}=0
$$
$$
8t^4(0)-3k-9=0
$$
$$
-3k-9=0
$$
$$
k=-3
$$

### Question 4

```ad-question
Consider the following:
$$y^{\prime\prime} = e^{\frac{x^2}{2}}+xy^\prime$$

Determine wheher or not $y = e^{\frac{x^2}{2}}+c$ is a solution to the differential equation for any constant $c$
```

#### Step 1: Substitute $y$ into the left side

$$y^\prime=(x)e^{\frac{x^2}{2}}$$
$$y^{\prime\prime}=(x)(xe^{x^2/2})+(1)(xe^{x^2/2})$$
$$y^{\prime\prime}=x^2e^{x^2/2}+e^{x^2/2}$$

#### Step 2: Right Side

$$
e^{x^2/2}+x(xe^{x^2/2})
$$

#### Step 3: Compare

$$
x^2e^{x^2/2}+e^{x^2/2} = x^2e^{x^2/2}+e^{x^2/2}
$$

```ad-check
title: Solution
The funciton IS a solution!
```

## Solution of Differential Equation using Integrals

If the differential equation is in the form:

$$
\frac{dy}{dx}=f(x)
$$
The solution of the equation can be obtained by integrating:

$$
y=\int f(x)dx+C
$$
**Example**: Solve the initial value problem:

$$
\frac{dy}{dx}=3x+2; y(0)=2
$$
$$
y = \int(3x+2)dx
$$
$$
y = \frac{3}{2}x^2+2x+C
$$
$$
y(0)=\frac{3}{2}(0)^2+2(0)+C
$$
$$
2 = C
$$
$$
y = \frac{3}{2}x^2+2x+2
$$
```ad-question
How about for double derivatives?
```
$$
y^{\prime\prime}=f(x)
$$
$$
y^\prime= \int f(x)+C
$$
$$
y=\int\left( \int f(x)dx \right)dx+Cx+D
$$

### Integral Examples

#### Example 1

```ad-question
Solve $y^\prime = x^4$
```

$$
y = \int x^4dx
$$
$$
y=\frac{x^5}{5}+C
$$

#### Example 2

```ad-question
Solve $y^{\prime\prime} = x^4$
```

$$
y^\prime = \int x^4dx
$$
$$
y^\prime=\frac{x^5}{5}+C
$$
$$
y = \int \frac{1}{5}x^5dx+Cx+D
$$
$$
=\frac{1}{5} \frac{1}{6}x^6+Cx+D
$$
$$
y = \frac{1}{30}x^6+Cx+D
$$
## Applications: Find Position Functions Given Acceleration Functions, Initial Position, and Initial Velocity

### Example 1

```ad-question
Find the position funciton $x(t)$ using the following:
$$a(t)=20\sin(2t), v(0)=-5, x(0)=4$$
```

$$
x(t) = \text{position}
$$
$$
x(t)^\prime=v(t)
$$
$$
x(t)^{\prime\prime}=a(t)
$$
```ad-important
Repeatedly use integration to find the velocity and position function
```

**Finding the Velocity Function:**
$$
v(t) = \int a(t)=\int 20\sin(2t)dt
$$
$$
v(t)=-10\cos (2t)+C
$$
$$
(-5)=-10\cos(2(0))+C
$$
$$
C = 5 \Rightarrow v(t)=-10\cos(2t)+5
$$
**Find the Position Function**:

$$
x(t)=\int v(t)=\int[-10\cos(2t)+5]dx
$$
$$
x(t)=-5\sin(2t)+5t+D
$$
$$
(4)=-5\sin(2(0))+5(0)+D
$$
$$
D=4 \Rightarrow \boxed{x(t)=-5\sin(2t)+5t+4}
$$
## Sketch Solution Curves Given Slope Field

![[2025-08-27 11-21.jpg]]




