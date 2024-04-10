Date: 28th February 2024
Date Modified: 28th February 2024
File Folder: Week 6
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] Add picture to canvas
```
# Quiz 2

## Equations

$$V = - \int E^\to \cdot dr^\to$$
$$E^\to = - (\frac{dV}{dx}\hat{i} +...)$$
**E-Field Sketches**

**Finding Capacitance Total**

**Finding Resistance Total**

```ad-note
Potential Energy will not be on the quiz
```
# DC Circuits

```ad-example
What do we need to light up a lightbulb?
- Power Source
- Conductors
- Complete Circuit
```

![[Physics 2 - Week 6 Day 2 2024-02-28 11.09.50.excalidraw]]

## Simple CIrcuit

![[Physics 2 - Week 6 Day 2 2024-02-28 11.10.44.excalidraw]]

$$V=IR$$

## Series - Resistors - Derivation

![[Physics 2 - Week 6 Day 2 2024-02-28 11.12.42.excalidraw]]

$$V_T = V_1 + V_2 + V_3$$
$$V_T= I_1R_1 + I_2R_2 + I_3R_3 + I_4R_4$$
$$V_T = I_o(R_1 + R_2 + R_3)$$
$$V_T = I_o R_T$$
$$R_T=R_1 + R_2 +...R_n$$

### Examples

#### Example 1

![[Physics 2 - Week 6 Day 2 2024-02-28 11.16.36.excalidraw]]

##### Current $I$?

$$V=IR_T$$
$$I = \frac{V}{R_T} = \frac{6}{4 + 3 + 1} = \frac{6}{8} = 0.75 A$$

##### Voltage Loss over $R_2$

$$V_2 = I_2R_2$$
$$=I_oR_2=(0.75)(3)$$
$$V_2 = 2.25V$$

##### Voltage at $A, B, C$

$$V_a= 6V$$
$$V_b = V_T - V_1 = (6) -IR_1 = (6) - (0.75A)(4\Omega) = 3V$$
$$V_c = V_T - V_1 -V_2 = 0.75V$$

#### Example 2

![[Physics 2 - Week 6 Day 2 2024-02-28 11.23.55.excalidraw]]

##### Find $I$

$$I = \frac{V}{R_T} = \frac{12}{6+4} = 1.2A$$
##### Loss over $4 \Omega$

$$V_4 = IR_4 = (1.2)(4) = 4.8 V$$

##### Loss over $6 \Omega$

$$V_6 = I R_6 = (1.2)(6) = 7.2 V$$

## Internal Resistance of Batteries

```ad-summary
It is the resistance found in all batteries. As they degrade, the internal resistance increases.
```

### Example - New Battery

![[Physics 2 - Week 6 Day 2 2024-02-28 11.27.48.excalidraw]]

$$I = \frac{V_o}{R_T} = \frac{10}{10+0.21}$$
$$I = 0.98 A$$
$$P = IV = (0.98)(10) = 10 W$$

### Example - Old Battery

![[Physics 2 - Week 6 Day 2 2024-02-28 11.30.45.excalidraw]]

$$I = \frac{V_o}{R_T} = \frac{10}{15} = 0.66 A$$
$$P = IV = (0.66)(10) = 6.6 W$$


## Resistors in Parallel

![[Physics 2 - Week 6 Day 2 2024-02-28 11.33.07.excalidraw]]

### Derivation

$$I_o = I_1 + I_2 + I_3$$
$$\frac{V_T}{R_T} = \frac{V_1}{R_1} + \frac{V_2}{R_2} + \frac{V_3}{R_3}$$

```ad-note
Since the voltage will be the same over every resistor ($V_T = V_1 = V_2 = V_3$)
```

$$\frac{1}{R_T} = \frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3}$$
![[Physics 2 - Week 6 Day 2 2024-02-28 11.36.43.excalidraw]]

### Examples

#### Example 1

![[Physics 2 - Week 6 Day 2 2024-02-28 11.37.35.excalidraw]]

**What is the total resistance?**

$$R_T = 4 + (3//5)$$
$$R_T = 4 + (\frac{3*5}{3+5})$$
$$R_T = 4 + 1.88$$
$$R_T = 5.9 \Omega$$
#### Example 2

![[Physics 2 - Week 6 Day 2 2024-02-28 11.40.50.excalidraw]]

##### Find $I_o$

**Find $R_T$**

$$R_T = 6 + (3//3//5)+(4//8)$$
$$R_T = 6 + (\frac{1}{3} + \frac{1}{3} + \frac{1}{5})^{-1}+ (\frac{4*8}{4+8})$$
$$R_T = 9.82 \Omega$$
$$I_o = \frac{V_i}{R_T} = 2.04 V$$

##### $V_6$

$$V_6 = I_o  R_6 = (2.04)(6) = 12.24 V$$
##### $I_8$

