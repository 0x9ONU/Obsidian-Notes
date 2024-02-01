Date: 31st January 2024
Date Modified: 31st January 2024
File Folder: Week 2
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Signals
	- Frequency
	- Analog Vs. Digital

```

# Signals

```ad-summary
**Signal**: Carries information about the physical world.
- Light
- Speed
- Sound
```

**Signal Processing** is performed by electronic systems.
- To do so, the signal must be converted to either voltage or current.

**Transducer**: Converts physical signals to an electrical signals. A linear circuit.
- ex. A microphone is a transducer that converts sound to a voltage output

```ad-note
For this course, we will assume that the signal has already been converted down into a linear circuit. Can be represented by a Thevenin's or Norton's equivalent circuit
![[Electronics - Week 2 Day 2 2024-01-31 13.08.53.excalidraw]]
```

## Voltage & Current Signals on a Transducer Load

![[Electronics - Week 2 Day 2 2024-01-31 13.12.07.excalidraw]]

```ad-important
Use voltage divider
$$v_o = v_s \frac{R_L}{R_s+R_L}$$
```

```ad-note
Much better when $R_s << R_L$. ($R_s$ is close to zero)
- This would make $v_0 \approx v_s$
```


![[Electronics - Week 2 Day 2 2024-01-31 13.13.46.excalidraw]]

```ad-important
Use current divider
$$i_o = i_s \frac{R_s}{R_s + R_L}$$
```

```ad-note
Much better when $R_s >> R_L$ ($R_L$ close to $0$)
- $i_0 \approx i_s$
```

### Examples

#### Example 1:

```ad-question
Given the two circuits below, find both $V_os$ and $i_{sc}$
```

![[Electronics - Week 2 Day 2 2024-01-31 13.17.54.excalidraw]]

| Thevenin          | Norton      |
| ----------------- | ----------- |
| $V_s$             | $i_s * R_s$ |
| $\frac{V_s}{R_s}$ | $i_s$            |
#### Example 2:

```ad-question
Any given signal source provides and open circuit ovltage ($V_{oc}$) and a short circuit current ($i_{sc}$). For the following soruces, calcualte the internal resistance $R_s$; the Norton Current $i_s$, and the Thevenin voltage $V_s$
1. $V_{oc} = 3v$, $i_{sc} = 3mA$
2. $V_{oc} = 500mV, i_{sc} = 50 \mu A$
```

##### Part A:
$$V_s = 3V$$
$$i_s = 3mA$$

$$R_s = \frac{V_{oc}}{i_{sc}} = \frac{V_s}{i_s} = \frac{3V}{3mA} = 1 k \Omega$$
$$$$

##### Part B:
$$V_s = 500 mV$$
$$i_s = 50 \mu A$$
$$R_s = \frac{V_s}{i_s} = 10 k \Omega$$
#### Example 3:

```ad-question
Consider the voltage source shown below connected to loads with the given values. In each case, find the percentage change in the voltage and current across $R_L$, $V_L$, and $I_L$, in reponse to the 10% increase in the value of $R_L$ In which cases is more approriate to use a Norton equivalent source? In those cases, find the NOrton equivalent for $V_s = 1V$.

![[Electronics - Week 2 Day 2 2024-01-31 13.35.13.excalidraw]]
1. $R_s = 2 k \Omega$, $R_L = 100 k \Omega$
2. $R_s = 100 \Omega$, $R_L = 8 \Omega$
```

```ad-note
Remember:
$$V_L = \frac{R_L}{R_s + R_L} V_s$$
$$I_L = \frac{1}{R_s+R_L} V_S$$
```

**10% increase**:

$$V_L = \frac{1.1R_L}{R_s + 1.1R_L} V_s$$
$$I_L = \frac{1}{R_s+1.1R_L} V_S$$

##### Part A:

Since $R_s$ is much smaller than $R_L$, use Thevenin's circuit

$$V_L = \frac{100}{2+100} = 0.98 V_s$$
$$V_L = 0.98 V_s$$
$$I_L = \frac{1}{100+2} V_s \Rightarrow I_s = (9.8 \mu)V_s$$

**Considering the 10% Increase**

$$V_L = \frac{1.1(100)}{2+1.1(100)}V_s = 0.982 V_s$$
$$I_L = \frac{1}{R_s +1.1R_L} V_s = \frac{1}{2+1.1(100)} = (0.0809 \mu) V_s$$


```ad-important
When the load resistance changed:
- The load voltage hardly changed
- The load current changed by 8.9%
$$\space$$
Thus, the voltage source is appropriate for this case.
```

##### Part B:

Since $R_L$ is much smaller than $R_s$, use Norton circuit

$$V_L = \frac{8}{8+100} V_s = (74.07m)V_s$$
$$I_L = \frac{1}{8+100} V_s= (9.26m)V_s$$
**Considering the 10% increase**


## Frequency Spectrum of Signals

![[Electronics - Week 2 Day 2 2024-01-31 13.28.41.excalidraw]]


