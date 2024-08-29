Date: 28th August 2024
Date Modified: 28th August 2024
File Folder: Week 1
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Hardware Security Introduction

## What is Hardware?

Electronic System
System Hardware - acts as the *“root-of-trust”*: PCB $\rightarrow$ IC (SoC | $\micro$p)

![[Pasted image 20240828140823.png]]

## Example Attacks

### Pentagon’s ‘Kill Switch:’ Urban Myth?

The Pentagon is worried that “backdoors” in computer processors might leave the American military vulnerable to an instant electronic shut-down. Those fears only grew, after an Israeli strike on an alleged nuclear faciity in Syria. Many speculated that Syrian air defenses had been sabotaged by chips iwth a built-in ‘kill-switch’ - commercial off-the-shelf microprocessors in the Syrian radar may have had a backdoor in it.

### DHS: Imported Consumer Tech Contains Hidden Hacker Attack Tools

Top homeland securities have admitted instances where along with software, hardware components that are being imported from foreign parties and used in different US consumer electronics.

### Fake Cisco routers risk “IT subversion”

FBI presentation states that counterfeit Cisco routers imported from China may cause unexpected failures in American networks

$76 million dollars in fake Cisco routers.


### Medical Device Security

Incorporating security is sometimes considered expensive

Implantable devices: e.g., Heart rate monitor


### Piracy - Some Ture Stories

Chen Jin learned how to fabricate fake TI chips in China through reverse engineering

## Category of Attacks

**Physical Attacks on Chip IDs**
- Extracting secret keys

**Side-Channel Attacks**
- Power analysis, timing analysis, EM analysis

**Tampering with Electronic Devices**
- Captured Drone by Iran

**Counterfeit Integrated Circuits**
- Multi-billion dollar business

## Landscape of Security in Modern Computing

![[Pasted image 20240828141929.png]]

### Attack impact and difficulty at different layers of a computing system

![[Pasted image 20240828142256.png]]

### Shift in the Industry’s Business Model

![[Pasted image 20240828142617.png]]

Businesses have been shifting towards sending fabrication to a different company instead of doing it in-house. This started with fabrication being in the US. However, this has changed dramatically.

```ad-important
**GDSII**- Graphic Design Standard 2
- Used to show how processors are routed
```

![[Pasted image 20240828143056.png]]

![[Pasted image 20240828143123.png]]

```ad-note
Today, you needa round $3bn to build a full-scale 300mm wafer 65nm process
```

```ad-important
Long and globally distributed supply chain of hardware IPs makes SoC design increasingly vulnerable to diverse trust/integrity issues.
```
### Attack Vectors and Countermeasures

![[Pasted image 20240828143514.png]]

## IC Counterfeiting

- Most prevalent attack today
- Unauthorized production of wafers
- It is estimated that counterfeiting is costing semiconductor industry more than several billion dollars per year.

![[Pasted image 20240828144601.png]]

![[Pasted image 20240828144634.png]]

