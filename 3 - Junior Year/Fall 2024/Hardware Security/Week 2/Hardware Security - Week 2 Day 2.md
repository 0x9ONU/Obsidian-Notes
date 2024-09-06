Date: 6th September 2024
Date Modified: 6th September 2024
File Folder: Week 2
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Hardware Trojans: Why are they hard to detect?

```

# Difficulty of Detecting Hardware Trojans

## Bugs vs. Malicious Change

![[Pasted image 20240906140254.png]]

```ad-important
Trojans Attacks create a **LARGER** verification problem
```

## Examples
### Silicon Backdoor

![[Pasted image 20240906140514.png]]

An attacker can place an antenna on the fabricated chip

```ad-warning
Very difficult to detect since it does not change the funcitonality of the circuit.
```

Adversaries can do the following with this type of Trojan:
- Send and receive secret information
- Disable the chip
- Destroy the chip
- Send wrong processing data
- Impact circuit information

### Silicon Time Bomb

These Trojans cannot be detected as well.

Adversary often has limited to no control when it goes off
- Can cause reliability issues

Can be implemented using:
- Counters
- Finite State Machines (FSM)
- Comparator to monitor key data
- Wires/transistors that violate design rules

![[Pasted image 20240906140820.png]]

## Comprehensive Attack Model

![[Pasted image 20240906140956.png]]

# Levels of Hardware Trojans

## Trojan Taxonomy

A Hardware Trojan will have one of each:
- Insertion Method
- Abstraction Level
- Activation Mechanism
- Effect
- Location
- Physical Characteristic(s)

![[Pasted image 20240906141140.png]]

OR, more simply, it can have three main characteristics:
- Physical
- Activation
- Action

```ad-note
Physical can be further broken down into the four other parts as seen below
```

![[Pasted image 20240906141200.png]]

## Physical Characteristics

### Type

**Functional**: Addition or deletion of components
- Sequential circuits
- Combinational circuits
- Modification to function or no change

![[Pasted image 20240906141723.png]]

**Parametric**: MOdifications of existing components
- Sabotage reliability or increase the likelihood of a functional or performance failure

```ad-example
- Wire: e.g. thinning of wires
- Logic: Weakening of a transisotr, modififcaiton to phsycial geometry for a gate
- Modification of the power distribution network
```

![[Pasted image 20240906141734.png]]

### Size

The number of components added to the circuit:
- Small transistors
- Small gates
- Large gates

In the cases of layout, depends on the availability of:
- Dead spaces
- Filler cells 
	- (fills the dead spaces with components but do not do anything)
- Decap cells
	- Has capacitors and other forms of power delivery
- Change in the structure

![[Pasted image 20240906141855.png]]

![[Pasted image 20240906141901.png]]

### Distribution

**Tight Distribution**: Trojan components are topologically close in the layout

![[Pasted image 20240906142200.png]]

**Loose Distribution:** Trojan components are dispersed across the space of the chips

![[Pasted image 20240906142212.png]]

```ad-important
Distribution of Trojans depends on the availability of dead spaces on the layout 
```

### Structure

The adversary may be forced to regenerate the layout to be able to insert the Trojan, then the chip dimensions change.
- May have different placement results on the final chip layout

```ad-warning
This is the easiest characteristic to detect as it can change the delay and power characteritics of the chip 
```

![[Pasted image 20240906142348.png]]

![[Pasted image 20240906142400.png]]

## Activation Characteristics

![[Pasted image 20240906142444.png]]

### Internal Examples

**Condition Based**

*Counter*
![[Pasted image 20240906142538.png]]

*Combination*
![[Pasted image 20240906142551.png]]

## Action Characteristics

![[Pasted image 20240906142617.png]]

### Examples

**Modify Function**

![[Pasted image 20240906142640.png]]

**Modify Specification**: Changes other things such as noise, delay, and temperature

![[Pasted image 20240906142706.png]]

# IP Trust & IP Security

**IP Trust**: Detect ***malicious*** circuits inserted by IP designers
- The **GOAL** is to *Verify Trust*: Protect IP buyers, e.g., SoC Integrators

**IP Security**: Information leakage, side-channel leakage, backdoors, functional bugs, etc.


## IP Trust Overview
\
IPs form untrusted vendors need to be verified for trust before use in a system design

```ad-summary
title: Problem Statement
How can one establish that the IP does exactly as the specification, nothing less, nothing more?
```

IPs can be broken down into:
- Soft
- Firm
- Hard

**Challenges**:
- No known golden model for the IP
- Soft IP is just the core so we cannot read its implementation

## Approaches

**Formal Verification**
- Property checking
- Model checking
- Equivalence checking

**Coverage analysis**
- Code coverage
- Functional coverage

### Formal Verification

Ensuring IP core is exactly the same as its specification

Three types of verification methods:
- **Property**: Every *requirement* is defined as assertion in testbench and is checked

```ad-note
Often looks at common structures and see if there is any variation between what is expected and what was designed.
```

- **Equivalence**: Check the equivalence of RTL code, gate-level netlist and GDSII file
- **Model**
	- System is described in a formal model (C, HDL)
	- The desired behavior is expressed as a set of properties
	- The specification is checked against the model

### Coverage Analysis

- **Line Coverage**: Show which lines of the RTL have been executed
- **Statement Coverage**: Spans multiple lines, more precise
- **FSM Coverage**: Show which state can be reached
- **Toggle**: Each signal in gate-level netlist

### Suspicious Parts

If one or more of the assertions fails, the IP is *untrusted*
- If coverage is not 100%, uncovered parts of the code (RTL, netlist) are assumed suspicious.

