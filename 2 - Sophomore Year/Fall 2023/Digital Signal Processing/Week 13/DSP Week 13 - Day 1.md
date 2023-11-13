Date: 13th November 2023
Date Modified: 13th November 2023
File Folder: Week 13
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Causality of Z-Transform
- Stability of Z-Transform
- Digital Filters

```

# Causality of an LTI System

The causality definition can be translated to a condition on the impulse response. Thus the following can be considered an output:

$$y[n_0] = \sum_{k=-\infty}^\infty h[k]x[n_0-k]$$
$$y[n_0] = \sum_{k=0}^\infty h[k]x[n_0-k] \sum_{k=-\infty}^{-1} h[k]x[n_0-k]$$
$$=[h[0]x[n_0]+h[1]x[n_0-1] + h[2]x[n_0-2]+...]+ [h[-1]x[n_0+1] + h[2]x[n_0-2] + h[3]x[n_0-3]+...]$$

```ad-important
This means the LTI system can be causal if the impulse response $h(n)$ satisfy:
- This is a causal, right sided sequence
$$h[n]=0 \space when \space h < 0$$
```

The LTI system is causal if and only if the ROC of the system function is the **exterior of a circle**

![[Drawing 2023-11-13 12.13.11.excalidraw]]

# Stability of an LTI System

Given a bounded input signal $x[n]$ to an LTI system $y[n]$ must be bounded:

$$y[n] = \sum_{k=-\infty}^\infty h[k]x[n-k]$$
$$|y[n]| = \sum_{k=-\infty}^\infty |h[k]| \space |x[n-k]|$$

The system must satisfy the following to be stable:

$$\sum_{k=-\infty}^\infty h[k] < \infty$$
$$H(z) = \sum_{n=-\infty}^\infty h[n]z^{-n}$$
This implies that $H(z)$ must contain the unit circle within its ROC when $|z|=1$:

$$|H(z)| = \sum_{n=-\infty}^\infty |h[n]|$$

## Example

```ad-question
$$H(z) = \frac{1}{1-\frac{1}{2}z^{-1}}+\frac{1}{1-2z^{-1}}; \space ROC \space |z| > 2$$
```

$$H(z) = \frac{1}{1-\frac{1}{2z}}+ \frac{1}{1-\frac{2}{z}}$$
$$H(z) = \frac{z}{z-\frac{1}{2}} + \frac{z}{z-2}$$
**Find poles**:

$$z = \frac{1}{2}, 2 \space \space \space ROC \space |z|>2$$

**Causality**

Since the ROC is the exterior of the circle, it is **casual**

**Stability**

Since the ROC *does not* include the unit circle, it is *not* **stable**

# Digital Filters


```ad-note
- If $H(z)$ contains both zeros AND poles, it is an IIR filter.
- If $H(z)$ contains ONLY zeros, it is an FIR filter.
```


## Finite Impulse Response (FIR) Filter

![[Drawing 2023-11-13 12.34.22.excalidraw]]

```ad-summary
title: Definition
- The number of samples present in its impulse reponse is **always** finite.
- The output depends only on **present** and/or **past** values. (stable)
	- Non-recursive Filter
- Reduces the quantization noise
```

**Since there are no poles, the bottom part of the general equation is removed such that:**
$$FIR \space filter \Rightarrow H(z) = {b_0+b_1z^{-1}+b_2z^{-2}+...+b_Nz^{-N}}$$
### Frequency Selective Filters

When an input is applied, the filter would select "allows" the desired frequencies and rejects unwanted frequencies form the input signal.

**Passband (PB)**:
- The range of frequencies that are *passed*

**Stopband (SB)**:
- The range of frequencies that are *blocked*

```ad-note
Important in:
- Reducing Noise
- Communication Systems
	- Make sure that the frequency is only transmitted within the required bandwdith
```

### Lowpass Filter (LPF)

Pass the low frequencies and rejects the high frequencies. So it allows low frequencies in the passband and blocks the higher frequencies ($0 \le \Omega \le \Omega_c)$ in the stopband
($\Omega > \Omega_c$)

![[PXL_20231113_173813229 1.jpg]]
![[PXL_20231113_173816013 1.jpg]]

### Highpass Filter

Allows the high frequencies above $\Omega > \Omega_c$ and blocks the low frequencies between $\Omega = 0$ and $\Omega = \Omega_c$ 

![[PXL_20231113_174124136.jpg]]

![[PXL_20231113_174120542.jpg]]
### Bandpass Filter

It allows only a band of frequencies form $\Omega_1$ to $\Omega_2$ and stops all other frequencies

![[PXL_20231113_174124136 1.jpg]]

![[PXL_20231113_174127886.jpg]]

### Bandstop Filter

Rejects all frequencies between $\Omega_1$ and $\Omega_2$ and allows remaining frequencies

![[PXL_20231113_174131348.jpg]]

![[PXL_20231113_174132797.jpg]]
## Practical Characteristic of Selective Filter

![[PXL_20231113_174218262.jpg]]

- $\delta_1 \rightarrow$ passband ripple
- $\delta_2 \rightarrow$ stopband ripple
- $\Omega p \rightarrow$ passband edge frequency
- $\Omega_s \rightarrow$ stopband edge frequency 
## Infinite Impulse Response (IIR) Filter






