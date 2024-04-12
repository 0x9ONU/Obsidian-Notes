Date: 5th April 2024
Date Modified: 5th April 2024
File Folder: Week 11
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

$$\newcommand{\emf}{\mathcal{E}}$$
# Review - Inductors ($L$)

```ad-note
A solenoid with a bunch of coils
- Generats a magnetic field using a current
- Measured in Henry
- Stores Magnetic field energy
```

**Equations**

$$L = \frac{N \Phi_B}{I}, L = \mu_on^2A \mathcal{L}$$
$$V(\mathcal{E})=-L\frac{dI}{dt}$$


## Examples

### Example 1 - Current Changing in an Inductor


$$4.0A \to 1.0A$$
$$t = 0.75 s$$
$$\emf_{out} = 20mV$$
$$L=?$$

$$\emf = -L\frac{dI}{dt}$$
$$\emf = -L \frac{\Delta I}{\Delta t}$$
$$L = \emf \frac{\Delta t}{\Delta I} = (20mV)\frac{(1-4)A}{(0.75s)}$$
$$L = 5 mH$$

### Example 2 - Given Current as a function of time

```ad-question
Given:
- $L = 50 mH$
- $I = 4t^2+2t$
- $\emf(2) = ?$
```

$$\emf = -L \frac{dI}{dt}$$
$$\emf(t) = -(50mH)\frac{d}{dt}(4t^2+2t)$$
$$\emf (t) = -(0.4t + 0.1)$$
$$\emf(2) = -(0.4(2)+0.1)$$
$$\emf(2) = -0.9 \space V$$
### Example 3

```ad-question
Given:
- Inductor with 200 turns
- $\frac{dI}{dt}=10 \frac{A}{s}$
- $\emf = 12 mV$
$$\space$$
Find $\Phi_B$ at $I = 4A$
```

$$\emf = -L\frac{dI}{dt}$$
$$(12mV) = -L(10 \frac{A}{s})$$
$$L = 1.2mH$$

$$L = \frac{N \Phi_B}{I}$$
$$\Phi_B = \frac{IL}{N}$$
$$\Phi_B = 2.4*10^{-5} \space Tm^2$$

# Energy in $B-Field$

## Sketch

![[Physics 2 - Week 11 Day 1 2024-04-10 11.25.14.excalidraw]]

## Closed Switch

$$\emf = V_R +V_L$$
$$\emf = IR + L\frac{dI}{dt}$$

**Power**

$$I \emf = I^2R + LI \frac{dI}{dt}$$
**After Taking  Derivation**

$$\boxed{U_L = \frac{1}{2}IL^2}$$

# LC Resonance Frequency

## Sketch

![[Physics 2 - Week 11 Day 1 2024-04-10 11.31.01.excalidraw]]

This creates a **Natural Frequency** within the circuit

## Equations

$$V_C + V_L =0$$
$$\frac{Q}{C}+ L \frac{dI}{dt}=0$$
$$\frac{Q}{C}+L \frac{d}{dt}\frac{dQ}{dt}=0$$
$$\frac{Q}{C}+L \frac{d^2Q}{dt^2} = 0$$

```ad-note
This is much like the derivation for a spring
$$F = -kx$$
$$ma = -kx$$
$$\frac{d^2x}{dt^2} = \frac{-k}{m}x$$
$$\frac{d^2x}{dt^2} + \frac{k}{m} = 0$$
Good solutions are:
- $x=0$
- $x = A\sin \omega t$
```

**Solution after Derivation**

$$\boxed{Q = Q_o \sin \omega t}$$
$$w = \frac{1}{\sqrt{LC}}$$
## Prove

$$\frac{Q}{C}+ L \frac{d^2Q}{dt^2}=0$$
$$\frac{Q}{C}+L \frac{d^2}{dt^2}(Q_o\sin \omega t)=0$$
$$\frac{Q}{C}+ L Q_o \frac{d}{dt}(\omega \cos \omega t)=0$$
$$\frac{Q}{C}+LQ_ow^2(-\sin \omega t)= 0$$
$$\frac{Q}{C}-L\omega^2Q =0$$
$$\frac{Q}{C}- L(\frac{1}{LC})Q$$
$$\frac{Q}{C} - \frac{Q}{C} = 0$$
$$\boxed{0=0}$$
# Transformers

![[Physics 2 - Week 11 Day 1 2024-04-10 11.43.57.excalidraw]]

![[Physics 2 - Week 11 Day 1 2024-04-10 11.46.42.excalidraw]]

```ad-important
Can be used to step up or step down voltage
```

## Equation

$$\frac{V_P}{N_P} = \frac{V_s}{N_p}$$
## Example

```ad-question
Given:
- $N_s = 50 \mbox{ Turns}$
- $V_p = 7000 \space V$
- $V = 240 \space V$
- $N_p = ?$
```

$$\frac{V_P}{N_P} = \frac{V_s}{N_p}$$
$$N_P = \frac{V_P}{V_s}N_s$$
$$N_p = 14,600 \mbox{ Turns}$$
