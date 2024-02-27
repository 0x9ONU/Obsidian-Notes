Date: 21st February 2024
Date Modified: 21st February 2024
File Folder: Week 5
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Capacitors

```

# Capacitors

**Capacitance**: Separates charge between two conductors.

![[Physics 2 - Week 5 Day 2 2024-02-21 11.07.17.excalidraw]]

## Derivations

$$V = - \int_0^d E^\to \cdot dr^\to$$
$$V = Ed$$
$$E = \frac{\sigma}{\epsilon_o}$$
$$V = \frac{\sigma d}{\epsilon_0} = \frac{Q}{A}\frac{d}{\epsilon_o}$$
$$Q = V \frac{A \epsilon_o}{d}$$

```ad-important
$$Q = Vc$$
$$where \space c = \frac{A \epsilon_o}{d}$$
- Measured in Farads. 
- Depends on the geometry (NOT $V, Q$)
```
x
## Types of Capacitors

**Parallel Plates**

![[Physics 2 - Week 5 Day 2 2024-02-21 11.14.53.excalidraw]]

**Cylindrical**

![[Physics 2 - Week 5 Day 2 2024-02-21 11.15.49.excalidraw]]

**Spherical**

![[Physics 2 - Week 5 Day 2 2024-02-21 11.16.43.excalidraw]]

## Energy Stored

**Work**:

$$W = qV$$

$$Q = cV$$
$$dq = cdV$$
$$dV = \frac{1}{c} dq$$

$$dW = qdV$$
$$\int dW = \int_0^Q \frac{q}{c}dq$$
$$W = \frac{Q^2}{2c}$$

**Potential Energy**

$$U = \frac{Q^2}{2C}$$
$$= \frac{(cV)^2}{2c}$$
$$U = \frac{1}{2} cV^2$$

**Energy Density ($u_E$)**

$$U = \frac{1}{2}cV^2$$
```ad-note
Eventually, you can derive the following equation
```

$$u_E = \frac{1}{2} \epsilon_o E^2$$

## Examples

### Example 1: Thunderclouds as Capacitors

![[Physics 2 - Week 5 Day 2 2024-02-21 11.24.23.excalidraw]]

```ad-question
Given:
$$d = 1000m$$
$$Q = 900 C$$
$$V = 90MV$$
Calculate the following:
- Capacitance
- Energy Stored
```

**Capacitance**

$$Q = cV$$
$$c = \frac{Q}{V} =\frac{900}{90,000,000 V} = 1 * 10^-5 F = 10 \micro F$$

**Energy Stored**

$$U = \frac{1}{2} cV^2$$
$$= \frac{1}{2}(1*10^{-5})(90*10^6)^2$$
$$U = 4*10^{10} J$$

![[Pasted image 20240221113126.png]]

```ad-note
Erm, that's a lot of energy ouchie
```

## Capacitors in Series and Parallel

### Capacitors in a Circuit

![[Physics 2 - Week 5 Day 2 2024-02-21 11.34.31.excalidraw]]

$$Q = cV$$

### Capacitors in Parallel - Derivation $\star$

**Sketch**

![[Physics 2 - Week 5 Day 2 2024-02-21 11.36.51.excalidraw]]

$$V_T = V_1 = V_2$$
$$Q_T = q_1 + q_2$$
$$C_TV_T = c_1V_1 + c_2V_2$$
$$C_T = c_1 + c_2$$

### Capacitors in Series - Derivation $\star$

![[Physics 2 - Week 5 Day 2 2024-02-21 11.40.27.excalidraw]]


$$Q_T = q_1 = q_2$$
$$V_T = V_1 + V_2$$

$$\frac{Q_T}{C_T} = \frac{q_1}{c_1} + \frac{q_2}{c_2}$$
$$\frac{1}{C_T} = \frac{1}{c_1}+\frac{1}{c_2}$$

### Examples

#### Example 1:

```ad-question
Given the circuit below, find the following:
1. Total Capacitance
2. Voltages 1 and 2
3. The charges
```

![[Physics 2 - Week 5 Day 2 2024-02-21 11.43.25.excalidraw]]

**Capacitance**

$$C_T = c_1 + c_2$$
$$C_T = (5 \micro F) + (5 \micro F)$$
$$C_T = 10 \micro F$$
**Voltages**

$$V_T = V_1 = V_2$$
$$V_1, V_2 = 9V$$

**Charges**

$$Q = cV$$
$$Q_1 = c_1 V_1 = 45 \micro C$$
$$Q_2 = c_2 V_2 = 45 \micro C$$
$$Q_T = 90 \micro C$$

