Date: 27th March 2024
Date Modified: 27th March 2024
File Folder: Week 9
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Slides Link:

https://www.overleaf.com/read/mtcyydgrkxqs#f6a3d5
```

# Relating Rings and Fields

```ad-summary
Any subring of a field $F$ is an integral domain.
```

**Proof**: First, every nonzero element of $F$ is invertible. If $ab=0
#comebacklater 

```ad-summary
Any finite integral domain $D$ is a field.
```

**Proof**: For any fixed nonzero $d \in D$, the function $f: D^\star \rightarrow D^\star$ defined by $f(x)=xd$ is one to one, and since $D$ is finite, $f$ is onto as well. It follows that $f(c) = 1$ for some $c$, which means $cd=1$. Hence, any $d \in D^\star$ is invertible.

*They are one to one since:*
$$x_1\rightarrow x_1d$$
$$x_2 \rightarrow x_2d$$
$$x_1d=x_2d$$
$$x_1d-x_2d=0$$
$$(x_1-x_2)d=0$$
```ad-note
Since it is an integral domain, $d \ne 0$, so $x_1-x_2=0$
```

$$x_1=x_2 \Rightarrow \mbox{One to One Function}$$

# Polynomials

For any commutative ring $R$, the set of all polynomials with coefficients in $R$ is denoted by $R[x]$.

Addition and multiplication of polynomials are defined as usual.

$R[x]$ is a commutative ring with addition and multiplication

```ad-important
If $D$ is an integral domain, so is $D[x]$
```

## Exercise Help for PG. 28

```ad-warning
Remember to think outside of normal number sets, also think of matricies, discrete sets, etc.
- Is a commutative ring, but NOT an integral domain.
```

## PG. 28 Help

```ad-note
You treat the coefficients with the $\mod 7$
```

## PG. 31 Help

When you find all the zeros of $x^2 +3x +2$, you CANNOT use the quadratic formula. In $\mathbb{Z}_6$, there are only 5 values, so use trial by error.

List all polynomials of degree $3$ in $\mathbb{Z}_2[x]$

$$ax^3 +bx^2 +cx+d$$
```ad-warning
$a$ CANNOT be $0$, but the rest of the coefficients can. If the coefficient were to be $0$, then it would not be a third degree polynomial anymore.
```

```ad-important
This means you can make $8$ different combinations.
```

## Pg. 32-33 Help

Use long division. BUT make sure it is always in mod 7.

## Arithmetic Over the Finite Field $\mathbb{Z}_2$

```ad-important
$\mathbb{Z}_2$ is a finite field.
```

**Addition**
$$f(x) = x^2+x+1$$
$$g(x)= x+1$$
$$f(x)+g(x)=x^2$$

**Subtraction**

$$f(x) = x^2+x+1$$
$$g(x) = x+1$$
$$f(x)-g(x) = x^2$$
**Multiplication**

$$f(x) = x^2 + x +1$$
$$g(x) = x+1$$
$$f(x)g(x) = x^3+1$$
*solution*:
$$(x^2+x+1)(x+1)$$
$$x^3 + (1+1)x^2+(1+1)x+(1) \mod 2$$
$$x^3 + 1$$

**Division**


$$f(x) = x^2 + x +1$$
$$g(x) = x+1$$
$$\frac{f(x)}{g(x)} = x + \frac{1}{x+1}$$

*Solution*
$$x$$
$$x+1\overline{)x^2+x+1}$$
$$-(x^2+x)$$
$$\overline{1}$$
$$x+\frac{\mbox{Remainder}}{\mbox{Divisor}} = x+\frac{1}{x}$$
```ad-note
It can also be expressed by the division algorithm:
$$x^2+x+1=x(x+1)+1$$
```
## Division Rule

```ad-summary
Let $f(x)$ be a polynomial of degree $m$, and $g(x)$ be a polynomial of degree $n$ over a field such that $n \le m$. The division of $f(x)$ by $g(x)$ can be expressed by:
$$f(x) = g(x)q(x)+r(x), \deg r(x) < \deg g(x)$$
```

If $r(x) = 0$, then we say that $g(x)$ divides $f(x)$, or that $g(x)$ is a divisor of $f(x) and we denote it by $g(x)|f(x)$

## Polynomial Field that is Irreducible

A polynomial $f(x)$ over a field $F$ is called an irreducible polynomial over$F$ if $f(x)$ cannot be expressed as a product of two polynomials over $F$ of degree lower than that of $f(x)$.

```ad-example
- $f(x) =(x+1)(x^2-x+1) = x^3+1 \in \mathbb{R}[x] \ne f(x0 \in \mathbb{Z}_2[x]$
- $x^2 +1=(x+1)(x+1) \in \mathbb{Z}_2[x]$, but is irreducible in $\mathbb{R}[x]$. However, it is reducible in $\mathbb{C}[x]$: $x^2+1 = (x+i)(x-i)$
```

## Exercises

```ad-question
1. Add $x^4 +x^2+x+1$ and $x^3+1$ in $\mathbb{Z}_2[x]$
2. Subtract $x^4+x^2+x+1$ and $x^3+1$ in $\mathbb{Z}_2[x]$
3. Multiply $x^4+x^2+x+1$ and $x^3+1$ in $\mathbb{Z}_2[x]$
4. Divide $x^4+x%2+x+1$ by $x^3+1$ in $\mathbb{Z}_2[x]$ 
```

**addition**

$$(x^4+x^2+x+1)+(x^3+1) = x^4+x^3+x^2+x+1$$
**Subtraction**

$$(x^4+x^2+x+1)-(x^3+1) = x^4+x^3+x^2+x+1$$
**Multiplication**

$$(x^4+x^2+x+1)(x^3+1) = x^7+x^5+x^3+x^2+x+1$$
**Division**




