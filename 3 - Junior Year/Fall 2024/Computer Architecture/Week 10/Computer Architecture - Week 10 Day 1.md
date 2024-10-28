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
if ((Rs1E == RdM) && RegWriteM)
     ForwardAe = 10
else if ((Rs1E == RdW) && RegWriteW)
     ForwardAE = 01
else Foward AE = 00
```
