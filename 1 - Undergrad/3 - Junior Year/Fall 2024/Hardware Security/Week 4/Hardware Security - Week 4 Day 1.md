Date: 16th September 2024
Date Modified: 16th September 2024
File Folder: Week 4
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Side Channel Attacks and Countermeasures

## Introduction

- Classic cryptography views the secure problems with *mathematical abstractions*
- The classic cryptanalysis has had a great success and promise
	- Analyzing and quantifying crypto algorithms’ resilience against attacks
- Recently, many of the security protocols have been attacked through *physical attacks*
	- Exploit weaknesses in the cryptographic system hardware implementation aimed to recover the secret parameters

```ad-note
Typically, cryptoanalysts focus on the link between two parties/hosts. However, we often fail to recognize the possible physical access to the device itself
```

### Traditional Model

![[Pasted image 20240916141106.png]]

Attack on channel between communicating parties
- Encryption and cryptographic operations in *black boxes*
- Protect by strong mathematic algorithms and protocols
- Computationally secure

### Embedded Cryptographic Devices

**Cryptographic Device**: An electronic device that *implements* a cryptographic algorithm and *stores* a cryptographic key. It is capable of performing cryptographic operations using that key.

![[Pasted image 20240916141244.png]]

*Embedded:* It is exposed to adversaries in a hostile environment; full physical access, no time constraints.

```ad-important
A system is as secure as its weakest link
- These embedded systems can be the *weakest link*
```

## Side-Channel Leakage

```ad-note
$$\mbox{Physical Attacks} \ne \mbox{Cryptoanalysis}$$
```

Observes the physical quantities the device’s vicinity and use additional information during cryptoanalysis
- Does not tackle the algorithm’s math

![[Pasted image 20240916141519.png]]

### Examples of Side-Channels

**Passive**:
- Timing
	- Overall or “local execution time”
- Power, EM radiation
	- Predominant CMOS technology
	- Dynamic power consumption
	- Electric current induces an EM field
- More exotic
	- Sound, temperature…

**Invasive**: Photonic Emission

![[Pasted image 20240916141629.png]]

#### Invasive Attacks

**Passive**: Micro-Probing
- Probe the bus with a very thin needle
- Read out data from bus or individual cell directly
- Several needles concurrently

![[Pasted image 20240916141716.png]]

**Active**: Circuit Modification
- Connect or disconnect security mechanisms
	- Disconnect security sensors
	- RNG stuck at a fixed value
	- Reconstruct vlown fuses
- Cut or paste tracks with laser or focused ion beam
- add probe pads on the buried layers

![[Pasted image 20240916141806.png]]

### Fault Injection Attacks

**Non-Invasive**: Apply combination of unaccounted environmental conditions to bypass security mechanisms or infer secrets
- Vcc
- Glitch
- Clock
- Temperature
- UV
- Light
- X-ray

![[Pasted image 20240916142017.png]]

**Invasive**: Exploit faulty behavior provoked by physical stress applied to the device
- Laser fault injection

![[Pasted image 20240916142105.png]]

### Overview

In this lecture, we will focus on cover:
- Power consumption
- Electro-Magnetic
- Timing and Delay

## Side-Channel Attacks

```ad-summary
title: Definition
- Attacks at side-channel inputs and outputs, bypassing the theoretical strength of cryptographic algorithms
```

### Measuring Power Consumption

Used to find the instantaneous power over time and finding correlations.

![[Pasted image 20240916142329.png]]

**Typical Measurement Setup**

![[Pasted image 20240916142347.png]]

#### Predominant Strategies

**Logic:** Constant supply voltage, supply current varies

**Predominant technology: CMOS**
- Low static power consumption
- Relatively high dynamic power consumption
- Power consumption depends on input

**CMOS Inverter**:

| Input | Output | Current   |
| ----- | ------ | --------- |
| 0 → 0 | 1 → 1  | Low       |
| 0 → 1 | 1 → 0  | Discharge |
| 1 → 0 | 0 → 1  | Charge    |
| 1 → 1 | 0 → 0  | Low       |

![[Pasted image 20240916142555.png]]

#### Targets

Two common victims are:
- **Smart Cards**
	- Attacks on smart cards are applicable to nay general purpose processor with a fixed bus architecture
- **FPGAs**
	- Represent application specific devices with parallel computing opportunities

#### Smart Card Model

Smart cards have a small processor (8 bit in general) with ROM, EEPROM and a small RAM

**Eight Wires** connect the processor to the outside world

**Power Supply:** There is *NO* internal battery

**Clock**: There is *NO* internal clock

```ad-note
Typically equipped with a **shield** that destoys the chip if any tampering happens
```

#### FPGAs

- Allow Parallel computing
- Multiple programmable configuration bits

![[Pasted image 20240916143217.png]]

#### Attack Model/Assumptions

Consider a device capable of implementing the cryptographic function
- The key is usually stored in the device and protected
- Based on **Kerckhoff’s Assumption**

```ad-summary
**Kerckoffs' Assumption**: All of the data required ot operate a chip is entirely hidden in the key
```

```ad-warning
Attacker only needs to extract the key to win
```

#### Attack Phases

**Interaction Phase**: Interact with the hardware system under attack and obtain the physical characteristics of the device

**Analysis Phase:** Analyze the gathered information to recover the key

```ad-note
title: Remember
- **Key Space**: How many possible keys can there be for the amount of digits in the key
- **Key Sensitivity**
```

```ad-example
title: Key Sensitivity Example
![[Hardware Security - Week 4 Day 1 2024-09-16 14.43.08.excalidraw]]
The outputs are close, but the hacker would normally not know. However, with power, it can be used to determine how close or far the hacker got to the key.
```

#### Power Attack Overview

![[Pasted image 20240916144555.png]]



