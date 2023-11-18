Date: 17th November 2023
Date Modified: 17th November 2023
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Homework #31 Concept Review

## Problem 14.18

### Series
![[Drawing 2023-11-17 11.06.26.excalidraw]]

$$P = 60 kW$$
$$PF = 0.8 \space lag \rightarrow inductive$$
$$\cos \Theta = 0.8 = PF \Rightarrow \Theta = \cos^-1(PF)=36.87 \degree$$
$$S = \frac{P}{\cos \Theta} = \frac{60kW}{0.8} - 76 kVA$$
$$z = \frac{V^2_{rms}}{S^\star}$$
$$z = \frac{220^2}{75k\angle-36.87 \degree}$$
$$z = 0.645 \angle 36.87 \degree = 0.516 + j 0.39 \Omega$$


### Parallel

$$S = 75000 \angle 36.87 \degree \Rightarrow 60000 + j45000$$

$$R = \frac{V^2}{P} = \frac{220^2}{60000} = 0.807 \Omega$$
$$X = \frac{V^2}{X} = \frac{220^2}{45000} = 1.07 \Omega$$

```ad-important
Remember the formula:
$$S^\sim = V^\sim_{rms}(I^\sim_{rms})^\star$$
```

# Power Cont.

$$P_s = (P_1+P_2+P_3)_{abs}$$
$$Q_s(Q_1+Q_2+Q_3)_{abs}$$
$$S^\sim_s = (S_1^\sim + S_2^\sim + S_3^\sim)_{abs}$$

```ad-danger
The summation of all apparent powers is not equal to the total apparent power:
$$S_s \ne (S_1+S_2+S_3)_{abs}$$
```

## Example

```ad-question
Find $V_s^\sim$ and PF of the source:
![[Drawing 2023-11-17 11.19.55.excalidraw]]
```

**To Find the Value of the voltage, the value of $I_2$ must be found**:

$$P = V_{L \space rms}I_{2 \space rms}\cos(\Theta_v -\Theta_i)$$

$$24000= 240 I_{rms}(.9)$$
$$I_{2 \space rms} = 111.11 \Rightarrow I_{2 \space rms}^\sim = 111.11 \angle -\cos^{-1}(0.9) = 111.11\angle -25.84 \degree$$

**Solve for Combination of Voltages**

$$V_1^\sim = V_L^\sim +(0.03 + j0.1)I^\sim_{2 \space rms}$$

$$=240\angle 0 \degree + (0.03+j0.1)(111.11\angle-25.84 \degree$$
$$V_1^\sim =247.99 \angle 1.98 \degree V_{rms}$$
**Find $I^\sim_1$

$$P_1 = 12000$$
$$V_1^\sim = 247.99\angle 1.98 \degree$$

$$PF = 0.87 \space lag \rightarrow \cos(\Theta_v - \Theta_i)=0.87$$

$$\Theta_v - \Theta_i = \cos^{-1}(0.87)= 29.54$$

$$(1.98 \degree) - \Theta_i =-27.56 \degree$$

$$P_1= V_{1\space rms}I_{1 \space rms} PF$$

$$I_{1 \space rms} = \frac{12000}{247.99(0.87)}$$
$$I_{1 \space rms}^\sim = 55.62 \angle -27.56 \degree$$

**Find $I_s^\sim$

$$I_s^\sim = I_{1 \space rms}^\sim+ I_{2 \space rms} = 166.71 \angle -26.41$$

**Find $V_s^\sim$ Using KVL** 

$$V_s^\sim = I^\sim_{s \space rms}(0.1 + j0.3) +V_1^\sim = 288.16 \angle 8.48 \degree V_{rms}$$

**Find Power Factor**

$$PF_{source} = \cos(\Theta_{vs} - \Theta_{is})$$
$$=\cos(8.48 \degree - (-26.41 \degree))$$
$$PF_{s} = 0.82 \space lags$$

# Power Factor Correction

```ad-summary
Tries to get the power factor of a voltage soruce as close to 0 as possible. Use the addition of a reactive element (usually a capacitor) in parallel with the load $Z_L$ to raise its power factor (PF) to be close to unity (0)
```

![[Drawing 2023-11-17 11.41.32.excalidraw]]

![[Drawing 2023-11-17 11.44.00.excalidraw]]

Inductive:

$$S^\sim = P \oplus Q$$

## Correcting the Load

Given:
- Original load: $S_1, \Theta_1, P_1, Q_1$
- Desired Load: $S_2, \Theta, P_2, Q_2$

```ad-note
$$\Rightarrow P=P_1+P_2$$
```

**Imaginary Power**

$$Q_1 = Q_C + Q_2$$
$$Q_C=Q_1-Q_2$$

```ad-important
To correct a PF, the vlaue of the necessary capacitance is:
$$C = \frac{P (\tan \Theta_1- \tan \Theta_2)}{w *V^2_{rms}}$$

```ad-note
$$w = 2 \pi f$$
$V_{rms}$ is the voltage across the load
```
