Date: 29th August 2024
Date Modified: 29th August 2024
File Folder: Week 1
#Electronics

# Section 1.0: Chapter Introduction

```ad-summary
title: Definition
**Hardware Secuirty**: The security of electronic hardware, encompassing its architecture, implementation, and validaiton.
```

This field focuses on:
- Attacks that are used to steal or compromise assets.
- Approaches designed to protect these assets.

```ad-example
It considers the following:
- ICs
- Passive components (resistors, capaictors, inductors)
- PCBs
- Cryptographic keys
- DRM keys
- Programmable fuses
- User data
- Firmware
- Configuration data.
```

![[Pasted image 20240829183845.png]]

```ad-note
Not to be confused with *software security* that focuses on:
- Exploitng different impolemantion bugs
- Techniques to ensure reliable software operation in presence of potential secuirty risks
```

This book will cover hardware and system security relating to:
- Embedded systems
- Cyber-physical systems (CPS)
- Internet of Thing (IoT)
- Biomedical systems

## 1.1 - Overview of a Computing System

Memory for information storage, processors for information processing, and I/O for interfacing with human users or other systems.
- They allow for the capturing and transformation of information, and communication with other systems.
- Typically, an analog device is also needed to store this information

```ad-summary
These systems have typically be broken up into two categories:
- General purpose systems
	- Includes desktops, laptops, servers
	- Complex architecture
	- Vesatile and easily programmable
	- Suitable for a large amount of scenarios
- Embedded systems
	- Includes digital cameras, home automation devices, wearable health monitors
	- Highly customized
	- Hardware-software integrated closely
	- Unique use-case constraints
	- Also part of the cyber-physical systems and IoT devices
```

```ad-note
Security implications of embedded systems
- Long and complex life, which may not follow newer security compliants
- Machine-to-machine communicaiton without any human in the loop
- Mass produciton of millions of machines with the same configuration, which could lead to one vulnerability affecting millions
```

![[Pasted image 20240830101401.png]]

Achieving security of an entire system of devices requires a significant rethinking on how to integrate specific security solutions for each component.

## 1.2 - Layers of a Computing System

![[Pasted image 20240830102611.png]]

### 1.2.1 - Electronic Hardware

The hardware in a computing system can consist of *three* layers:
- **System-level hardware**: The integration of all physical components that make a system
	- Includes peripheral devices and enclosures
- **Printed Circuit Board (PCBs)**: Provide mechanical support and electrical connection to electronic components.
	- Allow for power and signals to be connected via conductive traces often through multiple layers.
- **Active & Passive Components**: Includes ICs, transistors, and relays (active) as well as resistors, capacitors, and inductors (passive)

```ad-note
Each of these layers have their own complications and security issues that need to be considered
```

![[Pasted image 20240830102752.png]]

### 1.2.2 - Types of Electronic Hardware

ICs on PCBs do various tasks such as:
- Signal acquisition
- Transformation
- Processing
- Transfer

```ad-note
Some ICs are digital and work with only digital signals, where others focus on analog signals. AMS chips are mixed chips that work with both analog and digital signals.
```

**Application-Specific Integrated Circuits (ASIC)**: A class of ICs, which contain customized functionalities and meet specific performance targets that are not readily available in the market.

**Commercial Off-the-Shelf (COTS)**: Already available in the market and often provide flexibility and programmability to support a diverse system design needs.

## 1.3 - What is Hardware Security?

```ad-note
- The study of information and data security has been around for much longer than hardware security
- Hardware security is much newer since hardware was considered immune to attacks due to the "root-of-trust" anchor in systems
```

However, over the past three decades, many attacks have been reported to be caused by hardware vulnerabilities:
- Security concerns have been growing due to the trends in IP-based system on chip (SoC) designs being sent through a long and distributed supply chain.
- There is less control from a chip manufacture on both the design and fabrication steps.
  
```ad-example
- Hardware Trojan attacks
- Kill switch on device
- Side-channel attacks
``` 

**Side-Channel attacks**: Secret information about a chip can be extracted through measurement and analysis of side-channels
- Can include power, signal propagation delay, and electromagnetic emission.
- Can lead to IP piracy, counterfeiting, probe attacks on the ICs, physical tampering of traces, bus snooping, access to privileged resources.

**Software Stack**:
- Hardware must be designed, implemented, and validated properly to ensure that the software stack is secure and reliable
- Deals with Trusted execution environments (TEEs) that protect code and data of an application from other untrusted applications using confidentiality, integrity, and availability.
- Also deals with the protection of security-critical assets on an SoC through realization and security policies.

![[Pasted image 20240830140934.png]]

## 1.4 - Hardware Security vs. Hardware Trust

Unlike hardware security issues, *hardware trust* issues arise from untrusted entities in the life cycle of the hardware.
- Untrusted IP or CAD tool vendors
- Design
- Fabrication
- Test
- Distribution

They are able to violate the trustworthiness of a hardware component or system.

```ad-example
An untrusted IP vendor can include malicious implants into a design, which can lead to DoS, or information leakage attacks during operation.
```

### 1.4.1 - What Causes Hardware Trust Issues?

![[Pasted image 20240830141953.png]]

An IC will go through various steps in its life cycle:
- Design house (Specifications)
- Design and verification steps (HDL)
- Physical layout
- Fabrication
- Testing ICs
- 