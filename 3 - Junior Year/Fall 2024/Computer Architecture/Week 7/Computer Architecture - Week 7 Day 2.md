Date: 9th October 2024
Date Modified: 9th October 2024
File Folder: Week 7
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Extending the Single-Cycle Processor

## I-Type ALU

Enhance the single-cycle processor to handle **I-Type ALU**: `addi, andi, ori` and `slti`
- **Similar to R-Type** instructions
- But *second source* comes from **immediate**
- Change *ALUSrc* to select the immediate
- And `ImmSrc` to pick the correct immediate

![[Pasted image 20241009110247.png]]

### `addi` Example

![[Pasted image 20241009110333.png]]

## `jal` Function

Enhance the single-cycle processor to handle `jal`
- **Similar to `beq`**
- But jump is *always taken*
	- `PCSrc` should be 1
- **Immediate Format** is different
	- Need a new *ImmSrc* of 11
- And `jal` must **compute PC+4** and **store in `rd`**
	- Take PC+4 from adder through `ResultMux`

![[Pasted image 20241009110716.png]]

![[Pasted image 20241009110729.png]]

![[Pasted image 20241009110743.png]]

![[Pasted image 20241009110800.png]]

![[Pasted image 20241009110816.png]]