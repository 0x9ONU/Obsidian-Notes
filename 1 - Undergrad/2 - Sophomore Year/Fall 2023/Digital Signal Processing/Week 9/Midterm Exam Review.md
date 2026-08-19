Date: 16th October 2023
Date Modified: 16th October 2023
File Folder: Week 9
#DSP

# 1. Sampling & Quantization

## Finding Discrete Time Signal
$$x(t) = 2\cos(2\pi t)$$
$$x[n] = x(nT_s)\space where \space T_s = \frac{1}{8}$$
$$x[n] = 2\cos(\pi \frac{n}{4})$$

| $n$ | $x[n]$             |
| --- | ------------------ |
| $0$ | $2$                |
| $1$ | $\sqrt{2}=1.41$    |
| 2   | $0$                |
| $3$ | $-\sqrt{2}= -1.41$ |
| 4   | -2                   |

## Quantization

```ad-question
Suppose this signal is passed through a 3-bit quantizer.
```

```ad-note
$$alpha = min \space and \space \beta = max$$
```

$$L = 2^b= 8$$
$$\Delta = \frac{\beta - \alpha}{L} = \frac{1}{2}$$
$$mse_{rounding} = \frac{\Delta^2}{12} = 0.02 => max_{rounding} = \frac{\Delta}{2}$$
$$mse_{trunc} = \frac{\Delta^2}{3} = \frac{(0.5)^2}{3} => max_{trunc} = \Delta$$

```ad-note
When not specified, either assume:
- $(\alpha, \beta)$
- $[\alpha, \beta)$
```

$$SNR = \frac{P_x}{mse}$$
$$SNR_{round} = \frac{2}{0.02} = 100$$
$$SNR_{trunc} = \frac{2}{0.08}$$

# 2. Signals Operations

```ad-question
The following discrete itme signals:
$$x_1[n] = \{ 4, 1, -2, -1_{0}, 0 \}$$
$$x_2[n] = \{ 2, 2, -1_0, -, -2, 5 \}$$
Are passed thorugh the following system:
$$y[n]=x_1[n]*x_2[n+4]$$
```

## Output of the System

## Signal Energy

$$\epsilon_x = \sum_{n=n_1}^{N_2} |x[n]|^2 = 2^2+2^2+1^2+0^2+2^2+5^2 = 36$$

## Odd and Even Components

### Odd

$$X_o[n] = \frac{1}{2}(x[n]-x[-n])$$

### Even

$$X_e[n] = \frac{1}{2}(x[n]+x[-n])$$

# LTI System & Convolution 

```ad-question
$$x[n] = \{ -1, 2, 1_0, -2 \}$$
$$h[n] = \{ 2, -3, -1_0, 0, 2 \}$$
```

Use array method with finite sequences!

$$x[n] = \sum_{k=N_1}^{N^2}x[k]\delta[n-k]$$


