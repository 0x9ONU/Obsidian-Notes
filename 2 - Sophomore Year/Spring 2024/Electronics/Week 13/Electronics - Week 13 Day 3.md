Date: 26th April 2024
Date Modified: 26th April 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Equations for BJTs

## Review - What do they look like? What is their relationship?

![[Electronics - Week 13 Day 3 2024-04-26 13.04.38.excalidraw]]

![[Electronics - Week 13 Day 3 2024-04-26 13.06.51.excalidraw]]
## NPN Equations

**Cutoff**: ($V_{BE} < 0 V_{BC} < 0$) $\Rightarrow$ $I_E, I_B, I_C = 0$

**Active**: (CVD) Must follow the voltage values, and then you can use the following equations
-  $V_{BE} \approxeq 0.7$ , 
- $V_{BC} < 0.4 V$,
- $V_{CE} \ge 0.3 V$

$$I_C = \frac{\beta}{\beta + 1}$$
$$I_B = \frac{1}{\beta + 1}I_E$$
$$I_E = \frac{\beta+1}{\beta}$$
$$I_C = \beta I_B$$
$$I_B = \frac{I_C}{\beta}$$
$$I_E = (\beta +1)I_B$$

## PNP Equations

**Cutoff**: ($V_{EB} < 0 V_{CB} < 0$) $\Rightarrow$ $I_E, I_B, I_C = 0$

**Active**: (CVD)
- $V_{EB} \approxeq 0.7$, 
- $V_{CB} \ge 0.3 V$,
- $V_{EC} \ge 0.3 V$ 


$$I_C = \frac{\beta}{\beta + 1}$$
$$I_B = \frac{1}{\beta + 1}I_E$$
$$I_E = \frac{\beta+1}{\beta}$$
$$I_C = \beta I_B$$
$$I_B = \frac{I_C}{\beta}$$
$$I_E = (\beta +1)I_B$$

## Examples

### Example 1: NPN

```ad-question
IN the circuit shown below, the voltage at the emitter was measured andf ound to be $-0.7V$. If $\beta =50$, find $I_E, I_B, and V_C$
```

![[Electronics - Week 13 Day 3 2024-04-26 13.20.20.excalidraw]]

#### Check Cutoff

$$I_C = 0, I_E = 0$$
$$I_E =0 \rightarrow V_E = -10V \space \mbox{Neglect the Resistor}$$
$$V_{BE}=V_B-V_E=0-(-10)$$
$$V_{BE}=10V$$
```ad-warning
The transistor must be on!
```

#### Assume Active

$$V_{BE} \approxeq 0.7 \space \mbox{(CVD)}$$
$$V_B = 0 \space \mbox{(Connected to Ground)}$$

$$V_{BE}=0.7 = V_B -V_E = 0 -V_E \Rightarrow V_E = -0.7$$
**Solve for $I_E$**

$$\boxed{I_E = \frac{(-0.7)-(-10)}{10k} = 931 \micro A}$$

**Use Beta Equations to Find the Other Currents**

$$I_B = \frac{1}{\beta+1}I_E=\frac{1}{(50)+1}(931 \micro A)\Rightarrow \boxed{I_B = 18.2 \micro A}$$

$$I_C = \frac{\beta}{\beta +1}I_E = \frac{(50)}{(50)+1}(931 \micro A)\Rightarrow \boxed{I_C=913 \micro A}$$
**Find $V_C$

$$10-V_C=5kI_C$$
$$V_C = 10-5kI_C$$
$$\boxed{V_C=5.45 V}$$
##### Check Assumption

**Check $V_{BC}$**

$$V_{BC} = V_B -V_C = (0)-(5.45)\Rightarrow V_{BC} = -5.45 V$$
$$V_{BC} <^? 0.4V$$
$$-5.45 < 0.4V \space \checkmark$$

```ad-important
Since one of the two equaitons pass, then the assumption is true and the PNP BJT is in active mode
```

### Example 2: PNP

```ad-question
In the circuit shown below, the voltage at the emitter was measured and fouond to be $0.7V$. If $\beta = 100$, find $I_E, I_B,$ and $V_C$
```

![[Electronics - Week 13 Day 3 2024-04-26 13.33.59.excalidraw]]

#### Assume Active

$$V_E = 0.7 V$$

**Find $I_E$**

$$\boxed{I_E = \frac{10-V_E}{5k \Omega} = 1.86 mA}$$
**Find Other Currents**

$$I_B = \frac{1}{\beta +1}I_E = \frac{1}{(100)+1}(1.86 mA) \Rightarrow \boxed{I_B = 18.42 \micro A}$$

$$I_C = \frac{\beta}{\beta + 1}I_E = \frac{100}{100+1}(1.86mA) \Rightarrow \boxed{I_C=1.84 mA}$$
**Find $V_C$**

$$V_C - (-10) = 5kI_C$$
$$V_C = -0.8V$$

##### Check Active

$$V_{EC} \ge^? 0.3V$$

$$V_{EB} = 0.7-(-0.8)$$
$$1.5 \ge 0.3 \space \checkmark$$

```ad-important
The PNP BJT is in forward active mode! The assumption was correct.
```




