Date: 28th August 2024
Date Modified: 28th August 2024
File Folder: Week 1
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Chapter 6: Architecture

```

# ISA: Instruction Set Architecture

Has a complier and an assembler

**Complier**: Goes from high level languages to assembly
**Assembler**: Goes from assembly to machine language

# Architecture

## Assembly Language

**Instructions**: Commands in a computer’s language
- *Assembly language:* human-readable format of instructions
- *Machine language:* computer-readable format

## RISC-V Architecture

**RISC-V Architecture:**
- **R**educed **I**nstruction **S**et **C**omputing
- Developed by Krste Asanovic, David Patterson and their colleagues at UC Berkeley in 2010.
- First widely accepted open-source computer architecture

```ad-note
Adopted by a lot of researchers, and has been started to be taken up by companies because it is cheaper. There is no need for licensing.
```

```ad-important
title: The Four Principle of Designing Architectures
1. Simplicity favors regularity
2. Make the common case fast
3. Smaller is faster
4. Good design demands good compromises
```

### Design Principle 1 - 

#comebacklater 

### Design Principle 2
- RISC-V includes only simple, commonly used instructions
- Hardware to decoe and execute instructions can be simple, small, and fast
- More complex instructions (that are less common) performed using multiple simple instructions
- RISC-V has a small number of simple instructions
- Other architectures, such as Intel’s x86, are complex instructions et computers (CISC)

### Design Principle 3

- RISC-V includes only a small number of registers

## Instructions

### Addition

*C Code*
```c
a = b + c;
```

*RISC-V Assembly Code*
```
add a, b, c
```

**add**: mnemonic indicates operation to perform 
**b, c**: source operands (on which the operation is performed)
**a**: destination operand (to which the result is written)

#### Shift Registers in Memory Needed to Perform Addition

![[Computer Architecture - Week 1 Day 2 2024-08-28 11.17.16.excalidraw]]

### Subtraction
*C Code*
```c
a = b -c
```

*RISC-V Assembly Code*
```
sub a, b, c
```

**Sub**: Mnemonic
**b, c**: Source operands
**a**: Destination operand

### Multiple Instructions

More complex code is handled by multiple RISC-V instructions

*C Code*

```c
a = b + c - d;
```
*RISC-V Assembly*
```
add t, b, c #t = b + c 
sub a, t, d #a = t - d
```
## Operands

**Operand Location**: Physical location in computer
- Registers
- Memory
- Constants (also called *immediates*)

### Registers

- RISC-V has 32 32-bit registers
- Faster than memory/cache
- RISC-V called “32-bit architecture” because it operates on 32-bit data

#### RISC-V register Set

| Name  | Register Number | Usage                            |
| ----- | --------------- | -------------------------------- |
| Zero  | x0              | Constant value 0                 |
| ra    | x1              | Return address                   |
| sp    | x2              | Stack pointer                    |
| gp    | x3              | Global pointer                   |
| tp    | x4              | Thread pointer                   |
| t0-2  | x5-7            | Temporaries                      |
| s0/fp | x8              | Saved register / Frame pointer   |
| s1    | x9              | Saved register                   |
| a0-1  | x10-11          | Function arguments/return values |
| a2-7  | x12-17          | Function arguments               |
| s2-11 | x18-27          | Saved registers                  |
| t3-6  | x28-31          | Temporaries                      |
#### How to Use Registers
**Registers**:
- Can use either names or `x0`, `x1`
- Names are better

Registers are used for *specific purposes*:
- `zero` always holds a **constant value zero**
- The *saved registers*, `s0-s11` are used to hold variables
- The *temporary registers*, `t0-t6`, used to hold intermediate values during a larger computation

#### Instruction with Registers

##### Addition

*C Code*
```
a = b + c
```

*Assembly*
```
# s0 = a, s1 = b, t0 = c
add s0, s1, t0
```

##### Addition with Constant

*C Code*
```c
a = b + 6
```
*Assembly*
```
# s0 = a, s1 = b
addi s0, s1, 6
```

