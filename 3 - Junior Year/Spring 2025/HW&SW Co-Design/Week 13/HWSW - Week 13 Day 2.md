Date: 23rd April 2025
Date Modified: 23rd April 2025
File Folder: Week 13
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Reducing Switching Power

## Introduction

Looking at the switching power equation, we know that the following affect the power draw:
- $\alpha$ - Ratio of approximately how often the gate is on ($\alpha = 1$ means that a gate turns on and off for *every* clock cycle)
- $C$ - Capacitance
- $f$ - Frequency
- $V_{DD}$ - Max voltage of the device

```ad-important
We need to try and reduce these values to reduce the power of switching
```

## Clock Gating

The best way to reduce the activity is to turn off the clock to registers in unused blocks
- Saves clock activity ($\alpha \ne 1$)
  Eliminates all switching activity in the block
- Requires determining if block will be used

![[Pasted image 20250423111014.png | center]]

## Capacitance

**Gate Capacitance**
- Fewer stages of logic
- Small gate sizes

**Wire Capacitance**:
- Good floorplanning to keep communicating blocks close to each other
- Drive long wires with inverters or buffers rather than complex gates

## Voltage/Frequency

Run each block at the lowest possible voltage and frequency that meets performance requirements

**Voltage Domains**:
- Provide separate supplies to different blocks
- Level converters required when crossing from low to high $V_{DD}$ domains

**Dynamic Voltage Scaling**:
- Adjust $V_{DD}$ and $f$ according to workload

![[Pasted image 20250423111456.png | center]]

![[Pasted image 20250423111503.png | center]]

## Static Power

