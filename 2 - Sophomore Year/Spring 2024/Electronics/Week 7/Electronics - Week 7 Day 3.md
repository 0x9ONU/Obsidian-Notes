Date: 8th March 2024
Date Modified: 8th March 2024
File Folder: Week 7
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Diodes

```

# Introduction to Diodes

## P-N Junction

![[Electronics - Week 7 Day 3 2024-03-08 13.01.15.excalidraw]]

**Depleation Region**

![[Electronics - Week 7 Day 3 2024-03-08 13.03.44.excalidraw]]

This diffusion area will fill up until it creates a potential barrier. It stops any further diffusion across the junction.

### Reverse Biased Connection (Applying Voltage to the PN Junction):

![[Electronics - Week 7 Day 3 2024-03-08 13.07.55.excalidraw]]

```ad-important
Since the depletion region grows, it leads to no current flow
```

### Forward Bias Connection

![[Electronics - Week 7 Day 3 2024-03-08 13.10.54.excalidraw]]

The Depletion Region shrinks until current is allowed to flow. To do so, enough voltage is needed to overcome the initial potential barrier such that:

$$V_F \approx 0.6 \rightarrow 0.7 V$$

**This allows for a lot of current to flow for a small amount of voltage**

## Diode

```ad-summary
title: Definition
A two terminal device that allows current to flow in one direction.
- It is able to convert AC to DC
- Used for power supplies
```

```ad-warning
Diode is a non-linear device UNLIKE an op-amp
```

**Schematic Symbol for Diode:**

![[Electronics - Week 7 Day 3 2024-03-08 13.17.12.excalidraw]]

### Ideal Diode Model

**Assumes the following**:
- If it is *Forward Bias* $\rightarrow$ short circuit $\rightarrow V_D = 0 \Rightarrow check \space i_d >0$
- If it is *Reverse Bias* $\rightarrow$ Open Circuit $\Rightarrow i_D =0 \Rightarrow check \space V_D < 0$

![[Electronics - Week 7 Day 3 2024-03-08 13.20.23.excalidraw]]

### Example

![[Electronics - Week 7 Day 3 2024-03-08 13.22.00.excalidraw]]

**Steps**
1. Assume a State
2. Analyze
3. Check

*Assuming the Diode is ON -Short the Diode*

$$V_D =0; i_d > 0$$

$$i_d = \frac{10-0}{1k} = 10mA$$

$$10mA> 0 \space \checkmark$$

```ad-check
title: Solution
Since the current through the short-circuited diode is greater than zero, that means the ideal diode is on and it is a forward bias.
```


### Bonus Exercise

```ad-question
Find both $I_o$ and $V_o$
![[Electronics - Week 7 Day 3 2024-03-08 13.26.43.excalidraw]]
```

#### Assuming that both are off

![[Electronics - Week 7 Day 3 2024-03-08 13.29.37.excalidraw]]

*For Diode 1*

$$i_{D_1} = 0; \space check \space V_{D_1} < 0$$

Since both diodes are off, $I_o = I_1 + I_2 = 0$

$V_D = 0-(-10) = 10 V \space X$

*For Diode 2*

$$i_{D_2}=0; \space check \space V_{D_2} < 0$$
$$V_{D_2} = (10) -(-10) = 20 V \space X$$
```ad-warning
Since both assumptions do not work, we can not assume both diodes are off
- Try assuming both are on
```

#### Assuming Both are ON

![[Electronics - Week 7 Day 3 2024-03-08 13.38.48.excalidraw]]

*For Diode 1*

$$V_{D_1} = 0; \space check \space i_{D_1} > 0$$

*For Diode 2*

$$V_{D_2} = 0; \space check \space i_{D_2} > 0$$

$$i_2= i_{D_2} =\frac{10}{10k}= 1mA \space \checkmark$$

$$i_1 = \frac{0-(-10)}{5k} = 2mA$$
$$I_{D_1}=I_o = i_1 - i_2 = (2mA)-(1mA) = 1mA \space \checkmark$$

