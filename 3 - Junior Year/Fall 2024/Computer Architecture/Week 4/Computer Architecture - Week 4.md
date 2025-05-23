Date: 16th September 2024
Date Modified: 16th September 2024
File Folder: Week 4
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Machine Language
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

## Key Things

### Register Names to Register Addresses

![[Pasted image 20240918111301.png]]

### Opcode Importance

```ad-important
title: IMPORTANT!!!

Make sure you always check the last 7 significant bits to know the opcode. It determines the type of instruction and its inputs.
```

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
- `funct7, funct3`:  *The function (7 bits and 3-bits respectively) with opcode, tells computer what operation to perform*

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

## Immediate Type (I-Type)

**Three Operands:**
- `rs1`: Register Source operand
- `rd`: Register Destination operand
- `imm`: *12-bit* two’s complement immediate

**Other Fields**:
- `op`: The opcode
- `funct3:` The function (3-bit function code)
	- With opcode, tells computer waht operation to perform

```ad-important
There is no `subi` because instead you would use `addi` with a sign-extended two's complement immediate to add a negative number instead.
```

![[Pasted image 20240918110429.png]]

```ad-note
Opcode `3` represents all the load operations:
- `lw`  $\space$ 2
- `lh` $\space$  1
- `lb` $\space$  0
- `lhu` 5
- `lbu` 4
```

### I-Type Examples

![[Pasted image 20240918110606.png]]

#### `xori` Example

`xori t2, t1, -1`
`xori x7, x6, 0xFFF`

**Field Values**

| imm (12-bits) | rs1 (5-bits) | funct3 (3-bits) | rd (5-bits) | op (7-bits) |
| ------------- | ------------ | --------------- | ----------- | ----------- |
| -1            | 6            | 4               | 7           | 19          |

**Machine Code**

| imm (12-bits) | rs1 (5-bits) | funct3 (3-bits) | rd (5-bits) | op (7-bits) |
| ------------- | ------------ | --------------- | ----------- | ----------- |
| 1111111       | 00110        | 100             | 00111       | 0010011     |

**Hex**

`0xFFF34393`

#### `lw` Reverse Example

**Hex**

`0x1FA0A03`

*Seven Least Significant Bits*:

`0000011` $\rightarrow$ This is a load instruction! Use the I-Type

**Machine Code**

| imm (12-bits) | rs1 (5-bits) | funct3 (3-bits) | rd (5-bits) | op (7-bits) |
| ------------- | ------------ | --------------- | ----------- | ----------- |
| 000000011111  | 10100        | 000             | 10100       | 0000011     |

`lb x20, 0x1F(x20)`
`lb s4, s4`

## Store/Branch Type (S/B-Type)

```ad-note
Only differs in immediate encoding
```

![[Pasted image 20240918110127.png]]

### Store Type (S-Type)

**Three Operands**:
- `rs1`: Base Register
- `rs2`: Value to be stored to memory
- `imm` 12-bit two’s complement immediate

**Other Fields**:
- `op`: The Opcode
- `funct3`: The function (3-bit function code)

![[Pasted image 20240918111921.png]]

#### S-Type Examples

![[Pasted image 20240918112003.png]]

#### S-Type Reverse Example

**Hex**

`0xFE79AD23`

**Machine Code**

| imm 11:5 (7-bits) | rs2 (5-bits) | rs1 (5-bits) | funct3 (3-bits) | imm 4:0 (5-bits) | op (7-bits) |
| ----------------- | ------------ | ------------ | --------------- | ---------------- | ----------- |
| 1111111           | 00111        | 10010        | 101             | 11010            | 0100011     |
**Field Values**

| imm 11:5 (7-bits) | rs2 (5-bits) | rs1 (5-bits) | funct3 (3-bits) | imm 4:0 (5-bits) | op (7-bits) |
| ----------------- | ------------ | ------------ | --------------- | ---------------- | ----------- |
| 11111111          | x7           | x19          | 2 (sw)          | 11010            | 35 (store)  |
**Immediate**

