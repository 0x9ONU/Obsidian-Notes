
## Exercise 7.11

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-0 fault, meaning that the singal is always 0 regardless of its intended value. What instructions would malfunciton? Why? Refer to the multicycle datapath and contorl shown in Figures 7.27 and 7.45
```

### a) ResultSrc1

`ResultSrc1` controls which result is needed from a multiplexer. Specifically, it is used to choose between taking the `ALUresult` right away (`1`) or during the next clock cycle (`0`). This will make it such that most programs will fail during the fetch instruction. It will fail to take $PC+4$ and will instead put whatever was the output of the ALU into `PC`, which can either put the `PC` in the wrong place for all instructions (other than jump and branch instructions that do return true). This can cause the program counter to either go to a random location entirely or go out-of-bounds and crash the processor.

### b) ResultSrc0

`ResultSrc0` controls if the result source is either taken from data memory or from the previous `ALUout`. In this case, it would fail during a load instruction. It needs to take the value from data memory so it can write back in the last clock. However, if the bit is stuck-low, it will write back garbage data from the previous `ALUresult` and put it into the destination register, making the *load instruction* unusable until it is fixed. `lw` not working can also mess up other instructions and lead to bad calculations as well (assuming memory is being used for that program).

### c) ALUSrcB1

`ALUSrcB1` controls whether or not the ALU will take in a value from a register or a constant (+4) into it’s second value. Much like the `ResultSrc1` being stuck to zero, this signal will also greatly hurt the fetch clock. During fetch, the instruction would be taken in and $PC+4$ is calculated and is placed in the `PC` register. However, if `ALUSrcB1` is stuck-on-zero, it will fail to create $PC+4$ and will instead calculate $PC+RD2$. This will  