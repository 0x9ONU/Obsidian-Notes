Date: 13th December 2024
Date Modified: 13th December 2024
File Folder: Final
#hardwareSecurity 
# Paper Details

```ad-abstract
title: Summary
collapse: open

1. **Introduction**: Brief overview of the chapters and their relevance to hardware security.
2. **Chapter Summaries**
	- *Chapter 13*: Disucess the following topics:
	  - Pre-Silicon Security and Trust assessment for System on Chip (SoC)
	  - Post-Silicon Security and Trust Assessment for Integrated Circutis (ICs)
	  - Design for Security including practical examples from the book
	- *Chapter 16*: Summarize the following topics:
		- SoC Security Requirements
		- Secure SOC Design Process
		- Threat Modeling
3. **Lessons Learned from the Course**: Reflect on what you've learned thorugh the course. Highlight specific lectures, projects, or discussions that stood out.
4. **Conclusion**: Summarize the report and its main takeaways. Reflect on how this course and these chapters prepare you for future work in hardware security.

```

```ad-note
- Length: 3-4 Pages, Double-Sapced.
- Font: Times New Roman, 12 pt.
- Format: IEEE or standard academic format
```


| Section           | Points | Criteria                                                                             |
| ----------------- | ------ | ------------------------------------------------------------------------------------ |
| Introduction      | 5      | Clear and concise overview of the chapters and their importance                      |
| Chapter Summaries | 30     | Accurate, well-organized, and demonstrates understanding of key concepts             |
| Lessons Learned   | 10     | Insightful reflection with specific examples from the course                         |
| Conclusion        | 5      | Clear summary of report with reflections on course relevance and future applications |

# Chapter Summaries

## Chapter 13

### Introduction

As electronic systems have become more prevalent in many applications today, even including those that may endanger human life if failed.
- There have been many software solutions, but many of them fall short and lack the ability to keep systems more secure.

There have been many cases over the past decade that have shown that hardware attacks have proved to become more effective as cryptographic have been nearly impossible to break mathematically

Hardware vulnerability causes:
1. Security vulnerabilities on ICs can be created by making design mistakes or lack of understanding.
2. CAD tools accidentally adding security vulnerabilities
3. Malicious modifications can be used to introduce vulnerabilities on purpose by a bad third party

```ad-important
title: Importance for Identifying Security Vulnerabilites Early
1. There is little or no flexibility in changing or updating post-fabricated integrated circuits
2. The cost of fixing a vulnerability found at later stages during the design and fabrication processess is singificantly higher
```

```ad-note
**Rule-of-Ten**: The cost of detecting a faulty IC increases by an order of magnitude as one advances thorugh each stage of the design flow
```
### Pre-Silicon Security and Trust for SoCs

This section focuses on different security and trust assessment techniques at the design stage before the chip is fabricated.

#### **DSeRC**: Design Security Rule Check

```ad-summary
A framework that reads design files, constraints, and user input data to check for vulnerabilites at *all* levels of abstraction. Includes:
1. RTL
2. Gate-Level
3. Physical Layout Level
```

**RTL Level**:
- Accesses the security of IPs
- Provides feedback to design engineers so the issues can be addressed.

**Gate-Level** & **Physical Layout**:
- Design-for-Test (DFT) and Design-for-Debug (DFD) structures are inserted.
- Tests the gate-level netlist for any vulnerabilities 

*Pros*:
1. Allows designers to find security vulnerabilities at the earliest possible design steps
2. Improves Security of ICs
3. Reduces development time
4. Lowers cost by lowering the time-to-market constraint
5. Allows quantative comparisons with different implementations

*Cons*:
1. Requires defined inputs from designer
2. Not setting the right defined inputs can lead to missed vulnerabilities or errors

##### Vulnerabilities

The DSeRC framework needs to address each vulnerability at each level of *abstraction*. 

###### Register-Transfer Level (RTL):

Converted from HDL to an abstraction of the design

