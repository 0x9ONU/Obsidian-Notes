Date: 25th October 2023
Date Modified: 25th October 2023
File Folder: Week 10
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Convolution in Frequency Domain

```

# Review

**DTFT**:
$$x(\Omega) = \sum_{n=-\infty}^\infty x[n]e^{-j\Omega n}$$
**IDTFT**:

$$-\infty... + x[-2] e^{-j\Omega(-2)} + x[-1] e^{-j\Omega(-1)} +x[0] + x[1] e^{-j\Omega(1)} + x[2] e^{-j\Omega(2)} + ... + \infty$$

$$x[n] = \{ ... x[-2], x[-1], x[0]_0, x[1], x[2], ... \}$$

## Example

### Example 1:

```ad-question
Given the following DTFT, find the discrete time signal that created it:
$$x(\Omega) = e^{j2\Omega} + 3e^{j \Omega} + 5 + 2e^{-j \Omega} - e^{-j2 \Omega}$$
```

$$x[n] = \{ 1, 3, 5_0, 2, -1 \}$$

### Example 2:

```ad-question
Given the following DTFT, find the discrete time signal that created it:
$$x(\Omega) = \frac{1}{1-e^{-j\Omega}}$$
```

Because $1 + x + x^2 + ... + \infty = \frac{1}{1-x}$, the DTFT can be simplified by doing the problem in reverse:

$$1 + (e^{-j\Omega}) + (e^{-j\Omega})^2 + (e^{-j\Omega})^3... \infty$$
$$1 + e^{-j\Omega}+ e^{-j\Omega (2)} + e^{-j\Omega (3)}+...$$

$$x[n] = \{ 0, 0, 1_0, 1, 1, 1,1...$$

$$\therefore x[n] = u[n]$$

# Convolution in Frequency Domain

Convolution in the time domain corresponds to **multiplication** in the frequency domain

Given the sequences $x[n]$ and $h[n]$ in *time-domain*:

$$y[n] = x[n]**h[n]$$
$$=\sum_{k=\infty}^\infty x[k]*h[n-k]$$

However, in the **frequency domain** where $h(\Omega)$ is the frequency response:

$$y(\Omega) = x(\Omega) * h(\Omega)$$
```ad-note
$y[n]$ can be found by taking the IDTFT of $y(\Omega)$
```

## Example

```ad-question
Given:
$$x[n] = \{ -4, 5, 1, -2_0, -3, - 2 \}$$
$$h[n] = \{ 6, -3, -1_0, 0, 8, 7, -2 \}$$
Determine $y[n] = x[n] * h[n]$ using frequency domain approach:
- Determine $x(\Omega)$ and $h(\Omega)$ by taking DTFT
- Find $y(\Omega) = x(\Omega) * h(\Omega)$
- Take the IDTFT of $y(\Omega)$ to obtain $y[n]$
- Compare the reuslts that are obtained with the time domain convolution.
```

### Part A: Find Frequency Domain of Both Discrete Time Signals

- Find $x(\Omega)$

$$x(\Omega) = \sum_{n=-\infty}^\infty x[n]e^{-j\Omega n}$$
$$-4e^{j\Omega3}+5e^{j\Omega2}+ 1e^{j\Omega}-2-3e^{-j\Omega}+2e^{-j\Omega2}$$

- Find $h(\Omega)$


$$h(\Omega) = \sum_{n=-\infty}^\infty h[n]e^{-j\Omega n}$$
$$6e^{j\Omega}-3 - e^{-j\Omega}+8e^{-j\Omega3}+7e^{-j\Omega4}-2e^{-j\Omega5}$$

### Part B: Find The multiplication

$$y(\Omega) = x(\Omega) * h(\Omega)$$
$$=[-4e^{j\Omega3}+5e^{j\Omega2}+ 1e^{j\Omega}-2-3e^{-j\Omega}+2e^{-j\Omega2}][6e^{j\Omega}-3 - e^{-j\Omega}+8e^{-j\Omega3}+7e^{-j\Omega4}-2e^{-j\Omega5}]$$

```ad-warning
WTF YOU FOIL ALL OF THEM?????????
```

First Set:
$$=24e^{j\Omega 4} + 12e^{j\Omega 3} + 4e^{j\Omega(2)} - 32e^0 - 28e^{-j\Omega}+8e^{-j\Omega 2}$$

Second Set:

$$30e^{j\Omega 3} -15e^{j\Omega(2)} - 15e^{j\Omega} + 40e^{j\Omega} + 35e^{-j\Omega2} -10e^{-j3\Omega}$$
Third Set:

YOU GET IT. Do it three more times

**Collect up the terms**

$$y(\Omega) = -24^{j\Omega 4} + 42e^{j\Omega 3}-5e^{j\Omega 2}-20e^{j\Omega}-45 +23e^{-j\Omega} + 66e^{-j\Omega2} - 25e^{-j \Omega 3} -42 e^{-j\Omega 4} - 17e^{-j\Omega5} + 22 e^{-j\Omega6} + 14 e^{-j\Omega7} - 4e^{-j\Omega8}$$

### Part C: Take the Inverse to Find $y(n)$

$$y[n] = \{ -24, 42, -5, -20, -45_0, 23, -25, -42, -17, 22, 14, -4 \}$$

### Part D: Compare $y(n)$ using time-domain

USE SHORTCUT (ARRAY METHOD:

#comebacklater ex. 1

By doing the math both ways: you show that a convoluted signal $y[n]$  can be found in both time-domain and frequency-domain