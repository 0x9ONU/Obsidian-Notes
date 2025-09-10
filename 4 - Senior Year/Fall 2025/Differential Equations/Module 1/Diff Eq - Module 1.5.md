Date: 10th September 2025
Date Modified: 10th September 2025
File Folder: Module 1
#diffeq

```ad-abstract
title: Today's Topics
collapse: open

- Exact Differential Equation
- Partial Derivative Crash Course

```

# Exact Differential Equation

## Definition

The equation:

$$
M(x,y)dx+N(x,y)dy=0
$$
is called an *exact* differential equation on an open rectangle $R$ if there’s a function $F=F(x,y)$ such that $F_x$ and $F_y$ are **continuous**, and:

$$
F_{x}(x,y)=M(x,y) \text{ and } F_{y}(x, y) = N(x,y) \quad \forall (x,y) \in R
$$

```ad-summary
title: Theorem
Suppose $M$ and $N$ are continous and have continous partial derivatives $M_y$ and $N_x$ on an open rectangle $R$ then:
```

$$
M(x,y)dx+N(x,y)dy=0
$$
is eact on $R$ if and only if:
$$
M_{y}(x,y)=N_{x}(x,y) \quad \forall(x,y) \in R
$$

## How to Solve

**Step 1**: Check for eactness by checking exactness condition $M_y=N_x$. If not, do not go further

**Step 2**: Set $\frac{\partial F(x,y)}{\partial x} = M(x,y)$ and integrate wih respect to $x$ to obtain:

$$
F(x,y)=G(x,y)+\phi(y)
$$
where $G$ is an anti-derivative of $M$ with respect to $x$, and $\phi$ is an unknown function of $y$

**Step 3**: Differentiate $F$ with respect to $y$ to obtain

$$
\frac{\partial F(x,y)}{\partial y}= \frac{\partial G(x,y)}{\partial y} + \phi^\prime(y)
$$

**Step 4**: Equate the right side of this equation to $N$ and solve for $\phi^\prime$; thus

$$
\phi^\prime(y) = N(x,y)-\frac{\partial G(x,y)}{\partial y}
$$

**Step 5**: Integrate $\phi^\prime$ with respect to $y$, taking the constant of integration to be zero, and substitute the result in Equation $F(x,y)=G(x,y)+\phi(y)$ to obtain $F(x,y)$

**Step 6:** Set $F(x,y)=c$ to obtain an implicit solution of given differential equation. If possible, solve for $y$ explicitly as a function of $x$
# Partial Derivative Crash Course

You can see a function of  two variables such that:

$$
f(x,y)=x^2y+3xy+1
$$

And consider it in the domain of the function. 

```ad-important
You care about the input as a 2d point rather than a single value
```

Instead of looking into the rate of change in a function, we can have two different derivatives depending on what value we want to look into:

$$
\frac{\partial f}{\partial x}= f_{x} = 2xy+3y
$$
$$
\frac{\partial f}{\partial y}=f_{y} = x^2+3x
$$
## Example

```ad-question
Find the partial derivatives of the following function:
$$f(x,y)=x^3y^2+xy-\sin(y)$$
```

$$
f_{x}=3x^2y^2+y
$$
$$
f_{y}=2x^3y+x-\cos(y)
$$

# Examples

## Example 1

```ad-question
Sovle the following Exact Differential Equation:

$$(4x^3y^3+3x^2)dx+(3x^4y^2+6y^2)dy=0$$
```

**Step 1**: Is it in the proper exact form?

$$
M=4x^3y^3+3x^2; N=3x^4y^2+6y^2
$$
$$
M_{y}=12x^3y^2
$$
$$
N_{x}=12x^3y^2
$$

Since $M_y=M_x$, given differential equation is **exact**.

**Step 2**: Integrate to find $F(x,y)$

$$
F(x,y)=\int (4x^3y^3+3x^2)dx
$$
$$
F(x,y)=x^4y^3+x^3+\phi(y)
$$

**Step 3**: Differentiate with $y$ to obtain a new function to find $N$

$$
F_{y}= \frac{\partial f}{\partial y}(x^4y^3+x^3+\phi(y))
$$
$$
F_{y}=3x^4y^2+\phi^\prime(y)
$$
**Step 4**: Set this new differential equal to N

$$
F_{y}=N
$$
$$
(3x^4y^2+\phi^\prime(y)=3x^4y^2+6y^2)
$$
$$
\phi^\prime(y)=6y^2
$$
**Step 5**: Integrate $\phi^\prime$ to find $\phi$

$$
\phi(y)=\int 6y^2dy
$$
$$
\phi(y)=2y^3
$$
**Step 6**: Combine such that 

$$
F(x,y)=x^4y^3+x^3+\phi(y)
$$
$$
F(x,y)=x^4y^3+x^3+2y^3
$$
$$
\boxed{x^4y^3+x^3+2y^3=C}
$$

## Example 2

```ad-question
Solve:

$$6x^2y^2dx+4x^3ydy=0$$
```

$$
M=6x^2y^2
$$
$$
M_{y}=12x^2y
$$
$$
N=4x^3y
$$
$$
N_{x}=12x^2y
$$
$$
M_{y}=N_{x}
$$
IT IS EXACT

$$
F_{x}=M
$$
$$
F_{x}=6x^2y^2
$$
$$
F(x,y)=\int (6x^2y^2) dx
$$
$$
=2x^3y^2+\phi(y)
$$
DERIVE

$$
F_{y}=N
$$
$$
F_{y}=4x^3y+\phi^\prime(y)
$$
$$
(4x^3y+\phi^\prime(y))=4x^3y
$$
$$
\phi^\prime(y)=0
$$
$$
\phi(y)=k
$$
Backsub

$$
2x^3y^2+k=C
$$
$$
\boxed{2x^3y^2=C}
$$




