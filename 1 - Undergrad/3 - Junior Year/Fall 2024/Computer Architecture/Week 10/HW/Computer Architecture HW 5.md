
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

`ImmSrc0` controls the distinction between `lw` and `sw` immediates and `beq` and `jal` immediates. A stuck-at-zero error will cause errors for both store and jump instructions. For store, it will create an incorrect pointer that will dereference the wrong memory location, which can return garbage data into a register or even possibly go out of bounds. Similarly, `jal`’s pointer will be calculated as if it was a branch instruction, will will be even more incorrect than the previous pointer. This will lead to jump going to a random point in the instruction list, which will most likely lead to the program crashing.

### i) RegWrite

`RegWrite` controls if the register file can take any values back and write them into the destination register. If this value is stuck-at-zero, this means that values can never be written back into the register file. This would make R-type and I-type arithmetic instructions as well as load word instructions work, but unable to save the value back. Similarly, `jal` will work as if it was just a jump instruction and will not save any value back into the return address, making it impossible to link back.

### j) PCUpdate

`PCUpdate` determines if the `PC` register is able to take either $PC+4$ or a jumped/branched `PC` value. However, if this value is stuck-at-zero, this means `PC` can never update. This would lead to the same instruction being looped over and over again until this error is fixed.

### k) Branch

The `branch` signal is placed into an AND gate along with the zero flag to determine if a branch instruction will be taken. If the branch signal is never high, this means that `beq` will never be taken. However, since this signal is ORed with the PCUpdate signal, `jal` would work normally fine. In most circumstances, this would turn all for/while loops into infinite loops and make a program run forever.

### l) AdrSrc

`AdrSrc` is used to separate the instruction memory from data memory for load and store instructions. If this signal was stuck-at-zero, this would lead to catastrophic errors if `lw` or `sw` were ever called. For `lw`, it would calculate the proper pointer, but would instead use the pointer to the nextPC instead ($PC +4$). This would then write back the value of the next instruction into the register file instead of the expected data. Even more dangerous is the `sw` instruction. During the fourth clock cycle, it would take the value it would have written to the calculated pointer and would instead place the value it was going to store as the *next* instruction. This will lead to very interesting unexpected behavior based on what constant was going to be stored in the data memory.

### m) MemWrite

`MemWrite` is used to control when the memory can be written back to. This will make it such that the `sw` instruction will never work properly. The previous clock cycles will always make the correct pointer and get the correct value to the `WD` wire and get the proper `Adr` to access the data memory, it can just not ever write to it because of the `MemWrite` being the main deciding factor if the memory is written to. 

### n) IRWrite

`IRWrite` controls when the register between the instruction memory and the register file will save both the instruction and the value of `oldPC`. If this value does not work, it means that no instruction will ever be loaded, which will mean it will just continuously loop the last instruction that it was given while also changing `PC` by positive 4 or jumping around if it was a `beq` or `jal` instruction. This would ultimately lead to an out-of-bounds error and a crash.

## Exercise 7.19

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the multicycle RISC-V processor to be much faster. Using the table of delays, which unit should she work on to obtain the greastest speedup of the overall processor? How fast should it be? (Making it faster than necessary is a waste of your friend's effort.) What is the cycle time of the improved processor? Explain and show your work.
```

Out of all the values used to calculate $T_c$ for the multi-cycle processor, the current biggest bottleneck is the memory speed. Much like the single-cycle processor, it is much higher than anything else in the processor and causes $200ps$ delay for both `lw` and `sw` instructions, making `lw` the critical path for determining the clock speed. To make it more efficient without going overboard, the $t_{mem}$ should be reduced to $120ps$. This is because either $t_{mem}$ OR the time it takes for the ALU to do calculations can bottleneck that portion of the `lw` instruction. Anymore improvements would mean the ALU would also have to be improved, which is against the agreement made with the designer. To find the max CPU speed, determine the critical path using the formula in class with the new speed for the memory:

$$T_{c\_multi}= t_{pcq} +t_{dec} +2t_{mux}+\max(t_{ALU} + t_{mem}) +t_{setup}$$
$$=(40)+(25)+2(30)+\max(120, 120)+(50)$$
$$\boxed{T_{c\_multi} = 295 ps}$$

## Exercise 7.21 

```ad-question
Suppose the multicycle RISC-V processor has the component delays given in the table. Alyssa P. Hacker designs a new register file that has 40% less power but twice as much delay. Should she switch to the slower but lower power register file for her multicycle processor design? Explain why.
```

Alyssa P. Hacker *should* switch to the slower, but more power efficient design for the multi-cycle processor. This will give her the opportunity to have a less power hungry design while still maintaining the critical path being caused by the memory file instead of the register file. When comparing the two, the max delay caused by the register file will *now* be:

$$T_{c\_multi\_RF} = t_{pcq} + 2t_{RFread}+ t_{setup} \quad (\mbox{It is now two because of the double delay)}$$
$$= (40)+2(50)+50 =290ps < (375ps \Rightarrow t_{c\_multi\_mem)}$$

Since the register file’s critical path is still less than the `lw` critical path with memory, it will not make a difference in the clock speed.

## Exercise 7.23

```ad-question
How many cycles are required to run the following program on the multicycle RISC-V processor? What is the CPI of this program?
```

```
	addi s0, zero, 5        # result = 5 (runs once)
L1:
	bge  zero, s0, Done     # if result <= 0, exit loop (runs *six* times)
	addi s0, s0, -1         # result = result - 1       (runs five times)
	j    L1                 #                           (runs five times)
Done:
```

How many times does each type of instruction occur? How many clock cycles is this?

**R-Type, J-Type**:

$$\mbox{\# R-Type \& J-Type } = 1 + 5 + 5=11$$
$$\mbox{\# of clock cycles } = 11*4 = 44$$
**B-Type**:

$$\mbox{\# B-type} = 6$$
$$\mbox{\# of clock cycles} = 6*3 = 18$$

What is the CPI?

$$CPI = \frac{\mbox{\# of clocks}}{\mbox{\# of instructions}}$$
$$= \frac{(44+18)}{(11+6)}$$
$$CPI = 3.65 \mbox{ clks/instruction}$$
