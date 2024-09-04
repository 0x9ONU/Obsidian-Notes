Date: 30th August 2024
Date Modified: 30th August 2024
File Folder: Week 1
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Introduction to ARM Cortex-M Assembly Language

![[ERTA - Week 1 Day 3 2024-08-30 13.15.41.excalidraw]]

## How is Assembly like C++?

```ad-note
Very similar to C++
```

**C++ Example**
```c++
int a = b + 5
```
- Has an operation (what is happening?)
	- $+$
- Has operands (What is the operation happening to?)
	- `b, 5`
- Has memory location to store the result
	- `a`

**Assembly Example**
```arm-asm
ADD R0, R1, #5
```
- Operation: `ADD`
- Operands: `R1` and #5
- Memory location: `R0`

### How are they different?

**Looping**

```c++
for(int i = 0; i < 20; i++) {
	someFunc();
}
```

```arm-asm
	MOV R4, #0      ; R4 = 0
loop CMP R4, #20    ; index >= 20
	BHS done        ; if so, skip to done
	BL someFunc     ; someFunc function
	ADD R4, R4, #1  ; R4 = R4 + 1
	B loop
done
```

```ad-note
`#x` is a literal constant
```

## In-Class Exercise:

Make a for loop in C++ *without* using the `for` command

```c++
#include <iostream>
using namespace std;
int main() {
    int i = 0;
start_of_loop:
    cout << "microcontrollerz rule" << endl;
    i++;
    if (i <= 3) goto start_of_loop;
}
```

```ad-note
This is basically how to write it in assembly
```

## Example Cortex-M Assembly Commands

Memory Access Instructions
- `STR Rt, [Rn]`: Store `Rt` to memory at `[Rn]`
- `LDR Rd, [Rn, #n]`: Load memory at `[Rn + n]` to `Rd`
- `STR Rt, [Rn, #n]`: Store `Rt` to memory `[Rn+n]`
- `MOV R1, R2`: Move data from `R2` to `R1`

Arithmetic/Logical Instructions:
- `ADD, SUB, MUL, DIV, ORR, AND`, etc.

Branch or Control Instructions
- `B`: branch (i.e., go to) to label
- `BEQ` branch (i.e., go to) to label if two arguments are equal
- `BNE` branch (i.e., go to) label if two arguments are *not* equal
- `BX` branch (i.e., go to) branch indirection (i.e., go to a memory location in a register)

## Addressing Modes

### Immediate Addressing

Data is contained inside the instruction
- `MOV R0, #100`

### Index Addressing

Uses a register point to access memory
- `LDR R0, [R1]`

### PC-relative Addressing

Address of data in ROM/RAM is indexed based upon the Program Counter
- The relative addresses are usually labelled (but relative to the PC in the background)
- Used in branching and access data in RAM/IO

```ad-example
B Locaiton ; jump to Locaiton, using PC-relative addressing
BL Subroutine ; call Subroutine, using PC-relative addressing
```

```ad-note
Typically a named pointer that points to a specific part in RAM/IO
```

#### Example

It takes two instructions to access data in RAM or I/O:

```arm-asm
LDR R1, =Count ; R1 point to variable Count, using PC-relative. '=' location of the variable
LDR R0, [R1] ; R0 = vlaue pointed to by R1
```

**Instruction One**
Uses PC-relative addressing to create a pointer to the object


**Instruction Two**
Sets the value of the register to the value of the loaded variable

## Logical Instructions

| Instruction  | Syntax                                     |     |
| ------------ | ------------------------------------------ | --- |
| AND          | AND{S} {Rd, } Rn, \<op2\>; Rd=Rn\&op2      |     |
| OR           | ORR{S} {Rd, } Rn, \<op2\>; Rd = Rn \| op2  |     |
| Exclusive or | EOR{S} {Rd, } Rn, \<op2\>; Rd = Rn^op2     |     |
| And not      | BIC{S} {Rd, } Rn, \<op2\>; Rd = Rn &(~op2) |     |
| Or not       | ORN{S} {Rd, } Rn, \<op2\>                  |     |
