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

Consumed even when chip is quiescent
- Leakage draws power from nominally OFF devices
- Ratioed circuits burns power in fight between ON transistors

## $V_{th}$ Tradeoff

The threshold voltage ($V_{th}$) of a MOSFET significantly impacts the speed and static power characteristics of CMOS logic gates.

The propagation delay $t_d$, which is a key measure of circuit speed, is influenced by the drive current $I_{on}$ on a given transistor

Given $\alpha$, a technology-dependent constant (between 1 and 2). This relationship is approximately:

$$t_d \approx \frac{1}{I_{on}} \approx \frac{1}{(V_{DD}-V_t)^\alpha}$$

While lowering $V_{th}$ improves the speed, it also increases *subthreshold leakage current*, which leads to higher static power consumption
- Conversely, increasing $V_{th}$ reduces leakage, but has a slower performance

To balance performance and power consumption, modern digital designs often employ **Multi-$V_{th}$ Strategies**:
- Low $V_{th}$ transistors are used in timing-critical paths to maximize speed
- High $V_{th}$ transistors are used in non-critical paths to minimize leakage and power

### Methods to Control $V_{th}$

1. **Doping Concentration**: Higher doping → higher $V_{th}$
2. **Channel Length Modulation**: Shorter channel lengths can slightly reduce $V_{th}$
3. **Oxide Thickness**: A thinner gate oxide increases the gate control over the channel, *reducing* $V_{th}$
4. **Work Function Engineering**: Minimum energy needed to remove an electron from the material into a vacuum. Changing the gate material or its work function can shift the threshold voltage without altering doping profiles
5. **Body Biasing**: Applying voltage between the transistor body and source modifies $V_{th}$ dynamically
	- *Forward Body Bias*: Lower $V_{th}$ (increases speed, more leakage)
	- *Reverse Body Bias*: Raises $V_{th}$ (reduces leakage, slower)
6. **Dual/Multi $V_{th}$ Processes**: Modern fabrication processes offer different threshold voltage transistors on the same die, enabling selective use of high- and low $V_{th}$ devices

## Static Power Example

Revisit power estimation for 1 billion transistor chip

```ad-question
Estimate static power consumption given:
- Subthreshold leakage:
	- Normal $V_{th} \rightarrow 100 nA/\micro m$
	- High $V_{th} \rightarrow 10 nA/\micro m$
	- High $V_{th}$ used in all memories and in $95 \%$ of logic gates
- Gate Leakage $\rightarrow 5 nA/\micro m$
- Junction Leakage $\rightarrow$ Negligible
```

$$W_{normal-V_{th}} = (50*10^6)(12 \lambda)(0.025 \micro m/\lambda)(0.05)=0.75*10^6 \micro m$$
$$W_{high-V_{th}}=[(50*10^6)(12 \lambda)(0.95) + (950*10^6)(4 \lambda)](0.025 \micro m/\lambda)=109.25*10^6 \micro m$$

$$I_{sub} = [W_{normal-V_{th}}*100 nA/\micro m+W_{high-V_{th}}*10nA/\micro m]/2 = 584 mA$$
$$I_{gate} = [(W_{normal-V_{th}}+W_{high-V_{th}})*5 nA/\micro m]/2=275mA$$
$$P_{static}=(584mA+275mA)(1.0V) = 859mW$$



