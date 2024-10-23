Date: 21st October 2024
Date Modified: 21st October 2024
File Folder: Week 9
#Circuits

# Multicycle Control

![[Pasted image 20241021110105.png]]

```ad-note
The ALU Decocer is the same as the single-cycle processor
```

```ad-important
$$\mbox{PC}_\mbox{write} = \mbox{PC}_\mbox{update} + \mbox{branch}*\mbox{zero}$$
```

## Instruction Decoder

![[Pasted image 20241021110217.png]]

| op  | Instruction | ImmSrc |
| --- | ----------- | ------ |
| 3   | `lw`        | 00     |
| 35  | `sw`        | 01     |
| 51  | `R-type`    | XX     |
| 99  | `beq`       | 10     |
| 111 | `jal`       | 11     |
## Main FSM

![[Pasted image 20241021110311.png]]

To declutter FSM:
- *Write-Enable Signals* (RegWrite, MemWrite, IRWrite, PCUpdate, and Branch) are `0` if **not listed** in a state
- *Other Signals are Don’t Care* if not listed in a state

### Fetch

![[Pasted image 20241021111241.png]]

## Multicycle Processor Main FSM

| State    | Datapath $\mu$OP                           |
| -------- | ------------------------------------------ |
| Fetch    | Instr ← Mem{PC}; PC ← PC+4. OldPC          |
| Decode   | ALUOut ← PCTarget (oldPC + imm)            |
| MemAdr   | ALUOut ← $rs1+imm$                         |
| MemRead  | Data ← Mem{ALUOut}                         |
| MemWB    | rd ← Data                                  |
| MemWrite | Mem{ALUOut} ← rd                           |
| ExecuteR | ALUOut ← rs1 op rs2                        |
| ExecuteI | ALUOut ← rs1 op imm                        |
| ALUWB    | rd ← ALUOut                                |
| BEQ      | ALU Result = rs1-rs2; if Zero, PC ← ALUOUt |
| JAL      | PC ← ALUOut; ALUOut ← oldPC+4              |

```ad-important
- The only thing that affects our state machine is the **op code**
- Each state changes *on the clock*
```

`lw`:
- s0 → s1 → s2 → s3 → s4

`sw`:
- s0 → s1 → s2 → s5

`R-type`:
- s0 → s1 → s6 → s7

`I-Type`:
- s0 → s1 → s8 → s7 

`JAL`:
- s0 → s1 → s9 → s7

`BEQ`:
- s0 → s1 → s10

![[Pasted image 20241021112140.png]]

