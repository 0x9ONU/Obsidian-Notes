Date: 9th February 2024
Date Modified: 9th February 2024
File Folder: Week 3
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Gauss's Law Continued
- Test Reveiw

```

# Gauss's Law Day 2

## Example 1 - E-field near a Charge Conductor

**Sketch**

![[Physics 2 - Week 3 Day 3 2024-02-09 11.05.47.excalidraw]]

**Equations**

$$\oint E^\to * dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$\int E^\to dA_1^\to + \int E^\to dA_2^\to + \int E^\to + dA_3^\to = \frac{Q}{\epsilon_o}$$
```ad-note
There is no charge on the surface area A3 because it is in the middle of the capacitor
```
$$E^\to \parallel A_1, E \bot A_2, E= 0$$
$$\int E \space dA_1 + 0 + 0 = \frac{\sigma A}{\epsilon_o}$$
$$EA = \frac{\sigma A}{\epsilon_o}$$
$$E = \frac{\sigma}{e_o}$$

## Example 2 - 

![[Physics 2 - Week 3 Day 3 2024-02-09 11.12.44.excalidraw]]

```ad-note
Given:
$$R=5.0cm$$
$$r=10cm$$
$$\lambda = 30 * 10^{-9}$$
```

$$\oint E^\to *dA^\to = \frac{Q{enc}}{\epsilon_o} \Rightarrow E = \frac{\lambda}{2 \pi \epsilon_o r}$$
$$E = \frac{30*10^{-9}}{2 \pi (8.85*10^{-12})(.1)}$$
$$E = 5,400 \frac{N}{C}$$

## Example 3 - Spherically Symmetric Charge Distribution

```ad-note
Given:
$$Radius \space r$$
$$Total \space charge \space q$$
$$\space$$
Find $E$
```
### Part A - Inside ($r < R$)

![[Physics 2 - Week 3 Day 3 2024-02-09 11.18.27.excalidraw]]

**Equations**

**Find $Q_{enc}$**
$$Q_{enc} = \frac{V_{enc}}{V_{tot}}Q$$
$$Q_{enc} = \frac{\frac{4}{3} \pi r^3}{\frac{4}{3}\pi R^3}Q$$
$$Q_{enc} = \frac{r^3}{R^3}Q$$

**Use Gauss's Law**
$$\oint E^\to \cdot dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$\int E *dA = \frac{r^3}{R^3 \epsilon_o}Q$$$$E(4\pi r^2) = \frac{r^3}{R^3}Q$$
$$E = \frac{Qr}{4\pi \epsilon_o R^3}$$

### Part B - Outside $(r>R)$

![[Physics 2 - Week 3 Day 3 2024-02-09 11.24.28.excalidraw]]

$$\oint E^\to \cdot dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$E(4\pi r^2) = \frac{Q}{\epsilon_o}$$
$$E = \frac{Q}{4\pi \epsilon_o r^2}$$

### Part C - Graph

![[Physics 2 - Week 3 Day 3 2024-02-09 11.26.42.excalidraw]]

## Example 4 - Hollow Sphere - Uniform Charge Distribution

**Sketch**

![[Physics 2 - Week 3 Day 3 2024-02-09 11.32.13.excalidraw]]

### Part A - Inside ($r < R_1$)

$$\int E^\to \cdot dA^\to = \frac{Q{enc}}{\epsilon_o}$$
$$E = 0$$
### Part B- Middle Part ($R_1 < r < R_2$)

$$Q_{enc} = \frac{V_{enc}}{V_{Tot}}Q$$
$$Q_{enc} = \frac{\frac{4}{3}\pi (r^3 - R_1^3)}{\frac{4}{3}\pi (R_2^3 - R_1^3)}Q$$
$$Q_{enc} = \frac{(r^3 - R_1^3)}{(R_2^3 - R_1^3)}Q$$

**Gauss**

$$\oint E^\to \cdot dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$E 4\pi r^2 = \frac{Q_{enc}}{\epsilon_o}$$

$$E = \frac{(r^3-R_1^3)Q}{(R_2^3-R_1^3)4 \pi r^2 \epsilon_o}$$
### Part C - Outside ($r > R_2$)

$$\oint E^\to \cdot dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$E4 \pi r^2 = \frac{Q}{\epsilon_o}$$
$$E = \frac{Q}{4 \pi \epsilon_o r^2}$$
# Test 1

## Equations Memorize

$$F = \frac{kQ_1Q_2}{r^2}\hat{r}$$
$$F^\to = q E^\to$$
$$\Phi_E = E^\to A^\to \Rightarrow \Phi_E = \oint E^\to \cdot dA^\to$$
$$\oint E^\to \cdot dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$F=ma$$

## Equations Given

$$Q = \lambda L$$
$$Q = \sigma A$$
$$Q = \rho V$$
**Kinematic Equations

## Need to Know

- Dot Products
- Surface Areas Used
- Volumes Used

## Derivations

1. Columb's Law
- Dipole
- Ring of Charge
- Line Charge 
	- --------- *p
	- |      *p
		- Infinite
- Parallel Plates

2. Gauss's Law
- Point Charge
- Infinite Line Charge
- Sheet of Charge
- Spherical Uniform Charge Distribution

## Problems to Study

- Point Charges (Square, Triangle, etc.)
- Charge on a Capacitor
- Flux through surfaces
- Sketch E-Field Lines
- ETC.

```ad-important
Look over examples, derivations, and study guide
```

