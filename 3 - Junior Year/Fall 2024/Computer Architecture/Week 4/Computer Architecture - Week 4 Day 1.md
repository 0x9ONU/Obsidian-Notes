Date: 16th September 2024
Date Modified: 16th September 2024
File Folder: Week 4
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] test
```

# Homework #2 Hints

## 6.4 and 6.6

Focuses on ASCII Code

```ad-important
- Every word should end with 00.
- Strings must be saved in memory based on big endian/little endian principles
```

## 6.15 and 6.17

Write a function in C and then convert it to Assembly

## 6.18

Stack for non-leaf functions

## 6.20

Takes the N-factorial function in the class and optimize it

![[Computer Architecture - Week 4 Day 1 2024-09-16 11.03.50.excalidraw]]

```ad-warning
You will face problems if the gp passes the sp, if the tp goes past the gp, and if the sp passes the gp
```

This creates a dynamic range for the stack and the memory.

# Machine Language

## Introduction

**Machine Language** is the binary representation of instructions
- Computers can only understand 1’s and 0’s

32-bit instructions
- Simplicity favors regularity: 32-bit data & instructions

**4 Types of Instruction Formats:**
- R-Type
- I-Type
- S/B-Type
- U/J-Type

## Register Type (R-Type)

Three operands:
- `rs1, rs2`: Source Registers
- `rd`:             Destination Registers

Other fields
- `op`:                         *The operation code or opcode*
- `funct7, funct3`: *The function (7 bits and 3-bits respectively) with opcode, tells computer what operation to perform*

`funct3` tells exactly what operation is being performed.

`funct7` mostly wasted spaced, but typically one to two bits is used to learn more about the instruction.
- 

```ad-note
The OP code will be the same across EVERY register type instruction
```

![[Pasted image 20240916114034.png]]

```ad-important
Steps for how instrucitons are read on a processor:
- *Fetches* the instruction into the processor
- *Decodes* the instruction using the fields (starting with the opcode)
- *Executes* the instruction (Usually using arithmetic modules)
- *Memory Access* if necessary
- *Write-Back* to Register
```

### R-Type Examples

![[Pasted image 20240916114724.png]]

```ad-note
- `funct3` is zero for basic arithmetic (add/sub)
- `funct7` is 32 when it is subtraction (two's complement)
- The register's field value is based on the register's number
```






