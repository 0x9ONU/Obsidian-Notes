Date: 26th February 2024
Date Modified: 26th February 2024
File Folder: Week 6
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Resistors

```

# Resistors

## Background

![[Physics 2 - Week 6 Day 1 2024-02-26 11.07.05.excalidraw]]

**With an open circuit**:
- $I = 0$
- Thermal motions
- Not net flow or $e^-$
- Random motion

![[Physics 2 - Week 6 Day 1 2024-02-26 11.09.58.excalidraw]]

**With a closed circuit:**
- VOltage Source
- Potential Difference, which means energy
- Force - $F^\to = qE^\to$ or $e^-$
- Net Flow

## Current ($I$)

$$I = \frac{dQ}{dt}$$

How many electrons are flowing through a specific point on a wire at a specific time. **Charge per unit of time**.

```ad-warning
NOT a vector at the lower level. A direction is required; however. (Plus or Minus)
```

### Conventional Current

- Direction that positive charges would move if they moved.

![[Physics 2 - Week 6 Day 1 2024-02-26 11.14.52.excalidraw]]

```ad-note
The math is the same for both $I_-$ and $I_+$
- Use the conventional current instead
```

## Resistance & Resistivity

![[Pasted image 20240305094656.png]]a 

```ad-summary
$$R = \frac{V}{I} \space \space \frac{Volts (V)}{Amp (A)} = Ohms (\Omega)$$
```

**High Resistance** means that it is hard for $e^-$ to travel 
- Plastic
- Rubber

**Low Resistance** - Easy for $e^+$ to flow through
- Metals

$$R \equiv \rho \frac{L}{A}$$

- $\rho$ - Resistivity
- $L$ - Length
- $A$ - Area

**Thicker Wires and Shorter Wires have less resistance**

```ad-note
This works for relatively low temperatures
```

```ad-important
tilte: Temperature Dependance
$$R_H > R_C$$
```

## Examples

### Example 1: Copper Versus Iron Wire

- Same Length
- Same Resistance
- Cu $r = 0.61 mm$
- Fe $r = ?$

$$R = \rho\frac{L}{A}$$
$$L_C = \frac{R_cA_c}{\rho_c}$$
$$L_I = \frac{R_I A_I}{\rho_I}$$
$$L_C = L_I$$
$$\frac{R_cA_c}{A_c}{\rho_c} = \frac{R_IA_I}{\rho I}$$
$$A_I =\frac{A_c \rho_I}{\rho_c}$$
$$\pi r^2_I = \frac{\pi r_c^2 \rho_I}{\rho_C}$$
$$r_I = \sqrt{\frac{r_c^2 \rho_I}{\rho_c}}$$
$$r_I = \sqrt{\frac{(0.611)^2 (10*10^{-8})}{1.72 * 10^{-8}}}$$

## Ohm's Law

$$V=IR \space \space \space (not)$$

### I-V Plots
**Resistor (I-V plot)**

![[Physics 2 - Week 6 Day 1 2024-02-26 11.35.04.excalidraw]]

$$V=IR$$
$$I = \frac{1}{R}V$$
$$y = mx+b$$

*Linear* means that it is *ohmic*

**Diode** (not following ohms law)

![[Physics 2 - Week 6 Day 1 2024-02-26 11.36.59.excalidraw]]

## Power & Energy



![[Physics 2 - Week 6 Day 1 2024-02-26 11.38.45.excalidraw]]

```ad-summary
To go up the mountain, you need to burn through a lot of energy in a shorter amount of time.
```

A circuit just changes between different types of energy. $chemcial \rightarrow kinetic \rightarrow electric$

### Derivation

$$U= qV$$
$$dU = dq V$$
$$dU = I dt V$$
$$\frac{dU}{dt} = IV$$
$$Power = IV \space \space \space (watts)$$

$$P = I^2 R$$
$$P = \frac{V^2}{R}$$

### Example - Heater

$$I = 10A, V = 120 V$$
$$\$0.14/kw h$$
$$P = IV = (10)(120) = 1200W = 1.2 kW$$
$$Cost = (1.2kW)($0.14/kWh) \approx $0.15 \space hr$$