```ad-example
1. **Don't Care Assignment Attacks**: Don't Cares can be leveraged as a source of vulnerabilty to add hardware Trojans later on.
2. **Hardware Trojans**: Inserted into hard-to-control and hard-to-observe areas of the code
```

```ad-note
Typically easier to address than other levels. However, difficult to find out if it is susceptible to fault-injection or side-channel attacks
```

###### Gate-Level

Where RTL is synthesized into a gate-level netlist using commercial synthesis tools
- Leads to less abstraction
- Has more accurate information regarding the actual design

*Places for vulnerabilities*:
1. Hard-to-detect hardware Trojans on hard-to-control/observe nets
2. Vulnerabilities can be introduced by the CAD tools
3. Vulnerabilities introduced by DFT and DFD

###### Layout Level

Last stage before sending the GDSII to fabrication.

Gives info about:
1. Special arrangements of cells and connections
2. Power consumption, emag emissions, and execution time

*Places for vulnerabilities*:
1. Side-channel
2. Fault-injection
3. Probing Attacks

```ad-warning
VERY time consuming compared to RTL and gate-level analysis
```

##### Metrics and Rules

**DRC** vs **DSeRC**:
- **DRC** convert manufacturing specifications into a series of metrics that measure a mask’s manufacturability for PCBs
- **DSeRC** mathematically models vulnerabilities and develops metrics and rules to quantitatively evaluate the design.

*Two Types of Rules*:
1. Quantative
2. Binary Classification

```ad-example
title: Types of Metrics/Rules
1. **Asset Leakage**: DFT, DFD, CAD, or human error that cause a violation of security policies. "An asset signal should *never* propogate to an observe point or be influenced by a control point that is accessible by an attacker"
2. **Vulnerable FSM**: Don't care states and transisiton states can add security risks for fault-injection/Trojans. "For an FSM design to be secured against insertion attacks, the vlaues of $VF_{F1}$ and $VF_{Tro}$ should be zero"
3. **Microproibng Attack**: Extract sensitive information by probing signal wires. "The exposed area to microprobing should be lower than a threshold value"
4. **Susceptibility to Trojan Insertion**: Areas in HDL code with larger values of *Statement Hardness* are more vulnerable to Trojans. "For a desing to be secured against Trojan-insertion attack, statement hardness for each statement in the design should be lower than $SH_{thr}$, which is determined from the area and performance budget"
5. **Fault-Injections and Side-Channel Attacks**: the timing violation vulnerability factor (TVVF) metric evaluatios the vulnerability of a hardware strucutre to setup-time violation at tasks. 
```

##### CAD Tools for Security Validation

```ad-important
DSeRC framework requires that CAD tools must *also* be designed to use DSeRC rules.
```

###### CAD tool for analyzing vulnerabilities in FSM

**AVFSM**: automatically analyze the vulnerabilities of the FSMs against fault-injection and Trojan attacks at the CAD level. It uses:
1. Gate-level netlist
2. FSM synthesis report
3. User given inputs

*Four Modules of AVFSM*:
1. FSM Extraction (FE)
2. Don’t-care states and transition identification (DCSTI)
3. Fault Injection Analysis (FIA)
4. Trojan-Insertion Analysis (TIA)

###### Information Flow Tracking

```ad-summary
title: Definition
A framework that detects the violation of confidentiality and integrity policies.
```

It is based on setting stuck-at-0 and stuck-at-1 faults and uses automatic test pattern generation (ATPG) algorithm to find these faults.
- *Important*: On success, it shows that net can be observed or controlled

**Main Steps**:
1. *Initialize*: Adds scan capabilities to the necessary registers/flip-flops to control and observe the changes
2. *Analysis*: Utilizes fanout analysis to identify which FFs are located in fanout of a particular asset bit.
3. *Propagation*: Propagates each asset bit $a$ to each individual FF using the ATPG algorithm.
4. *Recursive*: Leverages the partial-scan technique along with sequential ATPG to find propagation paths through all sequential levels until the output, or the last-level FFs, are reached.

#### Workflow of DSeRC Framework

```ad-warning
- DSeRC cannot elminate the need for secuirty subject matter experts.
- It may not take the applicaiton of the IC into consideration
```

