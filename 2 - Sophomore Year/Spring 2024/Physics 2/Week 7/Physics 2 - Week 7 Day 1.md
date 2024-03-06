Date: 4th March 2024
Date Modified: 4th March 2024
File Folder: Week 7
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Current Density

```

# Current Density ($\bar J$)

![[Physics 2 - Week 7 Day 1 2024-03-04 11.02.52.excalidraw]]

$$I = \int \bar J *d\bar A$$
$$I = J^\to \cdot A^\to \space \space \space (J \space constant)$$
$$I = JA \space \space \space J \perp A$$

## Current Density Related to Electron Drift Speed

![[Untitled.jpg]]

**Derivation**

$$I = \frac{dQ}{dt}$$
$$I = \frac{d}{dt}a N_A$$
$$n = \frac{N_A}{Vol} (\frac{\# \space charges}{unit \space volume})$$
$$I = \frac{\Delta(qnVol)}{\Delta t}$$
$$I = \frac{\Delta(qnAL)}{\Delta t}$$
$$I = \frac{qnA \Delta x}{\Delta t}$$
$$\frac{I}{A} = qn \sqrt d$$
$$J = qn \space u_d \space \space \space (u_d - drift \space speed)$$

## Example

### Examples 1 - Jumper Cables ($u_d$)

$$I = 400 A, A = 36 mm^2, L = 2m, n = 8.5*10^{22} \frac{e^{-}}{cm^3}$$
```ad-note
We need to find time
```

**Step One: Find Drift Velocity**

$$V_d = \frac{J}{nq} = \frac{I}{A} = \frac{1}{nq}$$
$$v_d = \frac{400}{36mm^2}*(\frac{1000mm}{1m})^2(\frac{1}{8.5*10^{22} \frac{e^-}{cm^3}})(\frac{1}{\frac{100cm}{1m}})^3(\frac{1}{1.6*10^{-19}C})$$
$$v_d = 8*10^{-4}\frac{m}{s}$$
**Find Time**
$$v_d = \frac{L}{t}$$
$$t = \frac{L}{u_d} = \frac{2m}{8*10^{-4}}=2500s$$
$$t \approx 41 \space mins$$
![[Physics 2 - Week 7 Day 1 2024-03-04 11.18.13.excalidraw]]

```ad-warning
This is how long it takes for the wires to be completely emptied
```

### Example 2 - Charge Flowing

$$A = 2.0 cm^2, Q(t) = 3t^2+2t$$
```ad-question
1. Calculate the current ($I$)
2. What is the current density ($J$)?
```

**Part 1: Current**

$$I = \frac{dQ}{dt} = \frac{d}{dt}(3t^2+2t)$$
$$I = 6t + 2 \space A$$

**Part 2: Current Density**

$$J = \frac{I}{A} = \frac{6t+2}{2} = 3t+1 ( \frac{A}{cm^2})$$

### Example 3
Given:
$$Q = 2t^3 +2t^2 + 1$$
Find the current at $I(2)$

$$I = \frac{dQ}{dt} = \frac{d}{dt}(2t^3+2t^2 +1)$$
$$I = 6t^2 + 4t$$
$$I(2) = 6(2)^2+4(2)$$
$$I(2) = 32 \space (A)$$

### Example 4

$$J^\to = 3 \hat i + 4 \hat j$$
$$A^\to = 4 \hat i + 6 \hat j + 2 \hat k$$
$$I = J^\to \cdot A^\to $$
$$I = (3*4)+(6*4)+(0*2)$$
$$I = 36 \space (A)$$







