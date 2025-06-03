Date: 26th March 2025
Date Modified: 26th March 2025
File Folder: Week 9
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# CMOS DAY 2

## Signal Strength

*Strength* of signal: How close it approximates ideal voltage source

$V_{DD}$ and GND rails are strongest 1 and 0

nMOS pass strong 0, but weak 1

pMOS passes strong 1, but weak 0

nMOS best for pull-down network and pMOS for pull-up network


![[Pasted image 20250326111513.png]]

## Pass Transistors

Produce degraded output that pass both 0 *and* 1 well

![[Pasted image 20250326111600.png]]

## Tristate Register

Produces $Z$ when not enabled


| EN  | $A$ | $Y$ |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |


![[Pasted image 20250326111716.png | center]]

### Non-Restoring Tristate

Transmission gate acts as tristate buffer
- Only two transistors
- Nonrestoring and passes noise from $A$ onto $Y$

![[Pasted image 20250326111947.png |center]]

### Tristate Inverter

Tristate inverter produces restored output
- Violates conduction complement rule (De Morgan’s)
- Because we want a $Z$ output

![[Pasted image 20250326112059.png | center]]


| `EN` | $A$ | $T_1$ | $T_2  | $T_3$ | $T_4$ | $Y$ |
| ---- | --- | ----- | ----- | ----- | ----- | --- |
| 0    | 0   | Short | Open  | Open  | Open  | $Z$ |
| 0    | 1   | Open  | Open  | Open  | Short | $Z$ |
| 1    | 0   | Short | Short | Short | Open  | 1   |
| 1    | 1   | Open  | Short | Short | Short | 0   |

## Mux

### Gate-Level Mux Design

$$Y = SD_1+\bar S D_0$$
![[Pasted image 20250326113246.png]]

*VERYYY BAD*

### Six-Transistor 2-1 Mux

*Non restoring*, but does not need many transistors
- Four for the tristates
- Two for the Inverters

![[Pasted image 20250326113121.png]]

### Inverting Mux

- Ue compoud AOI22
- Or pair of tristate inverters
- Essentially the same thing

![[Pasted image 20250326114023.png]]

### 4-to-1 Mux

#### Two Levels of 2:1 Muxes

![[Pasted image 20250326114232.png]]

#### Four Tristates

![[Pasted image 20250326114242.png]]

## Three-Input NAND Gate

$Y$ pulls low ALL inputs are 1
$Y$ pulls high if ANY inputs is 0

![[Pasted image 20250326114512.png]]

## XOR Gates

![[Pasted image 20250326114530.png]]

![[Pasted image 20250326114535.png]]

![[Pasted image 20250326114538.png]]

![[Pasted image 20250326114542.png]]