### Post-Silicon Security and Trust on ICs

Presents three post-silicon validation techniques: *Fuzzing, Negative Testing, White-Box hacking*
- Uses human creativity to fill the gaps in human reasoning

#### Fuzzing

```ad-summary
title: Definiton
A testing technique that involves providing invalid, unexpected, or random inputs for hardware or software and monitoring the result for exceptions such as:
- Crashes
- Failing built-in code assertions
- Memory leaks
```

- It is often used to expose attacker entry points
- May miss security violations if it is done randomly; however.
- Smart input generation may be used to cover unique corner-case scenarios.

#### Negative Testing

```ad-summary
title: Definiton
Looks beyond the funcitonal specificaiton to identify if securiyt objectives are underspecified, or can be subverted.
```

**DMA Example**: Negative testing can be used to identify if there are any other paths to the protected memory in addition to the address translation activated by a DMA access request.

#### Hackathons (White-Box Hacking)

Expert hackers perform goal-oriented attempts at breaking security objectives. 
- Depends on human creativity
- Performed on complex security objectives

#### Penetration Testing

```ad-summary
title: Definition
An attack on a system with the intention to find security weaknesses.
```

**Attack Surface Enumeration**: Identifies the features or aspects of the system that are vulnerable to attacks.

**Vulnerability Exploitation**: Based on the entry points found, an applicable attack(s) is chosen on the target area.

**Result Analysis**: The resulting state of the target after a successful attack is compared against security objectives and policy definitions to determine whether the system is compromised.

*Differences between Penetration Testing and Functional Validation*:
- Functional testing simulates the benign user behavior and accidental failures in a normal operating environment.
- Penetration testing goes outside of the specification or the limits set by the security objective, and simulates **deliberate attacker behavior**

#### Functional Validation of Security-Sensitive Design Features

```ad-note
An extension to funcitonal validaiton, but it pertains to designe lements involved in critical security feature implementations.
```

#### Validation of Deterministic Security Requirements

```ad-summary
Validation objectives that can be directly derived from security policies.
```

Include *access control restrictions* and *address translations*

### Design for Security

```ad-important
Make sure to include samples from the books
```

Presents design strategies that make the hardware design inherently resilient to different security issues discussed earlier.

#### Security Architecture

Typical approach:
1. Use threat modeling to identify potential threats to the current architecture definition.
2. Refine the architecture with mitigation strategies covering the threats identified.

**Baseline Architecture**: Based on legacy architecture and needs to identify:
1. Who can access th3e asset
2. What kind of access is permitted by the policies
3. At what points in the system execution or product development lifecycle such access requests can be granted or denied.
4. Must account for any potential access to these assets at any point of execution

**Standardizing Architecture**:
1. *Trusted Execution Environment (TEE)*: A mechanism for guaranteeing isolation between code and sensitive data at different points of system execution
2. *Trusted Platform Module (TPM)*: Based off of TEE and uses a secure cryptoprocessor and RNGs to secure hardware.

The *three* main TEE frameworks for SoCs are:
1. Samsung KNOX
2. Intel Software Guard Extension (SGX)
3. ARM TrustZone

##### Samsung KNOX

Provides secure separation features to enable information partition between business and personal content to coexist on the same system:
- Targets smartphones
- Permits hot swap between business and personal content

Allows the following:
1. *Trusted Boot*: Prevent unauthorized OS and software from being loaded onto the device at startup
2. *Trust-zone-based Integrity Measurement Architecture (TIMA)*: Continually monitors kernel integrity.
3. *Security Enhancement for Android*: Enforcement mechanism providing protection of system/user data
4. *KNOX Container*: Secure environment that allows business applications that can run with guaranteed information separate.

##### ARM TrustZone

```ad-summary
A system-wide approach to provide security on high-performancd computing platforms.
```

- Utilizes partitioning of the SoC’s hardware and software resources into *secure* and *nonsecure* areas.
- Supports access control and permissions
- Supports secure system calls and interrupts
- Protections extend to I/O and  the bus.

