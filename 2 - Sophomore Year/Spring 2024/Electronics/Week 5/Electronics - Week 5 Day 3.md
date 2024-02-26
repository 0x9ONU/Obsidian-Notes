Date: 23rd February 2024
Date Modified: 23rd February 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Large Signal Operations of Op-Amps

```ad-warning
Output Voltage Saturation and Output Current Limit:![[Electronics - Week 5 Day 3 2024-02-23 13.01.44.excalidraw]]

```

## Example

```ad-question
Consider the non-inverting amplifier circuit show below, the circuit is designed for nominal gain $(1 +R_2/R_1) = 10 V/V$. It is fed with a low frequency sine wave signal of peak voltage $V_p$ and is connected to a load resistor $R_L$. The op-amp is specified to have output saturation voltages of $\pm 13 V$ and output current limits of $\pm 20 mA$.
1. For $V_p = 1V$ and $R_L = 1k \Omega$, specify the signal resulting at the output of the amplifier.
2. For $V_p = 1.5V$ and $R_L = 1k \Omega$, specify the signal resulting at the output of the amplifier.
3. For $R_L = 1k \Omega$, what is the maximum value of $V_p$ for which an undistored sine-wave output is obtained?
4. For $V_p = 1V$, what is the lowest value of $R_L$ for whjich an undistored sine-wave output is obtained?
```

![[Electronics - Week 5 Day 3 2024-02-23 13.06.28.excalidraw]]

### Part A

**Find the Voltage

$$V_P = 1V, R_L = 1k$$
$$V_{op} = (1 + \frac{R_2}{R_1}) v_i$$
$$V_{op} =(10)(1)$$
$$V_{op} = 10V \Rightarrow Not \space saturated$$

**Find Current**

$$i_{lp} = \frac{V_{op}}{R_L} = 10 mA$$
$$i_f = \frac{V_{op}}{9k+1k} = 1mA$$
$$i_o = i_{lp} + i_f = 11 mA \Rightarrow meets \space the \space limit$$
### Part B

**Find the Voltage**

$$V_P = 1.5 V$$
$$V_{op} = 10(1.5)=15V$$

```ad-warning
This saturtes to $13V$ because the peak input is plus 13 volts.
```

**Find Current when $V_{op} = 13 V$**

$$i_{lp} = \frac{13}{1K} = 13 mA$$

$$i_{fp} = \frac{13}{9k + 1k} = 1.3mA$$
$$i_{op} = i_{lp} + i_{fp}$$
$$i_{op} = 14.3 mA \Rightarrow meets \space the \space limit$$

### Part C

$$V_{op}=A_VV_P$$
$$V_P = \frac{V_{op}}{A}$$
$$V_P = \frac{13V}{10 V/V}$$
$$V_p = 1.3 V$$

**Check Current**

$$i_l = \frac{13}{1k} = 13mA$$
$$i_f = \frac{13}{1k+9k} =1.3mA$$
$$i_o = i_l + i_f = 14.3 mA \Rightarrow under \space the \space limit$$

```ad-warning
Making sure that BOTH requirements are reached, or else it would not match the real life counterpart
```
### Part D

$$V_{op} = (1+\frac{R_2}{R_1})V_p$$
$$V_{op} = 10V$$

**Currents**

$$i_l = \frac{10}{R_L}$$
$$i_f = \frac{10}{1k+9k} = 1mA$$
$$20mA = \frac{10}{R_l}+1mA$$
$$R_L = 526 \Omega$$

```ad-warning
If this went any lower, the current would also saturate, which could break the circuit of the load
```

# Slow Rate

![[Electronics - Week 5 Day 3 2024-02-23 13.29.36.excalidraw]]

```ad-example
Amp 747
$$SR = 0.5 V/\micro s$$
LM 318
$$SR = 50 V/\micro s$$
```

```ad-note
The higher the slow rate, the better.
```

$$SR = |\frac{dv_o}{dt}|_{\max} \Rightarrow Worst \space Case$$
$\frac{dv_o}{dt}$ CANNOT be larger than the slow rate.
$\Rightarrow$ even if the input is changing faster, the output cannot change faster than the slow rate.

```ad-warning
If this is not accounted for, then non-linear distortions will occur.
```

**Highest Frequency Before Slow Rate Distortion Appears**

$$v_o(t) = v_{o_{max}} \sin(\omega t)$$
$$\frac{dv_o}{dt} = \omega v_{o_{max}} \cos (\omega t)$$
$$|\frac{dv_o}{dt}|_{max} = \omega v_{o_{max}}$$
$$SR = 2 \pi f_M V_{o_{max}}$$
$$F_M = \frac{SR}{2 \pi V_{o_{max}}}$$

## Examples

```ad-question
if the requried output for the op-amp is $20kHz$ sinusoidal signal with $10v$ peak voltage. Find the minimum acceptable slow rate for the op-amp.
```

$$f = 20 k Hz, V_m = 10V$$
$$SR = V_m 2\pi f$$
$$SR = (10)2 \pi(20*10^3) = 1.257 \micro V/s \approx 1.25 V / \micro s$$
```ad-question
Find the frequency of the square wave pulse, where the output will be trianglar wave with peak votlage of 4V.
```

**CHECK NOTES FOR EXAMPLE**

```ad-question
Select an op-am p for finite slow rate for audio applicaiton ($20 hZ - 20kHz$). Use a non-inverting configuration with closed-loop gain of $50 V/V$ and $V_{p} = 0.2V$
```

**Find $V_{op}$**

$$V_{op} = A_V V_p$$
$$V_{op} = (50)(0.2)=10 V$$

**Find SR**

$$SR_{max} = V_{op}2 \pi f_{min}$$
$$SR = (10)2 \pi(20) = 1.256 m V/s \approx 1.25 V/ms$$


$$SR_{max} = V_{op}2 \pi f_{min}$$
$$SR = (10)2 \pi(20*10^3) = 1.256 \micro V/s \approx 1.25 V/ \micro s$$

**We choose the LM 318 with a slow rate of $50 V / \micro s$**
