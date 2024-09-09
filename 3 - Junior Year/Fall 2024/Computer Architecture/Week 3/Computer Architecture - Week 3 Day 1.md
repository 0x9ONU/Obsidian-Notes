Date: 9th September 2024
Date Modified: 9th September 2024
File Folder: Week 3
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Arrays

```

# Arrays

```ad-summary
Data that is stored across multiple consequetive memory locations
```

Arrays contain:
- A Base Address (the first index)
- Multiple memory locations that are `Base` plus and the word offset (in our case 32-bits)

Allows you to access a large amount of similar data

**Index**: Access each element

**Size:** Number of elements

```ad-example
**Five-Element Array**
*Base Address* = `0x123B4780` (addreess of the first element `array[0]`)
The First step in accessing an array: Load base address into a register
![[Pasted image 20240909112245.png]]
```

## Accessing an Array

**C-Code**

```c
int array[5];
array[0] = array[0] *2;
array[1] = array[1] * 2;
```

**RISC-V Assembly Code**

```
#s0 = array base address

lui  s0, 0x123B4   # 0x123B4 in upper 20 bits of s0
addi s0, s0, 0x780 # s0 = 123B

lw   t1, 0(s0)
slli t1, t1, 1
sw   t1, 0(s0)

lw   t1, 4(s0)
slli t1, t1, 1
sw   t1, 4(s0)
```
### Using a For Loop

```
# s0 = array base address, s1 = i, t2 = size

# init code

	lui  s0, 0x23B8F    # s0 = 0x23B8F000
	ori  s0, s0, 0x400  # s0 = 0x23B8F400
	addi s1, zero, 0    # i = 0
	addi t2, zero, 1000 # t2 = 1000

loop:
	bge  s1, t2, done   # if not then done
	slli t0, s1, 2      # t0 = i * 4 (byte offset)
	add  t0, t0, s0     # address of array [i]
	lw   t1, 0(t0)      # t1 = array[i]
	slli t1, t1, 3      # t1 = array[i] * 8
	sw   t1, 0(t0)      # array[i] = array[i] * 8
	addi s1, s1, 1      # i = i + 1
	j    loop           # repeat
done:
```

## Strings

```ad-important
Strings are just Arrays made of characters
```

**Characters**: Take up one *byte* instead of a word
- includes 7 data bits and one parody bit
- we need to use *load byte* instead of *load word* when working with characters and strings

```ad-important
All strings are terminated by zero to determine the end of the string.
```