`111111111010` $\rightarrow$ `-6`

**Instruction**

`sw x7, -6(x19)`
`sw t2, -6(s3)`

**Assuming `s3 = SOME ADDRESS` and `t2 = 100`**

`destination = SOME ADDRESS - 6`

`value = 100`

### Branch Type (B-Type)

**Three Operands**:
- `rs1`: Register Source 1
- `rs2`: Register Source 2

![[Pasted image 20240918113317.png]]

The 13-bit immediate encodes where to branch (*relative to the branch instruction*)

#### B-Type Example

**RISC-V Assembly**
```
0x70     beq  s0, t5, L1
0x74     add  s1, s2, s3
0x78     sub  s5, s6, s7
0x7C     lw   t0, 0(s1)
0x80 L1: addi s1, s1, -15
```

```ad-important
L1 is 4 instructions (i.e. *16 bytes*) **past** `beq`
```

```ad-note
We do not care about the LSB. (32 or 16 bit instructions)
```

$$\mbox{imm}_{12:0} = 000000001000\cancel0$$

![[Pasted image 20240920110806.png]]

```ad-warning
Even though everything in the memory is accessed in bytes for the 32-bit systems, we cannot assume the first two hexes are going to be zero BECAUSE 16-bit instructions may be used for embedded systems.
```

#### Backwards Example

**Hex**

`01E40863`

**Machine Code**

| imm 12, 10:5 (7-bits) | rs2 (5-bits) | rs1(5 bits) | funct3 (3-bits) | imm 4:1, 11 (5 bits) | op      |
| --------------------- | ------------ | ----------- | --------------- | -------------------- | ------- |
| 0000000               | 11110        | 01000       | 000             | 10000                | 1100011 |

**Immediate**

![[PXL_20240920_152047350.jpg]]

**Instruction

`beq x8, x30, 16`

## U/J - Type

**Upper-Immediate-Type** AND **Jump-Type**

Differs only in *immediate* encoding

![[Pasted image 20240920112229.png]]

### Upper-Immediate-Type (U-Type)

```ad-summary
Used to load upper immediate (`lui`)
```

**Two operands**:
- `rd`: Destination Register
- `imm`$_{31:12}$ Upper 20 bits of 32-bit immediate

OP code: 
- `lui` $\Rightarrow$ `55`
- `auipc` $\Rightarrow$ `23`

![[Pasted image 20240920112428.png]]

#### Forward Example (U-Type)

![[Pasted image 20240920112454.png]]

#### Backward Example (U-Type)



### Jump-Type (J-Type)

```ad-summary
Used for jump-and-link instruction (`jal`)
```

**Two Operands**:
- `rd`: Destination Register (TYPICALLY `ra`)
- `imm`$_{20, 10:1, 11, 19:12}$. 20 bits(20:1) of a 21-bit immediate

**Op Code**: `111`

![[Pasted image 20240920112743.png]]

```ad-warning
`jalr` is **I-TYPE**, not *j-type*, to specify `rs1`
```

#### Forward Example (J-Type)

```
# Address          RISC-V Assembly
0x0000540C         jal ra, func1
0x00005410         add s1, s2, s3
...
0x000ABC04 func1:  add, s4, s5, s8
```

$$0x0\mbox{ABC}04-0x540\mbox{C}=0x\mbox{A}67\mbox{F}8$$

```ad-important
`func1` is `0x0A67F8` bytes past `jal`
```

![[Pasted image 20240920113131.png]]

# REVIEW

![[Pasted image 20240920113832.png]]

## Design Principle 4

*Good Design Demands Good Compromises*
\
Multiple instructions formats allow flexibility
- `add, sub`: Use three register operands
- `lw, sw, addi`: Use two register operands and a constant

Number of instructions formats kept small
- TO adhere to design principles 1 and 3 (simplicity favors regularity and smaller is faster).


