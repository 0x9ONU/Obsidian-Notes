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





