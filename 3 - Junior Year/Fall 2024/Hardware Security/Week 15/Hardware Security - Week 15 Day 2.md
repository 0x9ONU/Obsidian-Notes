Date: 11th December 2024
Date Modified: 11th December 2024
File Folder: Week 15
#hardwareSecurity

```ad-abstract
title: Today's Topics
collapse: open

- Trusted Design in FPGAs

```

# Trusted Design in FPGAs

## Programming

![[Pasted image 20241211141647.png]]

## Attacks

1. Cloning, Overproducing, Mislabeling
2. Reverse Engineering the Bitstream
3. Readback
4. Side Channels
	- Power Analysis
	- EM Analysis
	- Timing Analysis
	- Ionizing Radiation
5. Invasive and Semi-Invasive
6. Brute Force, Crippling, Fault Injection
7. Relay and Replay

### Cloning, Overproducing, Mislabeling

FPGAs are generic
- A generated bitstream will work on any device within the respective device family and size
- Attackers can clone bitstreams

### Reverse Engineering the Bitsream

```ad-summary
title: Definition
Transformation of an encoded bitstream into functionally equivalent description of the original design
```

![[Pasted image 20241211142104.png]]
*Partial Reversal*: Extraction of data from bitstream without full functionality
- BRAM/LUT
- Memory cell states
- Keys could be compromised

### Readback

```ad-summary
title: Definition
Process of reading back data from the FPGA device to verify that the design was downloaded propelry.
```

Retrieves a snapshot of the FPGA’s current state while still in operation

Useful to verify correct operations; BUT an attacker can add missing header/footer info:
- Use in another device
- Reprogram FPGA with modified version. Create a Trojan
- Reverse engineering

### Ionizing Radiation

**Single Event Upsets** (SEU, Soft Errors):
- Radiation induced errors caused when charged particles lose energy by ionizing the medium through which they pass
- May cause transient pulse resulting in delay faults
- Cause memory bit to change state

*Exhaustively* irradiating device until desired results are obtained

Given the number of transistors, it may not be practical

##### Detection

Induce CRC or Hamming to increase reliability of the chip, even in highly irradiated environments
### Relay and Replay

![[Pasted image 20241211142927.png]]

**Relay Attacks** allow and adversary to impersonate a participant during an authentication protocol

![[Hardware Security - Week 15 Day 2 2024-12-11 14.34.20.excalidraw]]

![[Pasted image 20241211144412.png]]

## Defenses

**Bitstream Encryption**:
- Key Storage
- Key Management

**Theft Deterrents**:
- PUFs
- DRM

![[Pasted image 20241211144609.png]]

