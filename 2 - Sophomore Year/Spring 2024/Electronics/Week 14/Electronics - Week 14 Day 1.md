Date: 29th April 2024
Date Modified: 29th April 2024
File Folder: Week 14
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# BJTs Continued

## Examples

### Example 1: Find $\beta$ and $\alpha$

```ad-question
In a particular BJT, the base current is $10 \micro A$, and the collector current is $800 \micro A$. Find $\beta$ and $\alpha$ for this device.
```

$$I_C = \beta I_B \Rightarrow \beta = \frac{I_C}{I_B} = \frac{800 \micro A}{10 \micro A}=80$$
$$\alpha = \frac{\beta}{\beta + 1} = 0.9877$$

### Example 2: Finding $\beta$

```ad-question
Measurements on the circuti below produce lableled voltages as indiciated. FInd the value of $\beta$ for each transistor.
```

#### Circuit 1
![[Electronics - Week 14 Day 1 2024-04-29 13.04.26.excalidraw]]

$$I_B = \frac{4.3}{200k} = 21.5 \micro A$$
$$I_C = \frac{2}{2k} = 1mA$$
$$\beta = \frac{I_C}{I_B} = \frac{1mA}{21.5 \micro A} \Rightarrow \boxed{\beta = 46.5}$$

#### Circuit 2

![[Electronics - Week 14 Day 1 2024-04-29 13.07.33.excalidraw]]

$$I_B = \frac{4.3-3}{27k} = 48.15 \micro A$$
$$I_E = \frac{3}{750} = 4 mA$$
$$I_E = I_B + I_C$$
$$I_C = 4mA - 48.15 \micro A$$
$$I_C = 3.95 mA$$

$$\beta = \frac{I_C}{I_B} = \frac{3.95mA}{48.15 \micro A} \Rightarrow \boxed{\beta = 82.1}$$
#### Circuit 3

![[Electronics - Week 14 Day 1 2024-04-29 13.11.59.excalidraw]]

$$I_E = \frac{10-7}{1k} = 3mA$$
$$V_C - 0 = 1.5kI_E$$
$$V_C = 1.5k(3mA)$$
$$V_C = 4.5 V$$
$$I_B = \frac{6.3-4.5}{45k} = 40 \micro A$$
$$I_E = I_C + I_B$$
$$I_C = (3mA) -(40 \micro A)$$
$$I_C = 2.96 mA$$

$$\beta = \frac{I_C}{I_B} = \frac{2.96mA}{40 \micro A} \Rightarrow \boxed{\beta = 74}$$
## The Early Voltage Effect

![[Electronics - Week 14 Day 1 2024-04-29 13.22.12.excalidraw]]

![[Electronics - Week 14 Day 1 2024-04-29 13.23.43.excalidraw]]

$$\boxed{I_C = I_S e^{\frac{V_{BE}}{V_T}}(1+ \frac{V_{CE}}{V_A})} \space \space \space V_A = 10 \rightarrow 100V$$

```ad-warning
Typically, the early voltage is ignored and $V_A$ is assumed to be zero. To get the proper value, a program such as LTspice may be used.
```

$$g_o = \frac{\delta I_C}{\delta V_{CE}}$$
$$r_o = [\frac{\delta I_C}{\delta V_{CE}}]^{-1}$$
$$\boxed{r_o = \frac{V_A}{I_C}}$$

### Example

```ad-question
For a particular npn transistor operating at a $V_{BE}$ of $680mV$ and $I_C = 1mA$, the $I_C-V_{CE}$ characteristics has a slope of $0.8 *10^{-5} \mho$. To what value of output resistance does this correspond? what is the value of Early votlage for this transistor. For operation at $10mA$, what would the output resistance become?
```

**Finding $r_o$**

$$r_o = \frac{1}{g_o} = \frac{1}{0.8*10^{-5} \mho} = 125k$$

**finding $V_A$**

$$r_o = \frac{V_A}{I_C} \Rightarrow V_A =r_oI_C$$
$$=(125k)(1mA)$$
$$V_A = 125V$$

**If $I_C = 10 mA$**

$$r_o = \frac{V_A}{10mA} = \frac{125}{10mA} = 12.5k \space \Omega$$
## Saturation Example

```ad-question
For the circuit shown below, determine the labeled voltages and currents when $V_B = 4V$ and when $V_B = 6V$
```

![[Electronics - Week 14 Day 1 2024-04-29 13.38.51.excalidraw]]

### For $V_B = 4V$
#### Check Cutoff

If it is off, $I_E = 0 \Rightarrow V_E = 0$

$$V_{BE} = 4-0 = 4$$
*The Transistor is ON*

#### Assume Active

$$V_{BE} = 0.7V$$
$$V_B -V_E = 4- V_E = 0.7$$
$$V_E = 4 - 0.7 = 3.3V$$
$$I_E = \frac{3.3}{3.3k} = 1mA$$

$$I_C = \frac{\beta}{\beta +1}I_E = 990.1\micro A$$
$$I_B =\frac{1}{\beta +1}I_E = 9.9 \micro A$$

$$V_C = 10 - 4.7kI_C$$
$$V_C = 5.35 V$$
##### Check Active
$$V_{BC} <^? 0.4$$
$$V_{BC} = 4-5.36 = -1.35 < 0.4 \space \checkmark$$

Assumption is correct and the CBJ is in reverse bias.

### For $V_B = 6V$

#### Check Cutoff

If it is in cutoff$I_E=0$
$\Rightarrow V_E = 0 \Rightarrow V_{BE} = 6V \not < 0$

It must be on

#### Assume Active


$$V_{BE} = 0.7V$$
$$V_B -V_E = 6- V_E = 0.7$$
$$V_E = 6 - 0.7 = 5.3V$$

$$I_E = \frac{5.3}{3.3k} = 1.61mA$$
$$I_C = \frac{\beta}{\beta +1} I_E = 1.59 mA$$
$$I_B = \frac{1}{\beta +1 }I_E = 15.9 \micro A$$
$$V_C = 10 - 4.7kI_C$$
$$V_C = 2.53 V$$
##### Check Active
$$V_{BE} = 6-(2.53) = 3.47 \not < 0.4$$

BCJ is in forward bias
$\Rightarrow$ The BJT is in Saturation



#### Assume Saturation

$$V_{BC} \approxeq 0.6 \space \mbox{(By Specificaiton)}$$
$$V_{BE}=0.7V$$
$$V_{CE} = 0.1V \space (\mbox{By KVL and Specificaiton)}$$

```ad-warning
You CANNOT use the beta equations in saturation. They only work in active
```

**Find $V_{E}$

$$V_{BE}=0.7 = (6)-V_E \Rightarrow V_E =5.3 V$$
**Find $I_E$**

$$I_E = \frac{5.3}{3300} = 1.61 mA$$
**Find $V_C$**

$$V_{CE} = V_C - V_E$$
$$(0.1) = V_C -(5.3)$$
$$V_C = 5.4V$$

**Find $I_C$**

$$I_C = \frac{10-5.4}{4700} = 979 \micro A$$

**Find $I_B$**

USE KCL

$$I_E = I_C + I_B$$
$$I_B = 631 \micro A$$

**Find Beta Forced**

$$\beta_{forced} = \frac{I_C}{I_B} = 1.55 << \beta_{active}$$

