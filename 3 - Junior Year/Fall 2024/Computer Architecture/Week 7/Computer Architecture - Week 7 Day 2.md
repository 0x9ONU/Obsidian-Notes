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

## What are we missing?

**ALU Extension**: XOR and shifiting.

**Load Upper Immediate**: LUI and AUIPC

**Jump and Link Register**

**Branch it *not* Equal**: `bne`

**Smaller Load and Store Operations**: `lb`, `lh`, `sb`, `sh`

# Single-Cycle Performance

```ad-note
title: Remember
**Program Execution Time**:
$$(\mbox{\# instructions})(\mbox{cycles}/\mbox{instructions})(\mbox{seconds}/\mbox{cycle})$$
```

$$T_{clk} \ge t_{setup} + t_{hold} + t_{comb}$$

```ad-important
The processor performance $T_c$ is limited by the critical path (`lw`)
```

![[Pasted image 20241009112934.png]]

**Single-Cycle Critical Path**:

$$T_{c\_single} = t_{pcq\_PC}+t_{mem}+\max[t_{RFread} + t_{cntrl} + t_{ext} + t_{mux}]+t_{ALU} + t_{mem}+t_{mux} + t_{RFsetup}$$

```ad-important
This is the main limiting path, but memory, ALU, and the register file are always the slowest
```

$$T_{c\_single} = t_{pcq\_PC} + 2t_{mem} + t_{RF\mbox{read}} + t_{ALU} + t_{mux} + t_{RF\mbox{setup}}$$

![[Pasted image 20241009113603.png]]

