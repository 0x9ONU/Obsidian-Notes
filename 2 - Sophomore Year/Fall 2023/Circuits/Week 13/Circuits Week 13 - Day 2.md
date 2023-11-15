Date: 15th November 2023
Date Modified: 15th November 2023
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Power Quantities

```

# Power Quantities

**Complex Power**: Contains all the power information in an AC circuit
- Denoted by $S^\sim = P \pm jQ$
- Where:
	- $P$ is the average power $W$
	- $Q$ is the reactive power $VAR$

```ad-important
When $S^\sim = P + jQ$ in scalar:
$$|S^\sim| \cos(\Theta_v - \Theta_i) + j |S^\sim| \sin(\Theta_v - \Theta_i)$$
$$\therefore P \Rightarrow \frac{1}{2}V_mI_m\cos(\Theta_v - \Theta_i) \space \space \space Q \Rightarrow \frac{1}{2}V_mI_m\sin(\Theta_v - \Theta_i)$$
```

```ad-note
In RMS:
$$S^\sim = V_{rms}I_{rms}\cos(\Theta_v - \Theta_i) + jV_{rms}I_{rms}\sin(\Theta_v - \Theta_i)$$
$$S^\sim = V^\sim_{rms}(I^\sim_{rms})^\star \Rightarrow V_{rms} \angle \Theta_v * I_{rms} \angle -\Theta_i$$
```

**Apparent Power (VA)**
$$V_{rms}*I_{rms}$$
**Power Factor (PF)**
$$\cos(\Theta_v - \Theta_i)$$

```ad-example
- **Unity PF**: When the Power Factor is Equal to 1 (Difference of zero)
- **PF**: When the Power Factor is Equal to 0 (Different of positive/negative 90)
- When $-90 \degree < \Theta_i - \Theta_i  < 90 \degree$
	- $\Theta$ is positve $\rightarrow$ lagging PF (**inductive impedance**)
	- $\Theta$ is negative $\rightarrow$ leading PF (**capacitive impedance**)
```

```ad-important
- When we say lagging PF, it measn the *current* **lags** the *voltage*
- When we say leading the PF, it measn the *current* is **leading** the *voltage*
```

```ad-warning
You **cannot** determine the power factor given only AC voltage or current
```

```ad-summary
$$s^\sim = \frac{1}{2}V^\sim (I^\sim)^\star$$
$$\space$$
$$=V^\sim_{rms}(I^\sim_{rms})^\star$$
$$\space$$
$$=V_{rms}I_{rms} \angle (\Theta_v - \Theta_i)$$
$$\space$$
$$=s\angle\Theta$$
$$\space$$
$$=P+jQ$$
$$\space$$
$$PF = \cos(\Theta_v-\Theta_i)$$
```

## Derive the Relationship Between Complex Power and Impedance

$$S^\sim = V^\sim_{rms}(I^\sim_{rms})^\star$$
![[Drawing 2023-11-15 11.26.57.excalidraw]]

$$=V^\sim_{rms}(\frac{V^\sim_{rms}}{Z})^\star$$

**IMPORTANT**:
$$S^\sim = \frac{V_{rms}^2}{Z^\star}$$
$$S^\sim = I^2_{rms} Z$$

## Examples

### Example 1:

```ad-question
Determine the PF of the following impedance
$$Z = 4 \angle 36.86 \degree$$
```

**Take the inner angle and calculate power factor**

$$PF = \cos(36.86 \degree) = 0.8 \Rightarrow Lagging$$

### Example 2:

```ad-question
Find the Power factor of the following complex power:
$$S^\sim = 4 \angle 36.86 \degree VA$$
```

**Take the inner angle and calculate power factor**

$$PF = \cos(36.86 \degree) = 0.8 \Rightarrow lagging$$

## Power Triangle

![[Drawing 2023-11-15 11.42.47.excalidraw]]

## More Power Relations

$$P= I^2_{rms}R$$
$$P = I^2_{rms}X$$

![[Drawing 2023-11-15 11.47.45.excalidraw]]

$$P = \frac{V^2_{rms\space 1}}{R}$$
$$P = \frac{V^2_{rms\space 2}}{X}$$

![[Drawing 2023-11-15 11.49.14.excalidraw]]
