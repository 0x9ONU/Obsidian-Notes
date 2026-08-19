Date: 30th August 2024
Date Modified: 30th August 2024
File Folder: Week 1
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Memory Operands

**Load Operation**: Loads a value from memory into the register file

**Store Operation**: Creates a pointer and puts a value from the register file into memory

![[Computer Architecture - Week 1 Day 3 2024-08-30 10.59.42.excalidraw]]

## Memory

- Too much data to fit in only 32 registers
- Store more data in memory
- Memory is large, but slow
- Commonly used variables kept in registers

### Word-Addressable

Each 32-bit data *word* has a unique address

![[Pasted image 20240830111029.png]]

#### Loading

Memory reading is called a *load*. **Mnemonic**: load word `lw`

**Format**:
```
lw t1, 5(s0)
lw destination, offset(base)
```
```ad-note
Every part of memory has a *base*. Everything afterwards is an increment of that base.
```

**Address Calculation:
- add *base address* (`s0`) to the *offset* (5)
- address = (`s0` + 5)

**Result**:
- `t1` holds the data value at address (`s0` + 5)

```ad-important
*ANY* register may be used as the base address
```

```ad-example
Read a word of data at memory address 1 into `s3`
- Address = (0 + 1) = 1
- `s3` = 0xF2F1AC07
$$\space$$
`lw s3 1(zero)`
![[Pasted image 20240830111611.png]]
```
#### Storing

Memory write is called *store*
- **Mnemonic**: store word (`sw`)

```ad-example
Write (store) the value in `t4` into memory address 3
- Add the base address (`zero`) to the offset (0x3)
- address: (0 + 0x3) = 3
- For example, if `t4` holds the value 0xFEEDCABB, then after this insturciton completes, word 3 in memory will contain that value
$$\space$$
`sw t4 0x3(zero)`

![[Pasted image 20240830111839.png]]
```
### Byte-Addressable

```ad-important
RISC-V is byte-addressable
```

Each data byte has a unique address
- Load/store words or single bytes: load byte (`lb`) and store byte (`sb`)
- 320bt word = 4 bytes, so word address **increments by 4**

![[Pasted image 20240830111937.png]]

The address of a memory word *must* now be *multiplied by 4*
- The address of memory word 2 is 2x4 = 8
- The address of memory word 10 is 10 x 4 = 40

#### Reading

```ad-example
Load a word of data at memory address 8 into `s3`
- `s3` holds the value 0x1EE2842 after load

$$\space$$
**RISC-V assembly**
`lw s3, 8(zero)`
![[Pasted image 20240830112134.png]]
```

#### Writing

```ad-example
Store the value held in `t7` inot memory address 0x10 (16)
- If `t7` holds the value 0xAABBCCDD, then after the `sw` completes, word 4 (at address 0x10) in memoery will contain that value
$$\space$$
**RISC-V assembly**
`sw t7, 0x10(zero)`
![[Pasted image 20240830112317.png]]
```

#### Using Both

**RISC-V Assembly**

```
lw t0, x0(zero)
lw t1, x4(zero)
add t2, t0, t1
sw t2, x8(zer0)
```

![[Computer Architecture - Week 1 Day 3 2024-08-30 11.25.53.excalidraw]]

## Generating Constants

### 12-Bits

12-bit signed constants (immediates) using `addi`

**C Code**
```c
int a = -372;
int b = a + 6;
```

**RISC-V Assembly**
```
# s0 = a, s1 = b
addi s0, zero, -372
addi s1, s0, 6
```

```ad-warning
This leaves the range between $-2^{11}$ and $2^{11}-1$
$$-2048 < x < 2047$$
```

### 32-bit

`lui`: Puts an immediate in the upper 20 bits of destination register and 0’s in lower 12 bits

**C Code**
```c
int a = 0xFEDC8765;
```

**RISV-V Assembly**

```
#s0 = a
lui s0, oxFEDC8
addi, s0, s0 0x765
```

#### Example - When the Third Hex Begins with Zero

Write the following binary number into memory: `01101101011001111011011010101101`

*Convert into Hex Using Groupings of 4*

`0x6D67B6AD`

**RISC-V Assembly**

```
lui s0, 0x6D67B
addi s0, s0, 0x6AD
```
*Num 1* $\Rightarrow$ `6D67B000`
*Num 2* $\Rightarrow$ `000006AD`
*Final* $\Rightarrow\space \space$ `6D67B6AD`

#### Example - When the Third Hex Begins with One

Write the following binary number into memory: `01101101011001111011111010101101`

*Convert into Hex Using Groupings of 4*

`0x6D67BEAD`

```ad-danger
It will not work as normal
```
```
lui s0, 0x6D67B
addi s0, s0, 0xEAD
```

*Num 1* $\Rightarrow$ `6D67B000`
*Num 2* $\Rightarrow$ `FFFFFEAD`
*Final* $\not \Rightarrow\space \space$ `6D67B6AD`

```ad-important
This can be fixed by adding one to the `lui` step
```

```
lui s0, 0x5D57C
addi s0, s0, 0xEAD
```

*Num 1* $\Rightarrow$ `6D67C000`
*Num 2* $\Rightarrow$ `FFFFFEAD`
*Final* $\Rightarrow\space \space$ `6D67B6AD` $\checkmark$

#### Example - Another Third Hex Begins

```ad-question
Prove the following assembly does not work as intended. Fix the following assembly to make it correct:
```

```
lui s1, 0xABC7F
Addi S1, S1, 0xA43
```
*Num 1* $\Rightarrow$ `ABC7F000`
*Num 2* $\Rightarrow$ `FFFFFA43`

```ad-note
The 7F would become `01111111`, which will carry through the 1s from the other hex and mess up the final number
```

```ad-check
title: Solution
```

```
lui s1, 0xABC80
Addi s1, s1, 0xA43
```
*Num 1* $\Rightarrow$ `ABC78000`
*Num 2* $\Rightarrow$ `FFFFFA43`

```ad-note
When `F` is added to `8` in the 4th bit, it creates an F with a carry forward 1, which cancels out the rest of the Fs coming from number 2
```

*Final Num* $\Rightarrow$ `ABC7FA43`