##### Intel SGX

```ad-summary
AN architecture for providing a trusted execution environment provided by the underlying hardware to protect sensitive application and user programs or data against potentially malicious, or tampered operating systems
```

- Creates *Islands of Trust*" that only permit 
- Implemented on CPU instructions

This allows:
1. Applications to preserve the confidentiality and integrity of sensitive data without disrupting the ability of legitimate system software to manage the platform resources
2. End users to retain control of their platforms, applications, and services even in the presence of malicious system software.

#### Side-Channel Resistant Design

Based around either *Hiding Mechanisms* or *Masking Mechanisms*

##### Hiding Mechanism

```ad-summary
Attempts to eliminate the relationshiop between the leaked informaiton and the secret data, that is, make the leaked information uncorrelated to the secret data.
```

Since side-channel attacks rely on the SNR, so hiding mechanisms rely on either *increasing the noise* or *decreasing the signal* to counter the side-channel attack.

**Randomization**: Attempts to increase the noise of the circuit to reduce SNR by changing the *execution order* or *generating noise* directly.
- Inject white noise on the channel

**Equalization**: Attempts to decrease the leaked power signal
- Make equal power consumption for all operations related to processing secret data
- Uses  *dual rail* and/or *definitely logic*

#### Masking Mechanism

```ad-summary
Attempt to randomize the intermediate values (funciton of the senstive information) of a cryptographic operation to break the dependacies between these values and the power consumption.
```

- Conceal each intermediate value by a random mask that is different for every execution
- Uses Boolean secret sharing technique

## Chapter 16

### Introduction

Modern computers require both the hardware and software stack to coordinate, which needs to be considered when implementing hardware security measures on a chip or a PCB.

**Software Stack**:
- Runs on CPU, which is usually an SoC
- Integrated with CPU, FPGAs and GPUs today
- Increasingly complex

How do we secure systems with this many different hardware-software interactions?

### SoC Security Requirements

Covers the security requirements for SoC designers and the potential adversaries and attack vectors during an SOC’s life cycle

#### Assets in SOC

Assets on an SoC are:
1. System-critical
2. Security-sensitive

Contains:
- Personalized information
- DRM keys
- Programmable fuses
- On-chip debug instruments
- Defeature bits

```ad-important
Security architecture, that is, mechanism to ensure protection of sensitive assets from malicious, unauthorized access, constitutes a crucial component of modern SoC designs
```

#### Adversarial Model

The designer needs comprehension of the *power of the adversary*. 
- All security mechanisms is critically dependent on how realistic the model of the adversary is.
- Security attacks also rely on breaking some of the assumptions made regarding constraints on the adversary.

Defining an adversary requires considerations such as:
1. Physical access
2. Which components they can
	- Observe
	- Control
	- Modify
	- Reverse engineer

#### Design-for-Debug in SoC

```ad-note
title: Remember
There is a design conflict between SoC security and DFT and DfD infrastructure.
```

These pathways should be protected using *standard cryptography privatives*.
- Off-key chip generation
- **Security-aware test and debug infrastructure**: provides modification to local test/debug cells of an IP that effectively blocks other IPs from observing key bits.

#### Introduction to SoC Security Policies

```ad-important
title: Goal of Security Policy
Map the requirements to "actionable" design constraints that can be used by IP implementers, or SoC integrators, to devleop protection mechanisms
```

Two Examples of **SoC Security Policies**:
1. *Confidentiality Requirement*: During boot time, data transmitted by the cryptoengine *cannot be observed* by any IP in the SoC other than its intended target.
2. *Integrity Constraint*: A programmable fuse containing a secure key can be updated during manufacturing, but not after production.

##### Representative Policy Classes

**Access Control**: Specifies how different agents in an SoC can access an asset at different points of the execution.
- Most *common* class of policies

**Information Flow**: Restrict the indirect observation of secure assets
- Difficult to analyze
- Difficult to implement
- Only employed on critical assets

```ad-example
**Key Obliviousness**: A low-security IP cannot infer the cryptographic keys by snooping only the data from crypto engine on a on a low-security communication fabric.
```

