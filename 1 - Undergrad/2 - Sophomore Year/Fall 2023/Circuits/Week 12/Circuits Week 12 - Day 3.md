Date: 10th November 2023
Date Modified: 10th November 2023
File Folder: Week 12
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Average Power for Pure Resistance and Reactance
- RMS Value
```

```ad-note
title: Remember
Average Power:
$$P = \frac{1}{2}V_mI_m\cos(\Theta_v-\Theta_i)$$
```

# Average Power

## Formulas When There is ONLY Resistance
$$P = \frac{1}{2}\frac{V_m^2}{R}$$
$$P = \frac{1}{2} I_m^2 R$$
$$P = \frac{1}{2}V_mI_m$$

```ad-warning
Make sure that there is only resistance
![[Drawing 2023-11-10 11.06.57.excalidraw]]
```

```ad-important
1. Pure resistor: $$\Theta_v - \Theta_i = 0 \degree \Rightarrow \cos(0\degree) =1$$
	- Resistors absorb average power all the time
2. Pure reactance: $$\Theta_v - \Theta_i = \pm 90 \degree$$
	- Reactances do not absorb average power at all
```

## Examples:

```ad-question
There current flowing through a $j5\Omega$ elemtn is $5 \angle -90\degree A$. Determine the average power absorbed by the element.
```ad-check
title: Solution
Since it is pure reactance, the average power absorbed is zero.
$$P = 0W$$
```


![[Drawing 2023-11-10 11.13.13.excalidraw]]
```ad-question
Find the voltage over the $2 \Omega$ resistor

```ad-check
title: Solution
Since it is pure resistance:
$$P = \frac{1}{2}\frac{V_m^2}{R}$$
$$P = \frac{1}{2} \frac{12^2}{R}$$
$$P = 36 W$$
```

# RMS Value

```ad-summary
title: Defintion
Root-Mean-Square Value:
- The effective value of a time-varying waveform to produce average power.
```ad-example
The effective value of the outlets in the US is $120V$, but it's equation is $170\cos(377t)$
```

For any $x(t)$, the rms is:

$$X_{rms} = \sqrt{\frac{1}{T} \int_0^T x^2 dt}$$
Where:
- $T$ is the period (in seconds)
- $x$ is the given function

```ad-important
For AC:
$$V_{rms} = \frac{V_m}{\sqrt{2}} = 0.707 V_m$$
$$\space$$
$$\space$$
$$\space$$
$$I_{rms} = \frac{I_m}{\sqrt{2}} = 0.707 I_m$$
```

## Average Power in Terms of RMS Values

$$P = V_{rms}I_{rms} \cos(\Theta_v - \Theta_i)\space W$$

## Examples:

```ad-question
Find the rms value of the current.
![[Drawing 2023-11-10 11.26.37.excalidraw]]
```

1. Find equation at each change of current using **slope equations** for *one period* where $T = 4s$:

$$i(t) = \begin{bmatrix} 2 & 0 < t < 2 \\ -2t+6 & 2 < t < 3 \\ 0 & 3 < t < 4\end{bmatrix}$$
2. Use Formula to find rms value:

$$I_{rms} = \sqrt{\frac{1}{4}[\int_0^2 2^2dt + \int_2^3] (-2t+6)^2 + \int_3^4 0^2 dt}]$$

$$= \sqrt{\frac{1}{4}(4t|^2_0+\frac{4t^3}{3}-\frac{24t^2}{2}+36t)|_2^3}$$
$$=\sqrt{\frac{1}{4} (9.33)} \Rightarrow I_{rms} = 1.53 A$$

```ad-question
Determine the average power absorbed by the $2 \Omega$ resistor in the circuit
![[Drawing 2023-11-10 11.37.24.excalidraw]]
```

1. Use average power equations with current
$$I = \frac{20\angle 0 \degree}{2+2j}$$
$$I = 7.07 \angle -45 \degree A$$
$$P = \frac{1}{2} I_m^2 R$$
$$P = \frac{1}{2} (7.07)^2 (2)$$
$$=50W$$
2. Using RMS with current
$$I_{rms} = \frac{I}{\sqrt2}$$
$$= \frac{7.07 \angle -45 \degree}{\sqrt{2}}$$
$$= 5 \angle -45\degree A$$
$$P = I_{rms}^2 R$$
$$=5^2 (2)$$
$$= 50W$$
3. Using average power equations with voltage
$$V = \frac{2}{2+j2}(20\angle 0 \degree) = 10-j10 V$$
$$=14.14\angle -45 \degree V$$
$$P = \frac{1}{2}\frac{V_m^2}{R} = \frac{1}{2}\frac{14.14^2}{2} = 50W$$
4. Using RMS and voltage

$$V_{rms} = \frac{14.14 \angle -45 \degree}{\sqrt{2}} = 10 \angle -45 \degree V$$
$$P = \frac{V_{rms}^2}{R} = \frac{10^2}{2} = 50W$$

```ad-important
Utilizes either the voltage dropped or current flowing through the resistance
```
