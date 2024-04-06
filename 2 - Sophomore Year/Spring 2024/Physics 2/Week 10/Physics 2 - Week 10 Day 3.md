Date: 5th April 2024
Date Modified: 5th April 2024
File Folder: Week 10
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```
# Generators and Motors

## Generators

- Makes Electricity
- Turns work into Electricity
- Moving metal wires in a B-Field makes a Voltage ($e_{inf}$)
- Turn coil in a B-field. Induces and $e_{inf}$. This makes a current.

**Energy Sources?**
- Wind, water, steam (coal, gas, nuclear, etc.)

## Motors

- Do Work
- Electricity turns into work
- Electricity can make a $B_1$-Field repelled by an external $B_2$-Field
- use an electro-magnet that spins when placed in an external B-Field

# Inductors ($L$)

- Small Solenoid
- Measured in Henrys
- Stores B-Field Energy in Circuit
- Mostly used in AC Circuits

![[Physics 2 - Week 10 Day 3 2024-04-05 11.23.32.excalidraw]]

## Equations

$$L = \frac{N \Phi_B}{I} \space (\mbox{Self Inductance})$$
$$L = N_o n^2 Al$$
$$V_L(e)=-L\frac{dI}{dt} \space (\mbox{Inductor Voltage Drop})$$

## Derivation - Inductance of a Solenoid $\star$

### Sketch

![[Physics 2 - Week 10 Day 3 2024-04-06 18.12.02.excalidraw]]

$$n = \frac{N}{L}$$

$$L = \frac{N \Phi_B}{I}$$
$$= \frac{nl(BA)}{I}$$

$$\mbox{B-Field of a Solenoid} \Rightarrow B = N_oI_n$$
$$L = \frac{nl(N_oI_nA)}{I}$$
$$L = N_on^2Al$$
```ad-important
This means that the inductance is idependent of the current or votlage
```

## Voltage Dropped over Inductor

![[Physics 2 - Week 10 Day 3 2024-04-06 18.17.14.excalidraw]]

$V_R$ - Voltage Dropped over Resistor

$V_L(e)$ - Voltage Dropped by Inductor

## Derivation for $V_L(e)$

$$L = \frac{N\Phi_B}{I}$$
```ad-note
Assume $N=1$
```
$$L = \frac{\Phi_B}{I}$$
$$IL = \Phi_B$$
$$L = \frac{dI}{dt} = \frac{d \Phi_B}{dt}$$
$$L = \frac{dI}{dt} = -e$$
$$e = -L\frac{dI}{dt}$$
$$\boxed{V_L = -L\frac{dI}{dt}}$$

# RL Circuits

## Discharging + Derviation!

### Sketch

![[Physics 2 - Week 10 Day 3 2024-04-06 18.34.37.excalidraw]]
### Equations

$$V = V_R + V_L$$
$$0 = IR + L \frac{dI}{dt}$$
$$\boxed{I = I_o e^{-\frac{R}{L}t}}$$

### Proof

$$IR + L \frac{dI}{dt}=0$$
$$IR + L \frac{d(I_oe^{-\frac{R}{L}}t)}{dt}=0$$
$$IR + L(I_oe^{-\frac{R}{L}t})(\frac{d}{dt}\frac{-R}{L}t)=0$$
$$IR + L(I)(\frac{-R}{L})=0$$
$$IR -IR =0$$
$$\boxed{0=0}$$

