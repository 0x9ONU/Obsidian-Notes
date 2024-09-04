Date: 4th September 2024
Date Modified: 4th September 2024
File Folder: Week 2
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Logical and Shift Instructions

Two different types of instructions that can be broken down into:
- R-type
- I-type

**Logic** will cover the following:
- AND
- OR
- XOR

**Shift** will cover the following:
- Shift Left Logic (SLL)
- Shift Right Logic (SRL)
- Shift Right Arithmetic (SRA)

## Logical

### Example

```
#Let's assume the following values for the temp. registers
#t1 : ABCDEF12
#t2 : FF000000
and t3, t1, t2
andi t4, t1 0x0FF
or t5, t3, t4
ori t6, t5, 0x700
xori t7, t1, 0xFFF
xor t8, t1, t7
```

**First Instruction**

`0xABCDEF12` $\Rightarrow$ 1010101111001101111100010010

`0xFF000000` $\Rightarrow$ 11111111000000000000000000000000

10101011…

`t3 = AB000000`

**Second Instruction**

```ad-important
It will keep the *LEAST* significant bits and mask the more siginficant bits
```

```ad-warning
Remember the 12 bit limit for intermediates
```

`t4 = 0000000012`

**Third Instruction**

```ad-note
Remember OR:
$0+x=x$
$1+x=1$
```

`t5 = AB000012`

**Fourth Instruction**

`i = 00000700`

`t6 = AB000712`

**Fifth Instruction**

```ad-note
Remember XOR:
$x \oplus 0 = x$
$x \oplus 1 = \bar x$
```

`0xFFF` $\Rightarrow$ `FFFFFFFF`

```ad-important
This is a full inversion!
- $15 - x = \bar x$
```

`t7 = 543210ED`

**Sixth Instruction**

```ad-note
This is the inversion of the inversion!
```

`t8 = FFFFFFFF`

## Shifts

### Example

```
#t1 : ABCDEF12
#t2 : FF000000
#t4 : 00000012
SLLi t1, t1, 0X04
SLLi t4, t4, 24
SRLi t4, t4, 24
SRAi t8, t2, 24
SRLi t9, t2, 24
```

**First Instruction

```ad-note
Since it is shifting by 4 bytes, an entire hex will be moved to the left
```

`t1 = BCDEF120`

**Second Instruction**

```ad-note
This instruction will shift all the least significant bits to the top
```

`t4 = 12000000`

```ad-important
This is equivalent to multiplying a number by $2^x$
```

In this case, we multiplied the value in the `t4` register by $2^{24}$

**Third Instruction**

```ad-note
This shifts the register right so it becomes the same number as before
```

`t4 = 00000012`

```ad-important
This is equivalent to *division* a number by $2^x$
```

**Fourth Instruction**

```ad-warning
SRA does the same thing from SRL, but with **SIGN EXTENSION**
- Since the most significant bit of the number is 1, then it would fill the numbers it jumps over with 1s
```

`t8 = FFFFFFFF`

**Fifth Instruction**

`t9 000000FF`






