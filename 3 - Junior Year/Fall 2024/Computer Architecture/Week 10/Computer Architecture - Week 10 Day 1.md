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
- $FlushE = lwStall OR PCSrcE$

