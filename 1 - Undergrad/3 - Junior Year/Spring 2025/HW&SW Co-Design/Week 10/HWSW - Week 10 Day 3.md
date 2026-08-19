Date: 4th April 2025
Date Modified: 4th April 2025
File Folder: Week 10
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Gate Layout

Layout can be very time consuming
- Design gates to fit together nicely
- Build a library of standard cells

Standard cell design methodology
- $V_{DD}$ and $GND$ should be standard height
- Adjacent gates should satisfy design rules
- nMOS at bottom and pMOS at top
- All gates include well and substrate contacts

## Wiring Tracks

The space required for a wire
- $4 \lambda$ width, $4 \lambda$ spacing from neighbor = $8 \lambda$ pitch
- Transistors also consume one wiring track

![[Pasted image 20250404112121.png]]

## Well Spacing

Wells must surround transistors by $6 \lambda$
- Implies $12 \lambda$ between opposite transistor flavors
- Leaves room for one wire track

![[Pasted image 20250404112256.png]]

## Example: NAND3

- Horizontal N-diffusuion and p-diffusion stirps
- Vertical polysilicon gates
- Metal1 $V_{DD}$ rail at top
- Metal1 $GND$ rail at bottom
- $32 \lambda \times 40 \lambda$

![[Pasted image 20250404112408.png]]

## Stick Diagrams

Help to plan a layout quickly
- Does not need to be to scale
- Draw with color penicls or dry-erase markers

```ad-important
Count the # of lines and multiply by 8 to find number of $\lambda$
```

![[Pasted image 20250404113124.png]]

## Example: O3AI

![[Pasted image 20250404113816.png]]

$40 \lambda \times 40 \lambda$






