Date: 28th October 2024
Date Modified: 28th October 2024
File Folder: Week 10
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] test
```

# Pipelined Processor Hazards

When an instruction depends on result form instruction that hasn’t completed yet.

Types:
- **Data Hazard**: Register value not yet written back to register file
- **Control Hazard**: Next instruction no decided yet (caused by branch)

![[Pasted image 20241028112410.png]]

## Handling Data Hazards

- Inset nops in code at compie time
- Rearrange code at compile time
- Forward data at run time
- Stall the processor at run time

### The Easy Way

- Insert enough `nops` for result to be ready
- Or move independent useful instruction forward

![[Pasted image 20241028112629.png]]

### Data Forwarding

Data is available on *internal busses* before it is written back to the register file (RF).

**Forward data** from internal busses to *Execute Stage*

![[Pasted image 20241028113947.png]]

Check if source register *in Execute stage* **matches** destination register of instruction *in Memory or Writeback Stage.*

![[Pasted image 20241028114442.png]]

#### Cases for Data Forwarding

**Case 1**: Execute stage `Rs1` or `Rs2` matches **memory** stage `Rd`? Forward from Memory stage

**Case 2:** Execute stage `Rs1` or `Rs2` matches **writeback** stage `rd`? Forward from WRiteback stage

**Case 3:** Otherwise, use value read from register file (as usual)

*For Rs1*:
```c
if ((Rs1E == RdM) && RegWriteM) && (Rs1E != 0)      //Case 1
     ForwardAe = 10
else if ((Rs1E == RdW) && RegWriteW) && (Rs1E != 0) //Case 2
     ForwardAE = 01
else Foward AE = 00                                 //Case 3
```

## Data Hard due to `lw` Dependency

![[Pasted image 20241030111003.png]]

```ad-important
You can *stall* the load to wait for the data to be ready
```

![[Pasted image 20241030111051.png]]

### Stall Logic

Is either *source* register in the **Decode** stage the same as the *destination* register in the **Execute** stage?

***AND***

Is the instruction in the **Execute** stage of a `lw`?

```c
lwStall = (((Rs1D == RdE) || (Rs2D ==RdE)) && ResultSrcE_0 == 1)
StallF = StallD = FlushE = lwStall
```

(Stall the Fetch and Decode stages, and flush the Execute stage.)

![[Pasted image 20241030111313.png]]

# Pipelined Processor Control Hazard

## Control Hazards

`beq`:
- Branch not determined until the **Execute stage** of pipeline
- **Instructions** after branch *fetched* before branch occurs
- These **Two** instructions must be **flushed** if branch happens

![[Pasted image 20241030112903.png]]

```ad-danger
title: Branch Misprediction Penalty
The number of instructions flushed when a branch is taken (in this case, 2 instructions)
```

## Flushing Logic

If `branch` is taken in *execute* stage, need to flush the instructions in Fetch and Decode stages
- Do this by clearing Decode and Execute Pipeline registers using `flushD` and `flushE`

**Equations**:
- $FlushD = PCSRCE$
- $FlushE = lwStall \space OR \space PCSrcE$

![[Pasted image 20241101110625.png]]

## Summary of Hazard Logic

**Data Hazard Logic**

```c
if ((Rs1E == RdM) && RegWriteM) && (Rs1E != 0) 
	Forward AE = 10;
else if ((Rs1E == RdW)) && RegWriteW) && (Rs1E != 0)
	ForwardAE = 01;
else ForwardAE = 00;
```

**Load Word Stall Logic**

```c
lwStall = ((Rs1D == RdE) || (Rs2D == RdE)) && ResultSrcE_0
StallF = StallD = lwStall
```

**Control Hazard Flush**
```c
FlushD = PCScrE
FLushE = lwStall OR PCSrcE
```

### Outputs and Inputs

| Outputs   | Inputs         |
| --------- | -------------- |
| ForwardAE | RegWriteM      |
| ForwardBE | RegWriteW      |
| FlushE    | RdM            |
| FlushD    | RdW            |
| StallD    | ResultSrcE$_0$ |
| StallF    | PCSrcE         |
| —         | Rs1E           |
| —         | Rs2E           |
| —         | RdE            |
| —         | Rs1D           |
| —         | Rs2D           |

# Pipelined Performance

```ad-note
THe SPECINT2000 Benchmark:
- 25% loads
- 10% stores
- 13% branches
- 52% R-Type
```

*Suppose*:
- 40% of the loads used by next instruction
- 50% of branches mis predicted

```ad-question
What si the average CPI?
```

**Load CPI** = 1 when not stalling, 2 when stalling

$$CPI_{lw} = 1(0.6) + 2(0.4)=1.4$$

**Branch CPI** = 1 when not stalling, 3 when stalling

$$CPI_{beq} = 1(0.4) + 3(0.5) = 2$$

$$\boxed{\mbox{Average CPI} = (0.25)(0.14)+0.1(1)+(0.13)(2)+(0.52)(1) = 1.23}$$

```ad-warning
You also have to consider the latency when filling and emptying the pipeline. Considerable amount of clocks *only* when the number of instructions is low ($x < 10$)
```

## Critical Path

$$T_{c\_pipelined}= \max \begin{bmatrix} t_{pcq}+t_{mem} +t_{setup} \\ 2(t_{RFread}+t_{setup}) \\ t_{pcq} + 4t_{mux} + t_{ALU} + t{ALU} + t_{AND-OR} + t_{setup} \\ t_{pcq} + t_{mem} + t_{setup} \\ 2(t_{pcq} + t_{mux}+t_{RFwrite}) \end{bmatrix}$$

- Decode and Writeback stages both use the register file in each cycle
- So each stage gets half of the cycle time ($T_c/2$) to do their work
- Or, stated a different way, *2x of their work* must fit in a cycle ($T_c$)

```ad-important
The critical path of the pipeliend processor is the **execute stage** with a branch instruction. It also uses the writeback stage as a forward mechanism (taking a value from the writeback stage using the hazard unit)
```

![[Pasted image 20241101114221.png]]

![[Pasted image 20241101114404.png]]

$$T_{c\_pipeliend} = t_{pcq} + 4t_{mux} + t_{ALU} + t_{AND-OR} + t_{setup}$$
$$\boxed{T_{c\_pipelined} =}$$

### Example

```ad-question
How long will it takes to run a program with 100 billionn instructions?
```

$$\mbox{Execution Time} = (\mbox{\# of instructions})\times \mbox{CPI} \times T_c$$
$$= (100*10^9)(1.23)(350*10^{-12})$$
$$\mbox{Execution Time} = 43 s$$

## Processor Performance Comparison

| Processor    | Execution Time | Speedup |
| ------------ | -------------- | ------- |
| Single-Cycle | 75             | 1       |
| Multi-cycle  | 155            | 0.5     |
| Pipelined    | 43             | 1.7     |
