
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

`ALUSrcB0` controls whether or not if either if a register value or the immediate is taken as the second operand for the ALU. This can be devastating as it prevents any immediate being used in the ALU during both the *decode* AND *execution* steps. For decode, `jal` and `beq` rely on the correct immediate to be read in so it knows where PC should jump to. However, without ALUSrcB0 working correctly, it will calculate $PC + RD2$ instead of $PC + imm$, which will make PC jump to a random spot or completely out of bounds. Similarly, it will not calculate the correct pointer for both the `lw` and `sw` instruction, which will make any memory operations a low chance of actually loading or storing the correct information in memory or causing a crash. Immediate-type instructions will also be wrong as they will not be able to take in the immediate for calculations. This will make it such that it will take $Rs1 \mbox{ op } Rs2$ instead of the immediate, which will also lead to incorrect calculations. Overall, this is the worst case so far when it comes to functionality in my opinion.

### e) ALUSrcA1

`ALUSrcA1` controls if either the current PC or the `Rs1` is taken as input for the ALU. This will affect almost every single step in execution except `jal`. For the ALU-based instructions, it will not take the proper path and will make it that the first operand will *always* be PC instead of the expected `rs1`. For R-type or I-type, this means it will calculate $PC \mbox{ op } Rs2$ or $PC \mbox{ op } imm$, which will return an incorrect value. For `beq`, it will calculate $PC - Rs2$ instead, which will make it so it will branch at the incorrect times and can generate infinite loops. For `lw` and `sw`, it will calculate the incorrect pointer and either read bad memory or crash due to an out-of-bounds error. `jal` is the only instruction that will work properly as it never uses the first register when calculating either $oldPC +4$ or its jump location. 

### f) ALUSrcA0

`ALUsrcA0` controls if either the current PC or the oldPC is used in calculations. Unlike the previous bit, this bit being stuck-at-zero will affect calculations in both the decode step and part of the execution step. For the decode step, it will calculate the pointer PC pointer for both `beq` and `jal` incorrectly by doing $PC + imm$ rather than $oldPC + imm$. This will lead it to be ahead by a single instruction if it does jump, which can lead to logic errors later on. Similarly, it will calculate $PC + 4$ rather than $oldPC + 4$ for `jal` during the execution step, which will save the incorrect return address being forward one too many instructions, which can be devastating depending on the circumstance.

### g) ImmSrc1

`ImmSrc1` controls if either a store/load word immediate is taken or if a `beq`/`jal` immediate is taken. If it is stuck-on-zero, this would mean that it will always take a `lw` immediate if it was a branch instruction or a `sw` immediate when it is a `jal` instruction. This will lead to an error when it calculates the pointer for branching/jumping and could lead to either an out-of-bounds error or jump to a random spot in the program depending on how large the immediate should have been.

### h) ImmSrc0

`ImmSrc0` controls the distinction between `lw` and `sw` immediates and `beq` and `jal` immediates. A stuck-at-zero error 

### i) RegWrite

### j) PCUpdate

### k) Branch

### l) AdrSrc

### m) MemWrite

### n) IRWrite