Date: 6th November 2023
Date Modified: 6th November 2023
File Folder: Week 12
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Properties of Z-Transform

```

# Linearity Property

```ad-summary
title: Definition
Z transform of a weighted su of two or more signals is equal to the weighted sum of their transformation
```

If $z \{x1[n]\}$ = $x(z)$ AND $z\{x_2[n]\}$ = $x_2(z)$, then

$$z \{ ax_1[n] + bx_2[n] \} = a_1x_1(z) + bx_2(z)$$

# Time Shifting Property

$$z \{ z[n] \}= x(z), \space then:$$
$$z\{ x[n-n_0] \} = z^{-n_0} x(z)$$

# Time-Reversal Property

$$If \space z\{ x[n] \} = x(z) \space then$$
$$z\{ x[-n] \} = x(z^{-1})$$
# Multiplication by An Exponential Sequence '$a^n$' [scaling in the z-domain]

$$If z\{ x[n] \} = x(z), \space then$$
$$z\{ z^n x[n] \} = x(a^{-1}z)$$

# Multiplication by $n$ [Differentiation in z-domain]

$$If \space z\{ x[n] \} = x(z), \space then$$
$$z\{ nx[n]\} = -z \frac{d}{dz}x(z)$$

# Convolution Property

A z-transform of convolution of two signals in time domain is equal to the **product** of their spectrum

$$If z\{ x_1[n] \} = x_1(z) \space \& \space z\{ x_2[n] \} = x_2(z), \space then$$
$$z\{ x_1[n] ** x_2[n]\} = x_1(z)*x_2(z)$$

# Examples

## Example 1:

#comebacklater 

## Example 2:

#comebacklater 