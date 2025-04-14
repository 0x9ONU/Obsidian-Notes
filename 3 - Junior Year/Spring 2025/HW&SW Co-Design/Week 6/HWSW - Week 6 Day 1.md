Date: 24th February 2025
Date Modified: 24th February 2025
File Folder: Week 6
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Assignment 3 - Investigating Multi-Core Scheduling in Real-Time Systems

```ad-summary
**RMS** and **EDF** are widely used in single-core real-time systems. However, in multi-core systems, their inherent limitations become apparent due to challenges like:

- **Task Migration**: The process of moving a task from one core to another in a multi-core system to balance the workload or meet deadlines.
- **Load Balancing**: The technique of distributing tasks or workloads evenly across multiple cores to optimize system performance and prevent any core from being overburdened or underutilized.
- **Synchronization Overhead**: The additional time and resources required to manage communication and coordination between tasks running on different cores, which can impact system performance.
- **Scalability**: The ability of a system to handle an increasing amount of workload or to be expanded with more cores without significant performance degradation.
- **Shared resources:** In multi-core systems, cores share resources (e.g., memory, caches) and tasks may need to migrate between cores, introducing new complexities that affect deadline guarantees and system performance.
```

```ad-question
title: Assignment
**Part 1**: **Why RMS and EDF are Not Ideal for Multi-Core**

- Discuss the **challenges** RMS and EDF face in multi-core systems (e.g., task migration overhead, load imbalance, resource contention).
- Analyze why **static scheduling** (RMS) and **dynamic scheduling** (EDF) can fail to provide real-time guarantees in multi-core systems.

**Part 2**: **Alternative Scheduling Techniques**

- Investigate and analyze at least **two alternative scheduling algorithms** designed for multi-core systems (e.g., **Hybrid Scheduling**, **Global and Partitioned EDF**, **Slack Stealing**, **Fair Scheduling**, or **Clustered Scheduling**).
- Compare these techniques to RMS and EDF, highlighting how they handle task migration, load balancing, and resource contention more effectively in multi-core environments.

**Part 3**: **Real-World Examples**

- Find at least **two real-world examples or case studies** of multi-core real-time systems that use alternative scheduling techniques. These could come from industries like **aerospace**, **automotive systems**, or **embedded systems**.
- Analyze how these systems implement the alternative techniques and the impact these scheduling methods have on their performance, real-time guarantees, and scalability.

**Deliverables:** A written report including

- Summary of the challenges of RMS and EDF, and the strengths of the alternative scheduling techniques.
- An analysis of real-world examples or case studies, explaining how alternative scheduling techniques have been implemented and their impact on system performance.
```

# Introduction to FPGAs

## Historical Introduction

In the beginning, digital design was done with the ‘74 series of chips.

Some people would design their own chips based on Gate Arrays, which were nothing else than array of NAND gates

![[Pasted image 20250224113123.png]]

### Programmable Logic Arrays PLAs

The first programmable chips were PLAs (Programmable Logic Arrays):
- Two level structures of AND and OR gates with user programmable connections
- Implemented in strucutre and cost over PLAs. Today, such devices are generically called PLDs (programmable logic devices)
![[Pasted image 20250224113129.png]]

### Complex PLD (CPLD)

A colleciton of multiple PLDs and an interconnection structure. Has a larger number of smaller individual blocks + large interconnected structure that dominates the entire chip.

![[Pasted image 20250224113134.png]]

## Programmable Logic 

An integrated circuit that can be programmed/reprogrammed with digital logic at the base level.

## Advantages of FPGAs

1. Can be configured to act like any circuit
2. Reconfigurable
3. Saves product to market time

## Applications of FPGAs

- High perofrmance ocmputing
- Medical equipment
- Data servers
- Consumer Electroncis
- Computer Networking
- Aerospace and Defnese

## FPGA Functions

- Internal SRAM
- Embedded multipliers and DSP blocks
- Embedded logic analyzer
- Embedded CPUs
- High speed I/O (~10GHz)
- DDR/DDRII/DDRIII SDRAM interfaces

## ASIC vs FPGAs

**ASIC (Application-Specific Integrated Circuit)**
- Special chip purpose-built for an application
- ex. ASIC bitcoin miner, Intel neural network accelerator
- Function *cannot* be changed once expensively built

*Pros of FPGA*: Can be Field-Programmed:
- Function can be changed completely whenever
- FPGA fabric emulates custom circuits
- Single FPGA may repale several ICs
- No wire-wrapping

*Cons of FPGA*: Emulated circuits are not as efficient as bare-metal
- ~10x performance (larger circutis, faster clock)
- ~10x power efficiency
- Not as wasteful in terms of resources
- Increased reliability

## FPGA - Field Programmable Gate Array

**Programmable Logic Blocks**: Implement combinational and sequential logic. Based on LUT and DFF

**Programmable I/O Blocks**: Configurable I/Os for external connections supports various voltages and tri-states.

**Programmable Interconnect**: Wires to connect inputs, outputs and logic blocks
- Clocks
- Short distance local connections
- Long distance connections across chip

![[Pasted image 20250224114241.png]]

![[Pasted image 20250224114247.png]]

![[Pasted image 20250224114331.png]]

![[Pasted image 20250224114937.png]]
### Logic Blocks

Logic funcitons are implemented in LUTs
- Flip-flops, registers, lcocked storage elements
- Multiplexers (select 1 of $n$ inputs)

![[Pasted image 20250224114743.png]]

![[Pasted image 20250224114403.png]]

```ad-example
Using a LUT as a full adder
![[Pasted image 20250224114409.png]]
```


#### LUTs

Contains memory cells to implement small lgoic functions
- Holds either 0 or 1
- Programmed with outputs of Truth Table
- Inputs select content of one of the cells as output
- Configured by re-programmable SRAM memory cells

LUT is a RAM with data width of *1-bit*
- The contents are programmed at power-up

![[Pasted image 20250224114617.png]]

#### DSP Blocks

CLBs act as gates - Many needed to implement high-level logic
- Includes artithmetic blocks as efficient ALU blocks
- Each provides and adder and a multiplier

![[Pasted image 20250226110929.png]]

![[Pasted image 20250226110936.png]]

### Block RAM

CLB can act as flip-flops

Some on-chip SRAM provided as *blocks*
- ~18/36 Kbit/block, MBs per chip
- Massively parallel → multi-TB/s bandwidth

![[Pasted image 20250226111030.png]]

