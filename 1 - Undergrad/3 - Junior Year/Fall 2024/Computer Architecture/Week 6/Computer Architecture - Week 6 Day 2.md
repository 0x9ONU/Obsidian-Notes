Date: 2nd October 2024
Date Modified: 2nd October 2024
File Folder: Week 6
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Microarchitecture Introduction

```

# Microarchitecture

## Chapter 7 Topics

1. Introduction
2. Performance Analysis
3. Single-Cycle Processor
4. Multicycle processor
5. Pipelined Processor
6. Advanced Microarchitecture

## Introduction

```ad-summary
title: Definition: Microarchitecture
How to implement an architecture in hardware
```

**Processor**: Has both *datapath* (functional blocks) and *control* (control signals)

**Multiple Implementations** For a single architecture:
- *Single-Cycle*: Each instruction executes in a single cycle
- *Multicycle*: Each instruction is broken up into series of shorter steps
- *Pipelined:* Each instruction broken up into series of steps & multiple instructions execute at once

## Processor Performance

$$\mbox{Execution Time} = (\mbox{\# Instruction})(\mbox{cycles}/\mbox{instruction})(\mbox{seconds}/\mbox{cycle})$$

**Definitions**:
- CPI: Cycles/instruciton
- Clock Period: Seconds/Cycle
- IPC: Instrucitons/cycle

**Challenge** is to satisfy the *constraints* of:
- Cost
- Power
- Performance

## Small RISC-V Processor

A subset of RISC-V instructions that includes:
- R-Type ALU
	- `add, sub, and, or, slt`
- Memory instructions
	- `lw, sw`
- Branch instructions:
	- `beq`

```ad-important
`slt` and `beq` can substitute for bascially every type of instruciton
```

## Single-Cycle RISC-V Processor Overview


![[Pasted image 20241002112120.png]]

```ad-warning
Instruction Memory is Read-Only. OS loads an executable and puts it into the instruction memory
```

### R-Type

Read from `rs1` and `rs2` (instead of `imm1)

Write $ALUresult$ to `rd`

![[Pasted image 20241002112906.png]]


## Order of Instructions

*Rising Edge*
1. Instruction Fetch
2. Instruction decoding and reading register-file
3. Execute arithmetic logic unit
4. Memory Access

*Falling Edge*
5. Write Back



