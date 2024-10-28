
## Exercise 7.11

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-0 fault, meaning that the singal is always 0 regardless of its intended value. What instructions would malfunciton? Why? Refer to the multicycle datapath and contorl shown in Figures 7.27 and 7.45
```

### a) ResultSrc1

`ResultSrc1` controls which result is needed from a multiplexer. Specifically, it is used to choose between taking the `ALUresult` right away (`1`) or during the next clock cycle (`0`). This will make it such that most programs will fail during the fetch instruction. It will fail to take $PC+4$ and will instead put whatever was the output of the ALU into `PC`, which can either put the `PC` in the wrong place for all instructions (other than jump and branch instructions that do return true). This can cause the program counter to either go to a random location entirely or go out-of-bounds and crash the processor.

### b) ResultSrc0

`ResultSrc0` controls if the result source is either taken from data memory or from the previous `ALUout`. In this case, it would fail during a load instruction. It needs to take the value from data memory so it can write back in the last clock. However, if the bit is stuck-low, it will write back garbage data from the previous `ALUresult` and put it into the destination register, making the *load instruction* unusable until it is fixed. `lw` not working can also mess up other instructions and lead to bad calculations as well (assuming memory is being used for that program).

### c) ALUSrcB1

`ALUSrcB1` controls whether or not the ALU will take in a value from a register or a constant (+4) into it’s second value. Much like the `ResultSrc1` being stuck to zero, this signal will also greatly hurt the fetch clock. During fetch, the instruction would be taken in and $PC+4$ is calculated and is placed in the `PC` register. However, if `ALUSrcB1` is stuck-on-zero, it will fail to create $PC+4$ and will instead calculate $PC+RD2$. This will then be placed and taken into the `PC` register since PCWrite will be set to high during the fetch instruction. This will make it such that for all instructions but jump and successful branch instructions will randomly jump the program counter and lead to untested behavior or crashing.

### d) ALUSrCB0

`ALUSrcB0` controls whether or not if either if a register value or the immediate is taken as the second operand for the ALU. This can be devastating as it prevents any immediate being used in the ALU during both the *decode* AND *execution* steps. For decode, `jal` and `beq` rely on the correct immediate to be read in so it knows where PC should jump to. However, without ALUSrcB0 working correctly, it will calculate $PC + RD2$ instead of $PC + imm$, which will make PC jump to a random spot or completely out of bounds. Similarly, it will not calculate the correct pointer for both the `lw` and `sw` instruction, which will make any memory operations a low chance of actually loading or storing the correct information in memory or causing a crash. Immediate-type instructions will also be wrong as they will not be able to take in the immediate for calculations. This will make it such that 

### e) ALUSrcA1

### f) ALUSrcA0

### g) ImmSrc1

### h) ImmSrc0

### i) RegWrite

### j) PCUpdate

### k) Branch

### l) AdrSrc

### m) MemWrite

### n) IRWrite