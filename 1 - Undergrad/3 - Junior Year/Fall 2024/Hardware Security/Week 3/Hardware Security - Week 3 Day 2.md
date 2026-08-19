Date: 11th September 2024
Date Modified: 11th September 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Designing Hardware Security/Hardware Trust

```

# Designing Hardware Security

Detecting such a low-overhead and quiet Trojan is extremely challenging, so some design for hardware trust methods are proposed to change the design for facilitating Trojan detection and preventing Trojan insertion
- Hard-to-activate Trojans are not easy to be detected by using either full activation methods or side-channel signal methods.
- Some techniques can improve sensitive to power and delay or remove low controllability/observability nets in the design
- Other techniques can make adversary difficult to insert hardware Trojans

## Rare Event Removal

Intelligent attackers will choose low-frequency events to trigger the inserted Trojans.

Improving controllability to observability can make rare events scarce, thereby facilitating detecting Trojans inside the design.
- Design for Trojan test: inserting probing points
- Inserting dummy scan flip-flops

### Increasing Probability of Partial/Full Activation

- Inserting dummy FFs on path with very low activation probability
- To increase transition probability of nets whose transition probability is lower than a specific probability threshold, some efficient dummy flip-flops are inserted at these nets


![[Pasted image 20240911140954.png]]
<center> <b>Figure 1 </b>: Trojan Gate Probability is Low Because Transition probability on the two inputs </center>

As shown below in **Figure 2**, if the dummy flip-flop is inserted at the first input in figure B, the transition of the probability of the Trojan gate increases, so it can be activated easily.

![[Pasted image 20240911141224.png]]
<center> <b> Figure 2: </b> Hardware with a scan flip-flop </center>

```ad-example
title: Usage
- **Full Activation**: Increase controllability
- **Power-based**: Generate switching activities
- **Delay-based**: Activate more paths to improve coverage
```

## Trojan Prevention-Design Obfuscation

```ad-summary
title: Objective
The objective is deterring attacks from inserting Trojans inside the design.
```

The design will be transformed to another one which is functionally equivalent to the original, but in which it is much harder for attackers to obtain complete understanding of the internal logic, making reverse engineering much more difficult to perform
- It obfuscates the state transition function to add an obfuscation mode on top of the original functionality

```ad-example
You can add an obfuscated mode on top of the orginal funcitionality of a state transition function.
```

### Example

Specified pattern is able to guide the circuit into its normal mode.
- The transition arc K3 is the only way the design can enter normal operation mode from obfuscated mode
- Only the design knows this key
- If a trojan is obfuscated, it will not affect the original functionality.
- If a Trojan is inserted in the original circuits, it will threaten the original circuits.

![[Pasted image 20240911142648.png]]

## BISA: Built-In Self-Authentication

Filling all unused space with a circuit that an easily test itself

![[Pasted image 20240911142850.png]]

```ad-summary
title: Definition
Refers to a mechanism integrated into hardware systems, particularly chips and processors, to enable self-authenticaiton. Ensures that the hardware, especially in environments where ocmponetns may be vulnerable to attacks, counterfeiting, or unauthorized modifications
```

**Key Features of BISA**:
- Self-contained authentication: The system can verify its own integrity and authenticity, ensuring that only authorized components are in use.
- Security against tampering: BISA is designed to protect hardware from malicious attacks, counterfeiting components, or tampering in the supply chain.
- Low overhead: Since the authentication is built into the hardware itself, it minimizes the need for external security checks, making it efficient.

```ad-example
- **Hardware Security Modules**
- **IoT Devices**
- **Secure Boot Process**
- **Authenticaiton of Cryptographic Modules**
```

```ad-important
It will not affect the area, delay, cost, or power if designed properly
```




