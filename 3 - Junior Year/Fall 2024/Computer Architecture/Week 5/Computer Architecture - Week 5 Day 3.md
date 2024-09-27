Date: 27th September 2024
Date Modified: 27th September 2024
File Folder: Week 5
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Compressed Instructions
- Floating Point Instruction
- Exception

```

# Overview

**Compressed Instructions**: Smaller integer based instructions

**Floating Point Instructions**: 
- Single-point: 32-bit
- Double-point: 64-bit
- Quad-point: 128-bit

**Exceptions**:
- User


# Compressed Instructions

**16-bit** RISC-V instructions

```ad-summary
Replaces common integer and floating-point instructions with 16-bit versions.
```

Most RISC-V compliers/processor use a *mix* of 32-bit and 16-bit instructions (uses 16-bit *whenever possible*)

**Uses the prefix `c`**

```ad-example
- `add` -> `c.add`
- `lw` -> `c.lw`
- `addi` -> `c.addi`
```

## Example

```c
int i;
int socres[200];

for (i = 0; i < 200; i = i + 1) {
	scores[i] = socres[i] + 10;
}
```

```
	c.li   s1, 0
	addi   t2, zero, 200

for:
	bge    s1, t2, done
	c.lw   a3, 0(s0)
	c.addi a3, 10
	c.sw   a3, 0(s0)
	c.addi s0, 4
	c.addi s1, 1
	c.j    for
done:
```
```ad-warning
200 is *too big* to fit in a compressed immediate, so noncompressed `addi` is used instead.

`c.addi s0, 4`, is equivalent to `addi s0, s0, 4`
`c.bge` does not exist, so `bge` must be used
```

## Compressed Machine Formats

*Some* compressed instructions use **3-bit register codes** instead of five.

![[Pasted image 20240927111243.png]]

# Floating-Point INstructions

```ad-note
title: Remember
$$N = (-1)^{s}\times 1, F\times s^{E}$$
![[Computer Architecture - Week 5 Day 3 2024-09-27 11.15.19.excalidraw]]
```

## Extensions

RISC-V offers *three* floating-point extensions:
- **RVF**: Single-Precision (32-bit)
	- 8 exponent, 23 fraction
- **RVD**: Double-Precision (64-bit)
	- 11 exponents, 52 fraction
- **RVQ:** Quad-precision (128-bit)
	- 15 exponent, 112 fraction

## Floating-Point Registers

**32** Floating point register

**Width** is highest precision - for example, if RVQ is implemented, registers are 128 bits wide

When multiple floating point extensions are implemented, the lower-precision values occupy the lower bits of the register

![[Pasted image 20240927112138.png]]

Supports *very* cool instructions (don’t care)

![[Lecture 11.pdf]]

# Exceptions

Unscheduled function call to *exception handler*

Caused by:
- Hardware *interrupts*
- Software *traps* which are undefined instructions

When exception occurs, the processor:
- Records the cause of the exception
- Jumps to exception handler
- Returns to the program

![[Pasted image 20240927113703.png]]

## Privilege Levels

RISC-V exceptions occur at various *privilege levels*

```ad-summary
- **Machine** mode (bare metal)
- **System** mode (OS)
- **User** mode (user program)
- **Hypervisor** mode (to support virtual machines)
```

Goes from highest (machine) to lowest (hypervisor)

## Exception Registers

Each level has its own *control and status registers* (**CSRRs**)

In machine mode, we have:
- `mtvec, mcause, mepc, mscratch`

```ad-warning
NOT part of the register file
```

