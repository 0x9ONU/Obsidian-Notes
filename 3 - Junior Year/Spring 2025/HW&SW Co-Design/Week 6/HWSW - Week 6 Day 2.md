Date: 26th February 2025
Date Modified: 26th February 2025
File Folder: Week 6
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# FPGA Mezzaine Card (FMC)

![[FPGA Mezzanine card and VCU108.pdf]]

# FPGAs Day 2
## Accelerator Cards

### Hard Cores

Some functions are provided as efficient, non-configurable “hard cores"”
- Multi-core ARM cores (“Zynq” series)
- Multi-Gigabit Transceivers
- PCIe/Ethernet PHY
- Memory controllers

![[Pasted image 20250226111736.png]]
### Example Accelerator Card Architecture

![[Pasted image 20250226111800.png]]

![[Pasted image 20250226111808.png]]

## Number of LUTs in Different FPGAs


| Part Name | Number of LUTs |
| --------- | -------------- |
| Artix 7   | 101,400        |
| Spartan 7 | 76,800         |
| Kintex 7  | 74,650         |
| Virtix 7  | 173,000        |
| Zynq      | 53,200         |

## Combinational Logic Block (CLB): XC4000

**Features**:
1. Three function generators
2. CLB inputs
	- F1-F4 to F
	- G1-G4 to G
	- H1 (& F, G) to H
3. 4 CLB outputs (combinational Y and X; Sequential YQ and XQ)
4. 13 Inputs
5. Multiplexers
6. Latches/Flip Flops

![[Pasted image 20250226112211.png]]

### Function Generators

- Used for generating the logic function
- Three function generators per CLB
- Consists of LUTs!

### Array of CLBs

- Logic is mapped on multiple CLBs
- Arranged in rows and columns
- Al CLBs are identical
- They can also “store data"
- Both combinational and sequential circuits can be mapped

## FPGA Manufacturing

![[Pasted image 20250226113155.png]]

## Programming an FPGA

Languages overlap with **ASIC/VLSI Design**

FPGAs for accelerating typically done with either
- *Hardware Description Languages (HDL)*: Register-Transfer Level (RTL) languages
- *High-Level Synthesis*: Complier translates software programming languages to RTL

RTL models a circuit using:
- Registers
- Combinational Logic

![[Pasted image 20250226113242.png]]

### Design Flow

![[Pasted image 20250226113349.png]]

![[Pasted image 20250226113357.png]]

![[Pasted image 20250226113405.png]]

### Major Hardware Description Languages

**Software Programming Languages** Describes Process

**Hardware Description Languages**: Describes Structure

*Verilog*: Most widely used in the industry
- Relatively low-level language supported by everyone

*Chisel*: Higher level language that complies to Verilog
- Relatively high-level language from Berkeley
- Embedded in the Scala programming lnaguage
- Prominently used in RISC-V development

*Bluespec*: Another higher-level language that complies to Verilog
- Relatively high-level language from MIT
- supports types, interfaces ,etc.
- Also active RISC-V development

### FPGA Compilation Toolchain

![[Pasted image 20250226114019.png]]

### Programming Using an FPGA Accelerator

Bitfile is programmed to FPGA over “JTAG” interface
- Typically used over USB cable
- Supports FPGA programming, limited debugging access, etc

PCIe-attached FPGA accelerator card is typically used similarly to GPUs
- Program FPGA, execute software
- Software copies data to FPGA board, notify FPGA  
	- FPGA logic performs computations  
	- Software copies data back from FPGA

FPGA flexibility gives immense freedom of usage patterns

### Partial Reconfiguration

Allows designer to dynamically change modules (*even when the FPGA is on*)

![[Pasted image 20250226114131.png]]

## FPGAs in the Cloud

Used in AWS, Microsoft Azure, etc.

![[Pasted image 20250226114216.png]]