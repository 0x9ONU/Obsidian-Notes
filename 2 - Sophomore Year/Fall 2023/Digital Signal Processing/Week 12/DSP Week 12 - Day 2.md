Date: 8th November 2023
Date Modified: 8th November 2023
File Folder: Week 12
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Inverse Z-transform

```

# Inverse Z-Transform Methods

## Power Series Expansion:

$$x(z) = \sum_{n=-\infty}^\infty x[n]z^{-n}$$
$$=...+ x[-2]z^2+x[-1]z^1+x[0] +x[1]z^{-1}+x[2]z^{-2}+...$$

### Examples

#### Example 1:
```ad-question
Convert z-transform to discrete time signal
$$x(z) = 2z^5+z^3-z^2=1+3z^{-1}-4z^{-4}$$
```

$$x[n] = x[-5]\delta[n-(-5)]+x[-3]\delta[n-(-3)+x[-2]\delta[n-(-2)]+ x[0] + x[1]\delta(n-(1)]+x[4]\delta[n-(4)]$$

$$x[n] = \{ 2, 0, 1, -1, 0, 1_0, 3, 0, 0, -4 \}$$

#### Example 2:

```ad-important
Recall:
$$exp{x} = \sum_{n=0}^\infty \frac{x^n}{n!}$$
```

```ad-question
Convert z-transform to discrete time signal:
$$x(z) = exp \{ -2z^-1 \}$$
```

**Use rule to expand**

$$\sum_{n=0}^\infty \frac{(-2z^{-1})^n}{n!}$$
$$\sum_{n=0}^\infty \frac{-2^nz^{-n}}{n!}$$

$$x(z) = \frac{-2^0}{0!}z^0+\frac{-2^1}{1!}z^{-1}+...$$
$$x[n] = \{ \frac{-2^0}{0!}, \frac{-2^1}{1!}, \frac{-2^2}{2!},..., \infty \}$$
$$x[n] = \frac{(-2)^n}{n!} u[n]$$

## Long Division

Power series expansion can also be used to invert rational z-transforms by using long divisions to express the rational function as a power series:

```ad-note
Long divide for any number of terms needed
```

```ad-important
- If right-sided, write in the normal order (numerator/denominator)
- If left-sided, write in the reverse order (denominator/numerator)
```
## Examples

### Example 1:

```ad-question
Find inverse of the z-transform given:
$$x(z) = \frac{1+2z^{-1}}{1-2z^{-1}+z^{-2}} \space \space \space \space \space ROC \Rightarrow right-sided \space where \space |z| > \frac{1}{2}$$
```

**Use Long Division**

#comebacklater ex. 1

**Solution**:

$$1+ 4z^{-1}+7z^{-2}+10z^{-3}+13z^{-4}+...$$
$$x[n] = \{1_0, 4, 7, 10, 13, ..., \infty \}$$
### Example 2:

```ad-question
Find inverse of the z-transform given:
$$x(z) = \frac{1+2z^{-1}}{1-2z^{-1}+z^{-2}} \space \space \space \space \space ROC \Rightarrow left-sided$$
```

**Use Long Division**

#comebacklater ex. 2

**Solution**:

$$2z^1+5z^2+8z^3+11z^4+14z^4+...+\infty$$
$$x[n] = \{ -\infty,...,14, 11, 8, 5, 2, 0_0\}$$



