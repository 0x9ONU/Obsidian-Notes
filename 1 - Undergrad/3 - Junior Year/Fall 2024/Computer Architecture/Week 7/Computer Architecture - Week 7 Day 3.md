Date: 11th October 2024
Date Modified: 11th October 2024
File Folder: Week 7
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```
\
# RISC-V Single-Cycle Instruction Addition

## XOR

Add a new input for the `ALUControl` multiplexer and add an xor gate for the input and take the two input registers are input

![[PXL_20241011_150317191.jpg]]

### ALU Decoder

| ALU OP | funct3 | op5,funct7 | ALUctrl     | Instruciton |
| ------ | ------ | ---------- | ----------- | ----------- |
| 00     | x      | x          | 000 (add)   | lw, sw      |
| 01     | x      | x          | 001 (sub)   | beq         |
| 10     | 000    | 00,01,10   | 000 (add)   | add, addi   |
| 10     | 000    | 11         | 000 (sub)   | sub         |
| 10     | 010    | x          | 101 (slt)   | slt, slti   |
| *10*   | *100*  | *x*        | *100 (xor)* | *xor, xori* |
| 10     | 110    | x          | 011 (or)    | or, ori     |
| 10     | 111    | x          | 010 (and)   | and, andi   |


### ALU Control

| ALU Ctrl | Function |
| -------- | -------- |
| 000      | add      |
| 001      | sub      |
| 010      | and      |
| 011      | or       |
| *100*    | *xor*    |
| 101      | slt      |
## Shift Left Logic (`sll`)

![[Pasted image 20241011110936.png]]

### ALU Decoder

| ALU OP | funct3 | op5,funct7 | ALUctrl     | Instruciton |
| ------ | ------ | ---------- | ----------- | ----------- |
| 00     | x      | x          | 000 (add)   | lw, sw      |
| 01     | x      | x          | 001 (sub)   | beq         |
| 10     | 000    | 00,01,10   | 000 (add)   | add, addi   |
| 10     | 000    | 11         | 000 (sub)   | sub         |
| 10     | 010    | x          | 101 (slt)   | slt, slti   |
| *10*   | *001*  | *x*        | *110 (sll)* | *sll, slli* |
| 10     | 100    | x          | 100 (xor)   | xor, xori   |
| 10     | 110    | x          | 011 (or)    | or, ori     |
| 10     | 111    | x          | 010 (and)   | and, andi   |

### ALU CTRL

| ALU Ctrl | Function |
| -------- | -------- |
| 000      | add      |
| 001      | sub      |
| 010      | and      |
| 011      | or       |
| 100      | xor      |
| 101      | slt      |
| *110*    | *sll*    |

## Shift Right Logic (`srl`)

![[Pasted image 20241011111254.png]]

### ALU Decoder

| ALU OP | funct3 | op5,funct7 | ALUctrl   | Instruciton |
| ------ | ------ | ---------- | --------- | ----------- |
| 00     | x      | x          | 000 (add) | lw, sw      |
| 01     | x      | x          | 001 (sub) | beq         |
| 10     | 000    | 00,01,10   | 000 (add) | add, addi   |
| 10     | 000    | 11         | 000 (sub) | sub         |
| 10     | 010    | x          | 101 (slt) | slt, slti   |
| 10     | 001    | x          | 110 (sll) | sll, slli   |
| *10*     | *001*    | *x0*         | *111 (srl)* | *srl, srli*   |
| 10     | 100    | x          | 100 (xor) | xor, xori   |
| 10     | 110    | x          | 011 (or)  | or, ori     |
| 10     | 111    | x          | 010 (and) | and, andi   |

### ALU CTRL

| ALU Ctrl | Function |
| -------- | -------- |
| 000      | add      |
| 001      | sub      |
| 010      | and      |
| 011      | or       |
| 100      | xor      |
| 101      | slt      |
| 110      | sll      |
| *111*      | *srl*      |

## Branch Not Equal (`bne`)

![[Pasted image 20241011111626.png]]

![[Pasted image 20241011111644.png]]

```ad-important
Bit zero of funct3 will be used to swap between the two using an xor flag.
```

## Load Upper Immediate (`lui`)

![[Pasted image 20241011111733.png]]

![[Pasted image 20241011111745.png]]

![[Pasted image 20241011111800.png]]

## Load Bit Unsigned (`lbu`)

![[Pasted image 20241011111913.png]]

![[Pasted image 20241011111923.png]]

![[Pasted image 20241011111936.png]]

## Jump and Link Register (`jalr`)

![[Pasted image 20241011112010.png]]

![[Pasted image 20241011112021.png]]

![[Pasted image 20241011112035.png]]

## Store Byte (`sb`)

![[Pasted image 20241011112120.png]]

![[Pasted image 20241011112130.png]]

![[Pasted image 20241011112143.png]]

![[Pasted image 20241011112317.png]]

