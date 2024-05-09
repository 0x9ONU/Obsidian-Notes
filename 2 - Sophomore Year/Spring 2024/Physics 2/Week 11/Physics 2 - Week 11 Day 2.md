fDate: 12th April 2024
Date Modified: 12th April 2024
File Folder: Week 11
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Displacement Current (1860)

```ad-summary
If there was a current in a wire such that:

![[Physics 2 - Week 11 Day 2 2024-04-12 11.01.31.excalidraw]]

Decided to ask what if there was a capacitor on the wire that was charging instead

![[Physics 2 - Week 11 Day 2 2024-04-12 11.02.24.excalidraw]]

Found that there is a B-field on the capacitor, but there was no wire or current.
```

## Derivation

### Sketch

![[Physics 2 - Week 11 Day 2 2024-04-12 11.04.19.excalidraw]]

- There is an electric field between the plates
- The E-field is changing as it charges

### Equations

**Use Guass's Law for Electricity**

$$\int E^\to \cdot dA^\to = \frac{Q}{\epsilon_o}$$
$$\frac{d}{dt}\int E^\to \cdot dA = \frac{dQ}{\epsilon_o dt}$$$$\frac{d}{dt} \Phi_E = \frac{I_d}{\epsilon_o}$$
$$I_d = \epsilon_o \frac{d \Phi_E}{dt}$$
### Ampere's Law Turns into a Maxwell Equation

$$\oint B^\to \cdot d l^\to = \mu_o(I+I_d)$$

# Maxwell's Equations

$$\oint E^\to \cdot da^\to = \frac{Q}{\epsilon_o} \space \space \space \mbox{(Gauss's Law for Electric Fields)}$$
$$\oint B^\to \cdot da^\to = 0 \space \space \space \mbox{(Gauss's Law for Magnetism - No Monopole Magnets)}$$
$$\oint E^\to \cdot dl^\to = \frac{- d \Phi_B}{dt} \space \space \space \mbox{(Faraday's Law)}$$
$$\oint B^\to \cdot dl^\to = \mu_o(I + I_d) \space \space \space \mbox{(Maxwell's Law)}$$

## In a Vacuum (No Charges)

$$\oint E^\to \cdot da^\to = 0$$
$$\oint B^\to \cdot da^\to = 0$$
$$\oint E^\to \cdot dl^\to = \frac{-d\Phi_B}{dt}$$
$$\oint B^\to \cdot dl^\to = \mu_o \epsilon_o \frac{d \Phi_E}{dt}$$

## Wave Equation

$$\frac{\delta^2 E^\to}{\delta x^2} = \mu_o\epsilon_o\frac{\delta^2E^\to}{\delta t^2}$$
**SOLUTION**
$$E^\to = E^\to_o \cos(kx-wt)$$

```ad-note
Velocity of a wave:
$$$v_w = \frac{1}{\sqrt{\mu_o \epsilon_o}}$
```

$$v_w = \frac{1}{\sqrt{(4 \pi *10^{-7})(8.9*10^{-12})}} = 2.9979*10^{8} \frac{m}{s}$$
```ad-important
THIS IS THE VELOCITY OF LIGHT
```

# Light

## Properties

1. Light is a transverse wave made of both electric and magnetic fields
   ![[2.png]]
2. E-field and B-field oscillate at the same frequency
3. Velocity is perpendicular to both $E^\to$ and $B^\to$
4. Direction of Velocity (Poynting Vector) $S = E \otimes B$
5. All E-M waves travel at $c$ in a vacuum. 
6. $c = 3*10^8 \frac{m}{s}$
7. It does NOT need a medium to travel
8. E&M waves carry Energy (laser, sunlight, etc.)
9. Light *is* Energy

```ad-note
The following means the same:
- Light
- E&M waves
- E&M radation
```

## Speed of Light

```ad-question
How do you measure something that fast?
```

**Galileo Speed Experiment**

![[Physics 2 - Week 11 Day 2 2024-04-12 11.33.09.excalidraw]]

Would turn on a light and then the other person would also turn on the light back. Realized that it was way to fast to measure at the time, and concluded that the speed of the light was *really* fast.

**Light goes around the earth 7.5 times in 1.0 second.**

```ad-note
Einstein says that the speed of light is very special in terms of the universe.
```

## Generate Light (E & M Waves)

- Accelerating or oscillating a charge
- The frequency of oscillation is the frequency of the wave
- All objects emit E&M waves (body full of moving charges)

## Electro-Magnetic Spectrum

![[electromagnetic-spectrum.webp]]

- Radio Waves
- TV Waves
- Microwaves
- Infrared (IR)
- Visible
- Ultraviolet (UV)
- X-rays
- Gamma Waves

```ad-note
In visible light, red has a less energy than violet light
```

## Lasers

Light Amplification Stimulated Emission Radiation (LASER):
- One Color
- One wavelength
- Highly concentrated energy

### Application

- Industrial cutting
- Surgery
- Removing scars
- Surveying
- Military - weapons etc.