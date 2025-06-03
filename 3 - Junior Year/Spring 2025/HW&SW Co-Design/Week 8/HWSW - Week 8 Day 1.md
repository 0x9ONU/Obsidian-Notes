Date: 17th March 2025
Date Modified: 17th March 2025
File Folder: Week 8
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Hardware as a Root of Trust

## Introductory Examples

**Xerox 914 copy machine**:
- World’s first designed hardware Trojan
- CIA implanted a tiny camera inside which was used by Soviet embassies all over the world

**Lebanon Attack**:
- Ghost vendor was created since the Lebanon rebels are banned from importing goods from real vendors
- This ghost vendor was malicious as they put harmful explosives in the devices that were set to go off at the same time

## Different Attack Types

**Physical Attacks on Chip IDs**: Extracting secret keys

**Side-Channel Attacks**: SPA/DPA, Timing Analysis, EM Analysis

**Tampering with Electronic Devices**: Capturing and re-releasing a device that makes it malicious

**Counterfeit Integrated Circuits**: Multi-billion dollar business

## Digital Microelectronics Design and Test Flow

![[Pasted image 20250317110942.png]]

As globalization has become the norm for manufacturing, most chip manufactures have moved to vertically integrated models vs. horizontal integrated models
- Can be outsourced as early as architectural design

## Hardware Vulnerabilities

- Physical Attacks
- Trojan Horses
- IP Piracy
- IC Piracy & Counterfeiting
- Backdoors
- Tampering
- Reverse Engineering

### Adversaries

![[Pasted image 20250317111440.png]]

### Different Threat Areas

![[Pasted image 20250317111848.png]]

## Vendors and Countermeasures

![[Pasted image 20250317112024.png]]

### Trojan Insertion

![[Pasted image 20250317112116.png]]

Ways to counter:
- Using microprobes to test every condition
- Hardware signatures
- Timing Analysis (there are small timing differences as the number of gates increase)
- Power Analysis (more gates use more power)
- Built-In Self-Testing (BIST)
	- Test a bunch of points and then hashing them to see if it matches the correct hash
- Built-In Self-Authentication (BISA)
- J-Tag
	- Turns the entire system into one large shift register
	- Allows to bypass combinational logic to test specific parts of the hardware

## IP Trust

With a lot of chips manufactured outside of the country, there are chances that IPs can be untrustworthy. The chips should be checked at as many stages as possible.

### Challenges of IP Trust in IoT

1. How do we securely authenticate devices?
2. How to securely protect ICs against Physical Attacks?
3. How to protect sensitive IP on devices?

## Physical Unclonable Functions (PUFs)

Delay-based circuits
- Given a PUF design, if a challenges $C_i$ as input, the PUF design produces a response $R_i$
- Two different challenges $C_1 \ne C_2$ produces two different responses $R_1 \ne R_2$

![[Pasted image 20250317114032.png]]

### Arbiter PUF (APUF)

![[Pasted image 20250317114059.png]]

```ad-important
The challenge and response should be as consistent as possible
```

```ad-warning
Aging could be an issue in the future
```
### Ring Oscillator PUF (ROPUF)

![[Pasted image 20250317114646.png]]



