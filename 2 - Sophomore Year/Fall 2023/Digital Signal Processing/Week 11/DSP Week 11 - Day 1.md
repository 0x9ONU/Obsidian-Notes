Date: 30th October 2023
Date Modified: 30th October 2023
File Folder: Week 11
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Introduction to Z-Transform

```

# Z-Transform

## Calculating Z-Transform

**Going Forward**
$$z\{x[n]\} = x(z) = \sum_{n=-\infty}^\infty x[n] z^{-n}$$
$$z \rightarrow re^{j\Omega}$$
**Going Backwards**

$$x[n] = \frac{1}{2\pi j} \int x(z) z^{-1}dz$$

### Examples

#### Example 1: Infinite Sequence

```ad-question
Given the following formula, find $x(z)$
$$x[n] = a^n u[n]$$
```

**Create Initial Function**

$$x(z) = \sum_{n=\infty}^\infty a^n u[n] z^{-n}$$
Because the function becomes zero at $n < 0$ due to the unit step sequence:

$$x(z) = \sum_{n=0}^\infty a^n z^{-n}$$
$$x(z) = \sum_{n=0}^\infty (az^{-1})^n$$
Expand:
$$1 + az^{-1} + (az^-1)^2+...+\infty$$
$$x(z) = \frac{1}{1-az^{-1}}$$
#### Example 2: Finite Sequence

```ad-question
Find Z transform given:
$$x(n) = \{ 1_0, 2, 5, 7, 0, 1 \}$$
```

Write initial formula:

$$x(z) = \sum_0^5 x[n] z^{-n}$$

Expand and simplify:
$$x(z) = 1z^0+2z^{-1} + 5z^{-2} + 7z^{-3}+ 0 z^{-4} + 1z^{-5}$$
$$x(z) = 1+2z^{-1}+ 5z^{-2} + 7z^{-3}+z^{-5}$$
## Region of Convergence (ROC):

The set of all values of $z$ for which the z transform $x(z)$ attains a finite value.
- The region where we can find the z-transform

$$\sum_{n=-\infty}^\infty x[n] z^{-n} < \infty$$
```ad-important
This means that the funciton must be absolutely summable and have a "finite value"
```

### Properties

1. The ROC of $x(z)$ is a ring (or) disc in the complex plane with center at the origin
2. If $x[n]$ has a finite duration and a right sided signal, then the ROC is entire z-plan except where $z=0$
3. If$x[n]$ has a finite duration and is *left* sided, then the ROC is entire z-plane except where $z=\infty$
4. If $x[n]$ is finite duration two sided signal, then the ROC is entire z-plane except $z=0$ **AND** $z=\infty$
5. If $x[n]$ is a **infinite** duration right sided signal, then ROC is **exterior** of a circle or radius $r$
6. If $x[n]$ is infinite duration *left* sided signal, then ROC is **interior** of the circle of the radius $r$
7. If $x[n]$ is infinite duration two sided, then the ROC is the region between two circles of radius $r_1$ **and** $r_2$
8. The ROC of an LTI **stable** system contains the unit circle (where $r=1$)

```ad-important
The z-transform is possible ONLY hwne the signal has all its values present within the ROC.
```

### Examples

#### Example 1:

```ad-question
What is the region of convergence of the signal:
$$x[n] = a^n u[n]$$
```

**Convert to z-transform**

$$x(z) = \frac{1}{1-az^{-1}}$$

Given the property of the following:

$$\sum_0^\infty x^n = \frac{1}{1-x} \space if \space |x| < 1$$

We are able to say that:

$$|az^{-1}| < 1$$
$$|\frac{a}{z} < 1$$
$$|a| < |z| \to |z| > |a|$$

```ad-note
This means that property 5 takes place, so the ROC belongs to the region outside of a circle with a radius $a$
```

#### Example 2:

```ad-question
What is the region of convergence for $x_1[n]$, $x_2[n]$, $x_3[n]$
```

1. Because the signal is **finite** AND is right sided, the ROC is the entire z-plane except $z=0$
2. Because the signal is **finite** and *double* sided, the ROC is the entire z-plane except $z=0$ and $z=\infty$
3. Because the signal is only 1 at 0, the ROC is contained with the **entire** z-plane

#### Example 3:

```ad-question
Find the z transform and ROC for the signal:
$$x[n] = -b u[-n-1]$$
```

**Fold and shift the unit step sequence**

$$u[n] =\begin{bmatrix} 1 & n \ge 0 \\ 0 & n < 0 \end{bmatrix} \Rightarrow u[-n-1] = \begin{bmatrix} 1 & n \le -1 \\ 0 & n > -1 \end{bmatrix}$$

**Setup Equation**:

$$x(z) = \sum_{n=-\infty}^\infty x[n] z^{-n}$$

**Plug-in Discrete Time Signal**
$$x(z) = \sum_{n=-\infty}^{-1} -b^nz^{-n} \Rightarrow x(z) = \sum_{1}^{\infty} -b^{-n}z^{n}$$

```ad-note
WHen chaging the limit to positve, we need to chagne the variable $n = -n$
```

**Take out negative and simplify powers**:

$$-\sum_{n=1}^\infty (b^{-1}z)^n$$
**Expand using the following rule**

$$\sum_{n=m}^\infty k^n = \frac{k^m}{1-k}$$
$$x(z) = -\frac{b^{-1}z}{1-b^{-1}z} \space if \space |b^{-1}z|<1$$
**Find ROC using bounds**

$$|b^{-1}z| < 1$$
$$|\frac{z}{b}| < 1$$
$$|z| < |b|$$

```ad-note
This means that property 5 takes place, so the ROC belongs to the region outside of a circle with a radius $b$
```
