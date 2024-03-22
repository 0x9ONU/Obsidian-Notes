Date: 20th March 2024
Date Modified: 20th March 2024
File Folder: Week 8
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Diodes Continued
- Terminal Characteristics of a Diode
	- Forward Bias Region
	- Reverse Bias Region
	- Breakdown Region

```

# Starting Examples

## Example 1:

```ad-question
Find $I_o$ and $V_o$ int eh circuit below, assuming that the diodes are *ideal*
```

![[Electronics - Week 8 Day 2 2024-03-20 13.00.11.excalidraw]]

### Assuming Both are OFF

$$I_o = 0, I_2 = 0$$
Since there is no current ($I_2$) over the $10k \Omega$ resistor, then there is no voltage drop
$$V_o = 10V$$
*By KCL*

$$I_o + I_2 = I_1$$
$$0 = I_1$$
$$V_B = -10V$$
Check Diode Assumption 1:

$$V_{D_1} = 0 - (-10) = 10 V \space X$$

Check Diode Assumption 2:

$$V_{D_2} = V_o-V_B = 10-(-10) = 20 V \space X$$

```ad-warning
Both assumption are incorrect. Try Again
```

### Assuming Both are ON

$$V_{D_1} = 0, V_{D_2} = 0$$

Because of the shorts, the main circuits turn into a big node that is connected to ground:

$$V_B=V_o = 0$$

Check $I_0$ and $I_2$
$$I_2 =  \frac{10 -0}{10k} = 1mA \space \checkmark $$


$$I_1 = \frac{V_B-(-10)}{5k} = 2mA$$
*by KCL*

$$I_o + I_2 = I_1$$

$$I_o = I_1 -I_2$$
$$= (2mA) - (1mA)$$
$$I_o = 1mA \space \checkmark $$
$$\therefore V_o = 0 V; \space I_o = 1mA$$

## Example 2:


```ad-question
Find $I_o$ and $V_o$ int eh circuit below, assuming that the diodes are *ideal*
```

![[Electronics - Week 8 Day 2 2024-03-20 13.11.51.excalidraw]]

### Assuming Both are ON

$$V_{D_1} = 0; \space V_{D_2} = 0$$

$$V_B = 0; \space V_o = 0$$
Check $I_o$ and $I_2$
$$I_1 = \frac{0-(-10)}{10k}=1mA$$
$$I_2 = \frac{(10)-(0)}{5k} = 2mA \space \checkmark$$
*By KCL*

$$I_o + I_2 = I_1$$
$$I_o = I_1 - I_2$$
$$I_o = (1mA) - (2mA) = -1mA \space X$$

```ad-warning
The second assumption is still correct, but the first assumption is wrong. Try again with D1 OFF and D2 ON
```

### Assuming $D_1$ OFF and $D_2$ is ON

$$I_o = 0; \space V_{D_2} = 0$$

Since there is no current flowing through $I_o$, by KCL:

$$I_1 = I_2$$

Since $D_2$ is shorted:

$$V_o = V_B$$

$$I_2 = I_1 \Rightarrow \frac{10-v_o}{5k} = \frac{V_B-(-10)}{10k}$$

Since $V_B = V_o$:

$$\frac{10-V_o}{5k} = \frac{v_o+10}{10k} = V_o = 3.33 V$$

**Check Assumptions:**

*Current Through $D_2$:

$$I_1 = I_2 = \frac{10-3.33}{5k} = 1.3 mA > 0 \space \checkmark$$

*Voltage Through $D_1$*

$$V_{D_1} = 0 - V_B = 0 - (3.33) \Rightarrow V_{D_1} = -3.33 V < 0 \space \checkmark$$

# Terminal Characteristics of Junction Diodes:

![[Electronics - Week 8 Day 2 2024-03-20 13.22.00.excalidraw]]

**Valid for forward bias and reverse bias regions**
$$i_d = I_s(e^{\frac{V_D}{nV_T}}-1)$$

---
$i_d: \mbox{Current through the diode}$
$V_d: \mbox{Voltage Across the Diode}$
---
$I_s : \mbox{The saturation or scale current}$
$I_s \approxeq 1 fA$
$I_s \propto P_N \mbox{ Junciton Area}$
---
$V_T = \mbox{Thermal Voltage}$
$V_T = \frac{kT}{q} = \frac{\mbox{(Boltzman Constant)(Temperature in Kelvin)}}{\mbox{Electron Charge}}$
$\mbox{Assuming } 20K \Rightarrow V_T = 25 mV$
---
$n: \mbox{Slope Factor}$
$n=1$
---

## For Forward Bias Regions

```ad-important
In forward bias: $V_D > 0 \Rightarrow e^{\frac{V_D}{nV_T}} >> 1$
$$i_D \approxeq I_S \times e^{\frac{V_D}{nV_T}}$$
$$\ln (\frac{i_D}{I_S}) = \ln(e^{\frac{V_D}{nV_T}})$$
$$V_D = n V_T \ln (\frac{i_D}{I_S})$$
```

### Example

```ad-question
Assume the same diode has two different operating currents, $i_2 \space or \space i_2$, AND $i_2 = 10i_1$. Find how much the voltage is affected.
```

$$V_{D_1} = nV_T \ln(\frac{i_1}{I_s})$$
$$V_{D_2} = nV_T \ln(\frac{10i_1}{I_s})$$

$$\Delta V_D = V_{D_2} - V_{D_1}$$
$$=nV_T \ln(\frac{\frac{10i_1}{I_s}}{\frac{i_1}{I_s}})$$
$$=n V_T \ln (\frac{10i_1}{i_1} * \frac{I_s}{I_s})$$
$$\Delta V_D = nV_T \ln(10) = 57.6 mV /\mbox{Decade of } i_d$$

```ad-important
In general:

$$\Delta V_D = V_2 -V_1 = V_T \ln(\frac{i_2}{i_1})$$
```


## For Reverse Bias Region

$$V_D < 0 \Rightarrow e^\frac{V_D}{n V_T} << 1$$
$$i_D \approxeq -I_S$$
```ad-note
The small current is due to a set of missing minority carriers
```

$$1 fA \le I_s \le 10f_A$$

## The Breakdown Region:

The diode enters the breakdown region when the magnitude of the reverse voltage exceeds a threshold value that is specified to the particular diode. Called "Breakdown voltage" and denoted by $V_{BR}$. Once in breakdown, **a very large reverse current will flow.**