**Liveness**: Ensure that the system performs its functionality without “stagnation” through its execution

**Time-of-check vs. time-of-use (TOCTOU)**: The requirement that any agent accessing a resource requiring authorization is indeed the agent that has been authorized

**Secure-Boot**: Impose stringent security requirement on IPs and communications on boot

**Message Immutability**: If IP $A$ sends a message to IP $\beta$, then the message received by $\beta$ must exactly message $m$

**Redirection and Masquerade Prevention**: If $A$ sends a message $m$ to $\beta$, then the message delivered to $\beta$. In particular, it should be impossible for a (potentially rouge) IP $C$ to masquerade as $\beta$, or for the message to be redirected to a different IP $D$ in addition to, or instead of $\beta$

**Non-observability**: A private message from $A$ to $\beta$ must not be accessible to another IP during transit.
### Secure SoC Design Process

Since many SoCs today have a ton of different functionalities in one single chip among internal and external IPs, it is clear that SoCs have to be validated at various points throughout the design process

#### Early Security Validation

Adds additional steps to the architecture and design stages of a chip
- Reviews specifications
- Conduct security analysis
	- Identify security assets
	- Ownership
	- Protection requirements

**Product Security Specification (PSS)**: Provides the requirements for downstream architecture, design, and validation activities.
- Adds architectural changes for DFS and validation.
- Helps with threat modeling and risk mitigations.
- Reviews the high level design

#### Pre-Silicon Security Validation

**Static Analysis**: Manually reviewing the RTL code.
- Needs to be done multiple times as code will change over the design cycle
- Automated tools can also help

**Test Bench**:
- Very common to make targeted test cases and run simulation to determine output
- *However* they have only a limited scope, which makes it difficult to scale beyond individual IPs.

```ad-note
Formal validation tools are also often used, but tend to fail to the scale and complexity of modern SoCs.
```

#### Post-Silicon Security Validation

```ad-important
It is crucial to test and validate interactions among  different plaform components:
- Ensures that IPs are not illegally accessed
- Prevents security breaches
```

- Debug and validation tools
- Check and analyze system-level flows.
- All the techniques learned previously (fuzzing, software testing, etc.)

### Threat Modeling

```ad-summary
title: Defintion
The activity for optimizing SoC security by identifying objectives and vulnerabilities, and defining countermeasures to prevent, or mitigate the effects of, threats to the system.
```

**Five Steps**:
1. *Asset Definition*: Identify the system assets governing protection. 
2. *Policy Specification*: For each asset, identify the policies that involve it.
3. *Attack Surface Identification*: For each asset, identify potential adversarial actions that can subvert policies governing the asset.
4. *Risk Assessment*: Checks damage potential, reproducibility, exploitability, the affected systems, and discoverability on each attack to determine how dangerous they are.
5. *Threat Mitigation*: Once the risk is considered substantial, given the likelihood of the attack, protection mechanisms are defined, and the analysis must be performed again on the modified system.

# Class Summary

What major things did we learn?:
1. PUFs
2. True Random Noise Generators → True Random Number Generators with PUFs
3. Locking a Chip with Hardware Metering
	1. XOR gates
	2. Have redundant states in a controller  where the activation code points to the right state to begin
	3. Linked State Machine: Two state machines, one used for authentication and the other with the proper control path
	4. Reconfigurable Logic Barrier
	5. Split-Secure Testing
	6. Double-Public Key Encryption
4. Watermarking
	1. Via the .xdc  constraint file 
	2. Specific timing on a specific area of a VHDL file
	3. Add additional states to a k-map that were originally don’t cares
5. J-Tag
	1. Allows for easy testing 
	2. Can be very dangerous normally
	3. Used AES and RSA to secure it
6. Hardware Trojans
	1. Where to insert them?
7. Side-Channel Attacks
	1. Visitor using AI and side-channel attacks to find AES key
8. Physical Attacks
9. Vulnerabilities of Supply Chain
10. Defense Mechanisms