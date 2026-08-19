Date: 24th March 2025
Date Modified: 24th March 2025
File Folder: Week 9
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- CMOS Introduction

```

# CMOS

## Introduction

Integrated circuits have many transistors on one chip (*Very Large Scale Integration (VLSI)*)

**Complementary Metal Oxide Semi-Conductors (CMOS)**:
- Fast, cheap, low power transistors
- Fabrication process
	- CMOS ransistors
	- Building logic gates from transistors
	- Transistor layout and fabrication

## Silicon Lattice

Transistors are built on a silicon substrate
- Silicon is a group IV material
- Forms crystal lattice with bonds to four neighbors

### Dopants

Pure silicon has no free carriers and conducts poorly
- Adding *dopants* increases he conductivity

**Group V**: Extra electron (n-type)

**Group III**: Missing electron, called hole (p-type)

### p-n Junctions

A junction between p-type and n-type semiconductor forms a *diode*.
- Current will flow in only one direction

![[Diodes-1.png]]

## NMOS Transistor

Four Terminals: Gate, Source, Drain, Body

**Gate**: Oxide-body stack that looks like a capacitor
- Gate and body are conductors
- SiO2 (oxide) is very good insulator
- Called metal-oxide-semiconductor (MOS) capacitor
- Even though gate is no longer made of metal

![[NMOS-Structure-Diagram.webp]]

## Power Supply Volage

Ground is always $0V$, but $V_{DD}$ can be different depending on the implementation:
- In the 1980s, $V_{DD} = 5V$
- $V_{DD}$ has decreased in modern processes because it would damage the smaller transistors and save power.

$V_{DD}=3.3,2.5,1.8,1.5,1.2,0.9$

## Transistors as Switches

We can view MOS transistors as electrically controlled switches
- Voltage at gate controls path form S to D

## Types of Gates Made with CMOS

### Inverter

![[4.48.png]]

### NAND Gate

![[Screenshot-2023-04-14-at-4.02.16-PM-1024x628.png]]

### NOR Gate

![[Screenshot-2023-04-14-at-4.25.13-PM-768x494.png]]

## Complementary CMOS

When building a system, we try to keep both pMOS and nMOS to keep them as equal as possible across the implementation
- *nMOS pull-down network*
- *pMOS pull-up network*
- Pass to ground OR pass to $V_{DD}$

By crossing over each gate, there is a chance that power loss can happen
- Happens when the pMOS and nMOS networks open up at the same time, causing a short
- A lot of power is drained due to a high current caused by a short circuit

```ad-important
We are trying to reduce this power loss
```


|               | Pull-Up OFF | Pull-up ON    |
| ------------- | ----------- | ------------- |
| Pull-down OFF | $Z$ (float) | 1             |
| Pull-down ON  | 0           | $X$ (crowbar) |

**Float**: No control of what the output is

**Crowbar**: The short-circuit condition

## Compound Gates

Are used to do any inverting function

```ad-example
$Y = \bar{A*B+C*D} = (\bar A + \bar B ) (\bar C + \bar D ) =$ 14 transistors in traditional digital logic

However, in compound gates, you only need to use eight transistors
```

![[compound-gates-l.jpg]]





