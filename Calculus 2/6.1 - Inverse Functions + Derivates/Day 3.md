Date: 27th January 2023
Date Modified: 2nd February 2023
File Folder: 6.1 - Inverse Functions + Derivates

```ad-abstract
title: Today's Topics
collapse: open

- Differentiation of Inverse Functions
- How to Find $(f^-1)'(a)$

```


## Differentiation of Inverse Functions

```ad-abstract
title: Theorem
If $f$ is one to one, continuous function defined on an interval, its inverse funtion $f^-1$ is also continuous.
```


```ad-abstract
title: Theorem
color: 255, 192, 203
If $f$ is one to one, differentiabel funciton with inverse function $f^-1(x)$ and $f'(f^-1(a)) \ne 0$ then the inverse function is differentiable at $a$. $$(f^-1)'(a) = \frac{1}{f'(f^-1(a))}$$


```


## Find $(f^-1)'(a)$ 

### Step 1

Find if the function is one to one

### Step 2

Find $f^-1(a)$ using the previous theorem

```ad-question
Find $(f^-1)'(a)$:
- $f(x) = 3x^3+4x^2+6x+5$,  $a = 5$

```ad-check
title: Answer
- Step 1
	- $f'(x) = 9x^2 + 8x + 6 > 0$ for all $x \epsilon R$
	- $f(x)$ is an increasing function
	- Thus $f(x)$ is a one to one fucntion AND is invertible
- Step 2
	- $f^-1(5) = x$
	- which means $f(x) = 5$
	- $3x^3+4x^2+6x+5 = 5$
	- $3x^3+4x^2+6x = 0$
	- $x(3x^2+4x+6) = 0$
		- take $x$ out as a common factor
	- $x = 0$ and $3x^2 + 4x + 6 = 0$
	- $\frac{(-4)\pm\sqrt{(4)^2-4(3)(6)}}{2(3)}$
		- use quadratic formula to get the other two roots
	- \frac {-4 \ sqrt{-56}}{6}
```
```









