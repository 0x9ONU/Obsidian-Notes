Date: 23rd September 2024
Date Modified: 23rd September 2024
File Folder: Week 5
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Immediate Encoding

## Constant/Immediates

`lw` and `sw` use constants or immediates
- *immediately available* from instruction
- 12-bit two’s complement number
- `addi`: add immediate

```ad-note
Subtract immediate is *not* necessary since we can use an add immediate with a negative number
```
```c
a = a + 4;
b = a - 12;
```

```
# s0 = a, s1, = b
addi s0, s0, 4
addi s1, s0, -12
```
## From Constant to Bits in an Instruction

![[Pasted image 20240923110929.png]]

![[Pasted image 20240923111306.png]]

- Immediate bits *mostly* occupy **consistent instruction bits**
	- Simplifies hardware to build the microprocessor
- **Sign bit** of signed immediate is in *msb* of instruction
- Recall that `rs2` of R-Type can encode immediate shift amount.

```ad-note
title: Recall
`srl x2, x3, x4` *`x4` CANNOT contain a number greater than 32*
`srli x2, x3, 12` **R-Type Instruction** because the immediate should not be bigger than 32. `Funct7` will not be used
```

### Composition of 32-bit Immediates

![[Pasted image 20240923112320.png]]

# Reading Machine Language & Addressing Operands

## Instruction Fields & Formats

![[Pasted image 20240923113023.png]]

## Interpreting Machine Code

**Steps**
1. Write in binary
2. Start with **op**: tells how to parse rest
3. *Extract Fields*
4. `op`, `funct3`, and `funct7` fields tell operation

```ad-example
For `0x41FE83B3` AND `0xFDA58393`
![[Pasted image 20240923113203.png]]
```
![[Pasted image 20240923113306.png]]

## Addressing Modes

### Register-Only

Operands found in registers:
- `add s0, t2, t3`
- `sub t6, s1, zero`

### Immediate

12-bit signed immediate used as an operand
- `addi s4, t5, -73`
- `ori t3, t7, 0xFF`

### Base Addressing

- Loads and Stores
- Address of Operand is:
	- `base address + immediate`

```ad-example
`lw s4, 72(zero)`
- Address = `0 + 72`

`sw t2, -25(t1)`
- Address = `t1-25`
```

### PC-Relative Address

```ad-important
Their purpose is to change the program counter
```

For Branches and `jal`

```
0x354     L1:     addi s1, s1, 1
0x358             sub  t0, t1, s7
...
0xEB0             bne  s8, s9, L1
```

The Label is (`0xEB0-0x354`) = ==`0xB5c`== (*2908*) instructions *before* `bne`:

Imm(12:0) = -2908 $\Rightarrow$ 1010010100100

![[Pasted image 20240923113907.png]]

