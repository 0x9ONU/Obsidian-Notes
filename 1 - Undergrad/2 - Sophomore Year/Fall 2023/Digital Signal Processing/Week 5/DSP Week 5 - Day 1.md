Date: 18th September 2023
Date Modified: 18th September 2023
File Folder: Week 5
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Quantization

```

# Quantization

The process of constraining a signal's amplitude from a larger set of values to atypically smaller, discrete set of values

```ad-note 
A continuous-time signal when quantized, forms a staircase-like signal.
![[CamScanner 09-20-2023 21.03_1.jpg]]
```

## Parts of quantization:
- Determine the range of analog values $[\alpha, \beta)$
- The number of amplitude/quantization levels "$L$"
- Number of bits "$b$"

## Finding Amplitude ($L$)
$$L = 2^b \space or \space b = \ceil{log_2L}$$
```ad-note
$\ceil{x}$ Denotes ceiling which *always* rounds up
```

## Quantization Step ($\Delta$)

![[CamScanner 09-20-2023 21.03_2.jpg]]

$$ \Delta = \frac{\beta - \alpha}{L}$$

### Example

Given range and bits, find amplitude and quantization where:

$$[0, 12V]$$
$$b = 4 \space bits$$
$$L = ?$$
$$\Delta = ?$$

```ad-check
title: Soltuion
$$L = 2^b = 2^{4} = 16 \space levels$$
$$\space$$
$$\space$$
$$\space$$
$$\space$$
$$\Delta = \frac{\beta - \alpha}{L} = \frac{(12)-(0)}{(16)} = 0.75$$
```

## Two Ways to Quantize an Analog Signal

### Rounding

Represent the analog value by the **nearest quantization level**

```ad-warning
The maximum quantization error: $\frac{1}{2} \Delta$
- $e_{round}$ => $x$ for $\frac{\Delta}{2} < x < \frac{\Delta}{2}$
```

![[CamScanner 09-20-2023 21.03_3.jpg]]

#### The Mean Square Quantization Error due to Rounding

$$ mse_{round} = \frac{\Delta^2}{12}$$
```ad-note
Also known as the Noise Signal Power
```

```ad-important
Must be minimized to increase signal quality
```
### Truncation

Represented by rounding **down** to the nearest quantization level

```ad-warning
The maximum quantization error: 
$$\Delta$$
- $e_{trunc}$ => $x$ for $0 \ge x < \Delta$
```

#### The Mean Square Quantization Error due to Truncation

$$mse_{trunc} = \frac{\Delta^2}{3}$$
## Signal-to-Nosie Ration (SNR)

A ratio of intended signal average power to the **noise average power (mean square error)**

$$SNR_{round} = \frac{P_x}{mse_{round}}$$

```ad-note
$P_x$ is the Power of the signal
```

$$SNR_{trunc} = \frac{P_x}{mse_{trunc}}$$

```ad-important
The higher the SNR, the better performing the signal
```

### SNR to (dB)

$$ SNR_{dB} = 10 log_{10}{(SNR)}$$
$$SNR = 10^{SNR_{dB}/10}$$

```ad-summary
Used to create smaller values that are in not in the magnitudes of millions
```

## Examples

```ad-example
Encode a 0-5V signal witha  5 bit word. Determine the max and mean square quantization errors in the case of rounding and truncation. Calcualte SNR if the average signal power is 0.5.
```ad-check
title: Solution
- Find Amplitude ($L$)
	- $L = 2^b = 2^{5} = 32 \space levels$
- Find Quantization
	- $\Delta = \frac{\beta - \alpha}{L} = \frac{5}{32} = 0.15625$
- Round error
	- Max round = $\frac{\Delta}{2} = 0.0781$
	- Mean Square
		- $mse_{round} = \frac{\Delta^2}{12}$
		- $= \frac{(\frac{5}{32})^2}{12}$
		- $=0.0020$
- Trunc error
	- Max trunc = $\Delta = 0.1562$
	- Mean Square
		- $mse_{trunc} = \frac{\Delta^2}{3}$
		- $= \frac{(\frac{5}{32})^2}{3}$
		- $= 0.0081$ 
- SNR Round
	- $SNR_{round} = \frac{P_x}{mse_{round}}$
	- $= \frac{0.5}{0.0020}$
	- $= 245.76$
	- $SNR_{dB} = 10 log_{10}{((245.76))}$
- SNR Trunc
	- $mse_{trunc} = \frac{P_x}{mse_{trunc}}$
	- $= \frac{0.5}{0.00081}$
	- $= 61.44$
	- $SNR_{dB} = 10 log_{10}{((61.44))}$
```









