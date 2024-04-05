Date: 1st April 2024
Date Modified: 1st April 2024
File Folder: Week 10
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Faraday's Laws (1831)

## Introduction

```ad-note
title: Remember
- Moving Charges (aka. Current) create a B-Field
- Can a magnetic field cause charges to move? There has to be some voltage that generates current
- For this to work, it must be a **change** in magnetic field.
```

```ad-important
Changing of a $B^\to$-Field creates a Voltage ($e_{inf}$)
```

## Equations

$$e_{inf} = \frac{-d \Phi_B}{dt}$$
$$\int E^\to \cdot ds^\to = \frac{-d}{dt} \int B^to \cdot dA^\to$$
$$e = \frac{-dB^\to \cdot A^\to}{dt}$$
$$e = \frac{-d}{dt} BA \cos \Theta$$
## Sketch

![[Physics 2 - Week 10 Day 1 2024-04-01 11.14.32.excalidraw]]

--- 
$$A^\to - \mbox{ Normal to Loop}$$
$$e_{inf} = \mbox{ Voltage Induced}$$
$$I - \mbox{ Current Induced}$$

# Lenz's Law

```ad-note
Used to give a direction to the induced current.
- Gives why there is a negative sign in the induced voltage equation
```

```ad-important
The incuded current in the loop creates a **second B-Field** ($B_2^\to$) that opposes the first ($B_1^\to$) 
```

## Sketches

![[Physics 2 - Week 10 Day 1 2024-04-01 11.21.46.excalidraw]]

![[Physics 2 - Week 10 Day 1 2024-04-01 11.22.28.excalidraw]]

# Examples

## Example 1 - Changing Magnetic Field Through Coil

![[Physics 2 - Week 10 Day 1 2024-04-01 11.25.15.excalidraw]]

$$A^\to || B^\to$$
$$\Theta=0 \degree$$
Loop radius $r$:

The magnetic field is changing such that:
$$B = B_o e^\frac{-t}{\tau}$$

Constants $B_o, \tau$

**FIND the Voltage ENF**

$$e = \frac{-d}{dt}(BA\cos \Theta)$$
$$e = -A\frac{d}{dt}B$$
$$e = -(\pi r^2)(B_oe^\frac{-t}{\tau})\frac{d}{dt}(\frac{-t}{\tau})$$
$$e = \frac{\pi r^2}{\tau} B_oe^\frac{-t}{\tau}$$
## Conducting Ring

![[Physics 2 - Week 10 Day 1 2024-04-01 11.32.05.excalidraw]]

```ad-question
Find $\frac{dB}{dt}$ given:
- $B^\to || A^\to$
- $\Theta = 0 \degree$
- $r = 3.5 m$
- $I = 2 A$
- $R = 1.5*10^{-3} \Omega$
```

$$e = \frac{-d}{dt} BA \cos \Theta$$
$$e = -A \frac{d}{dt}B$$
$$\frac{dB}{dt} = -e(\frac{1}{A})$$
$$=-IR( \frac{1}{\pi r^2})$$
$$\frac{dB}{dt} = -7.8 * 10^{-5} \space \frac{T}{s}$$

## Example 3 - Wire Rotated $180 \degree$ in $\Delta t = 0.2 s$

**Before Movement**
![[Physics 2 - Week 10 Day 1 2024-04-01 11.37.37.excalidraw]]

$$B^\to || A^\to \Rightarrow \Theta = 0$$

**After Movement**

![[Physics 2 - Week 10 Day 1 2024-04-01 11.38.54.excalidraw]]

$$B^\to \perp A^\to \Rightarrow \Theta = 180\degree$$

```ad-question
Find $e_{inf}$ given the following:
- $N = 25 \mbox{ turns}$
- $r = 0.5m$
- $B_{earth} = 50 \micro T$
- $e = ?$
```

$$e = \frac{-d \Phi_B}{dt}$$
$$e = -N \frac{d}{dt} BA \cos \Theta$$
$$e = -NBA \frac{\Delta \cos\Theta}{ \Delta t}$$
$$= -NBA( \frac{\cos \Theta_f - \cos \Theta_i}{ \Delta t})$$
$$= -(25)(50 * 10^{-6})[\pi(0.5)^2]\frac{(0) -(1)}{(0.2)}$$
$$e = 9.8*10^{-3} \space (V)$$
## Example 4 - Loop at $30 \degree$ to a $B^\to$-Field ($2 T$) with Increasing Loop Size

```ad-question
Find $e_{inf}$ given:
$$r_i = 2m$$
$$r_f = 3m$$
$$\Delta t = 0.4 s$$
```

![[Physics 2 - Week 10 Day 1 2024-04-01 11.44.28.excalidraw]]


$$e = \frac{- d \Phi_B}{dt}$$
$$e = -N \frac{d}{dt}BA \cos \Theta$$
$$e = -(1 \mbox{ turns}) (2T)(\frac{\Delta A}{\Delta t})\cos (30\degree)$$
$$= -(1 \mbox{ turns}) (2T)(\frac{\pi r_f^2-\pi r_i^2}{0.4})\cos (30\degree)$$$$e = -68 V$$