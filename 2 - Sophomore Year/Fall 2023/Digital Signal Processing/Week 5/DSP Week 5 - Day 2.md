 Date: 20th September 2023
Date Modified: 20th September 2023
File Folder: Week 5
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Quantization Cont.
- Binary Coded Samples

```

# Quantization Cont.
![[CamScanner 09-20-2023 21.04_1.jpg]]

```ad-note
Quantization $L$ levels can be represented as:
- $\alpha, \alpha + \Delta, ..., \beta - \Delta$
- $\alpha + \Delta, \alpha + 2 \Delta, ..., \beta - \Delta, \beta$
```

## Example
1. Sketch $x[n]$
2. Suppose that $x[n]$ is passed thorough a 3 bit quantizer. Determine the sampled quantized signal using **rounding** quantization
3. Determine the Maximum and the Mean square error
$$X(t) = \cos(2 \pi t) \space \space \space fs = 8Hz \space \space \space x[n] \space \space \space -2 \le n \le 2$$
```ad-check
title: Solution
1. $x[n]$
	- Find $x[n]$ 
		- $x[n] = \cos(\pi \frac{n}{4})$
	- Find Values of $x[n]$ (See table 1)
	- Since Frequency is 1 second, there will be 8 samples in one second
		- ![[CamScanner 09-20-2023 21.04_2.jpg]]
	- Sketch $x[n]$
		- ![[CamScanner 09-20-2023 21.04_3.jpg]]
2. Quantization
    - Find $\Delta$
	    - $b = 3 bits => L = 2^b = 2^3 = 8$
	    - $alpha = 0 \space \beta = 1$
	    - $\Delta = \frac{\beta - \alpha}{L} = \frac{1}{8}$
    - Mark out quantization levels and find quantized signal
	    - ![[CamScanner 09-20-2023 21.04_5.jpg]]
	    - $X_Q[n] = \{ 0, 0.75, 0.875_{<-}, 0.75, 1 \}$
3. Maximum Quantization Error 
	- $E_{round} = \frac{\Delta}{2} = 0.0625$
4. Mean Square Error
	- $mse_{round} = \frac{\Delta^2}{12}{12} = 0.02$
```
### Table 1

| $n$ | $\cos(\frac{\pi n}{4})$ |
| --- | ----------------------- |
| -2  | 0                       |
| -1  | $\frac{\sqrt{2}}{2}$    |
| 0   | 1                       |
| 1   | $\frac{\sqrt{2}}{2}$    |
| 2   |         0                |

# Binary Coded Samples

It is desirable to be able to serially transmit binary data:
- Requires encoding the quantized signal into a binary format
- Transmits the resulting bits as binary pulses

## Bitrate

```ad-note
The speed of serial transmission is measured in $\frac{bits}{s}$ (bps) called **bitrate ($R_b$)**
- Depends on how many bits are used ($b$) and the sampling frequency $Fs$
```

$$R_b = bfs = \frac{Number \space of \space bits}{sample} * \frac{Number \space of \space samples}{sample}$$

### Example

A television signal has a bandwidth of 4.5 MHz. This signal is sampled, quantized, and binary coded.
1. Determine the sampling rate if the signal is to be sampled at **a rate of 20% above the Nyquist rate**
2. If the samples are quantized into 1024 levels, determine the number of binary pulses required to encode each sample
3. Determine the binary pulse rate (bits per second) of the binary coded signal.

```ad-check
title: Solution
1. Sampling Rate
	- Nyquist Theorem
		- $Fs \ge 2F$
	- $Fs = 2(4.5 MHz) * 1.2$
	- $Fs = 10.8 MHz$
2. Binary Pulses per Sample
	- $L = 1024$
	- $L = 2^b$
	- $1024 = 2^b$
	- $b = 10 \space bits \space or \space binary \space samples$
3. Binary Pulse Rate (bps)
	- $R_b = b * Fs$
	- $R_b = 10 * 10.8$
	- $R_b = 108 \frac{Mb}{s}$
```


