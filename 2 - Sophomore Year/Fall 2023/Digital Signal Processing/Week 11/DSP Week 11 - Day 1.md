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

**Going Forward**
$$z\{x[n]\} = x(z) = \sum_{n=-\infty}^\infty x[n] z^{-n}$$
$$z \rightarrow re^{j\Omega}$$
**Going Backwards**

$$x[n] = \frac{1}{2\pi j} \int x(z) z^{-1}dz$$

## Examples

### Example 1: Infinite Sequence

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
### Example 2: Finite Sequence

```ad-question
Find Z transform given:
$$x(n) = \{ 1_0, 2, 5, 7, 0, 1 \}$$
```

Write initial formula:

$$x(z) = \sum_0^5 x[n] z^{-n}$$

Expand and simplify:
$$x(z) = 1z^0+2z^{-1} + 5z^{-2} + 7z^{-3}+ 0 z^{-4} + 1z^{-5}$$
$$x(z) = 1+2z^{-1}+ 5z^{-2} + 7z^{-3}+z^{-5}$$

