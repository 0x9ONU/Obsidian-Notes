Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Question Bank
collapse: open

1. Multicycle question to calculate CPI (for loops, DSA) Find number of instructions, type of instructions (R-Type vs. Branch vs. LW). Total # of clocks/ Total # of instructions $\star$
2. Stuck-at-zero and stuck-at-one
3. Critical Path
4. Find Average CPI with changes in SPECINT2000 benchmark
5. Pipeline Hazards with diagram (Exercise 7.32)

```

## Problem Type 1 (Multicycle CPI)

### Exercise 7.23

```ad-question
How many cycles are required to run the following porgram on the multicycle RISC-V processor? What is the CPI of this program?
```

```
	addi s0, zero, 5    # 1 time
L1:
	bge  zero, z0, Done # 6 times
	addi s0, s0, -1     # 5 times
	j    L1             # 5 times
Done:
```

The program will execute 6 `addi` (4 cycles each), 6 `bge` (3 cycles each), and 5 `jal` (4 cycles each) instructions for a total of:

$$\mbox{\# Number of Instructions} = 6+6+5 = 17$$
$$\mbox{\# Number of Clocks} = (6*4) + (6*3) + (5*4) = 62$$

$$\therefore \mbox{CPI} = (62)/(17)=3.65$$

### Exercise 7.24

```ad-question
How many cycles are required to run the following porgram on the multicycle RISC-V processor? What is the CPI of this program?
```

```
addi s0, zero, 0   # 1 run
addi s1, zero, 0   # 1 run
addi t3, zero, 10  # 1 run

loop:
	beq s0, t3, L2 # 11 runs
	add s1, s1, s0 # 10 runs
	addi s0, s0, 1 # 10 runs
	j loop         # 10 runs
L2:
```


```ad-warning
Make sure you know how many times the for loop loops. The first instructions will run only once, and the loop will run 10 times
```

This makes **44 instructions**

$$\mbox{\# of clocks} = (4*1)+(4*1)+(4*1)+(3*11)+(4*10)+(4*10)+(4*10) = 165$$

$$CPI = \frac{165}{44} = 3.75$$

```ad-important
$$\mbox{ex}_{time} = 165* clk_{period}$$
$$= \mbox{\# of instructions} * CPI * T_{period}$$
```

## Problem Type 2 (Stuck-at-zero/one)

### Exercise 7.1

```ad-question
Suppose that one of the following control signals in the single-cycle 
RISC-V processor has a stuck-at-0 fault, meaning that the signal is always 0 regardless of its intended value. What instructions would malfunction? Why? Use the extended version of the single-cycle processor shown in Figures 7.15 and 7.16.
1. $RegWrite$
2. $ALUOP_1$
3. $ALUOP_0$
4. $MemWrite$
5. $ImmSrc_1$
6. $ImmSrc_0$
7. $PCSrc$
8. $ALUSrc$
```

1. $RegWrite \Rightarrow$ `lw`, `addi`, `jal`, and R-type instructions → $WE3$ will be zero, so no data will be written to the register file. 
2. $ALUOP_1 \Rightarrow$ R-type instructions except `add` → These instructions all require a 1 in $ALUOP_1$ for the ALU Decoder to produce the correct `ALUControl` signal
3. $ALUOP_0 \Rightarrow$ `beq` → The ALU would incorrectly add the registers rather than subtracting them before checking the *zero* flag. 
4. $MemWrite \Rightarrow$ `sw` → $WE$ will never be high, so the Data Memory can never be written.
5. $ImmSrc_1 \Rightarrow$ `beq` and `jal` → Will create incorrect immediates
6. $ImmSrc_0 \Rightarrow$ `sw` and `jal` → Will create incorrect immediates
7. $PCSrc \Rightarrow$ `beq` and `jal` → $PCPlus4$ will always be selected as $PCNext$ instead of the new $PCTarget$
8. $ALUSrc \Rightarrow$ `lw`, `sw`, and `addi` (and other I-type ALU instructions) → $SrcB$ for the ALU will incorrectly select $RD2$ instead of $ImmExt$

### Exercise 7.2

```ad-question
Suppose that one of the following control signals in the single-cycle 
RISC-V processor has a stuck-at-1 fault, meaning that the signal is always 1 regardless of its intended value. What instructions would malfunction? Why? Use the extended version of the single-cycle processor shown in Figures 7.15 and 7.16.
1. $RegWrite$
2. $ALUOP_1$
3. $ALUOP_0$
4. $MemWrite$
5. $ImmSrc_1$
6. $ImmSrc_0$
7. $PCSrc$
8. $ALUSrc$
```

### Exercise 7.11

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-0 fault, meaning that the signal is always 0 regardless of its intended value. What instructions would malfunction? Why? Refer to the multicycle datapath and control shown in Figures 7.27 and 7.45.
1. $ResultSrc_1$
2. $ResultSrc_0$
3. $ALUSrcB_1$
4. $ALUSrcB_0$
5. $ALUSrcA_1$
6. $ALUSrcA_0$
7. $ImmSrc_1$
8. $ImmSrc_0$
9. $RegWrite$
10. $PCUpdate$
11. $Branch$
12. $AdrSrc$
13. $MemWrite$
14. $IRWrite$
```

#### a) ResultSrc1

`ResultSrc1` controls which result is needed from a multiplexer. Specifically, it is used to choose between taking the `ALUresult` right away (`1`) or during the next clock cycle (`0`). This will make it such that most programs will fail during the fetch instruction. It will fail to take $PC+4$ and will instead put whatever was the output of the ALU into `PC`, which can either put the `PC` in the wrong place for all instructions (other than jump and branch instructions that do return true). This can cause the program counter to either go to a random location entirely or go out-of-bounds and crash the processor.

#### b) ResultSrc0

`ResultSrc0` controls if the result source is either taken from data memory or from the previous `ALUout`. In this case, it would fail during a load instruction. It needs to take the value from data memory so it can write back in the last clock. However, if the bit is stuck-low, it will write back garbage data from the previous `ALUresult` and put it into the destination register, making the *load instruction* unusable until it is fixed. `lw` not working can also mess up other instructions and lead to bad calculations as well (assuming memory is being used for that program).

#### c) ALUSrcB1

`ALUSrcB1` controls whether or not the ALU will take in a value from a register or a constant (+4) into it’s second value. Much like the `ResultSrc1` being stuck to zero, this signal will also greatly hurt the fetch clock. During fetch, the instruction would be taken in and $PC+4$ is calculated and is placed in the `PC` register. However, if `ALUSrcB1` is stuck-on-zero, it will fail to create $PC+4$ and will instead calculate $PC+RD2$. This will then be placed and taken into the `PC` register since PCWrite will be set to high during the fetch instruction. This will make it such that for all instructions but jump and successful branch instructions will randomly jump the program counter and lead to untested behavior or crashing.

#### d) ALUSrCB0

`ALUSrcB0` controls whether or not if either if a register value or the immediate is taken as the second operand for the ALU. This can be devastating as it prevents any immediate being used in the ALU during both the *decode* AND *execution* steps. For decode, `jal` and `beq` rely on the correct immediate to be read in so it knows where PC should jump to. However, without ALUSrcB0 working correctly, it will calculate $PC + RD2$ instead of $PC + imm$, which will make PC jump to a random spot or completely out of bounds. Similarly, it will not calculate the correct pointer for both the `lw` and `sw` instruction, which will make any memory operations a low chance of actually loading or storing the correct information in memory or causing a crash. Immediate-type instructions will also be wrong as they will not be able to take in the immediate for calculations. This will make it such that it will take $Rs1 \mbox{ op } Rs2$ instead of the immediate, which will also lead to incorrect calculations. Overall, this is the worst case so far when it comes to functionality in my opinion.

#### e) ALUSrcA1

`ALUSrcA1` controls if either the current PC or the `Rs1` is taken as input for the ALU. This will affect almost every single step in execution except `jal`. For the ALU-based instructions, it will not take the proper path and will make it that the first operand will *always* be PC instead of the expected `rs1`. For R-type or I-type, this means it will calculate $PC \mbox{ op } Rs2$ or $PC \mbox{ op } imm$, which will return an incorrect value. For `beq`, it will calculate $PC - Rs2$ instead, which will make it so it will branch at the incorrect times and can generate infinite loops. For `lw` and `sw`, it will calculate the incorrect pointer and either read bad memory or crash due to an out-of-bounds error. `jal` is the only instruction that will work properly as it never uses the first register when calculating either $oldPC +4$ or its jump location. 

#### f) ALUSrcA0

`ALUsrcA0` controls if either the current PC or the oldPC is used in calculations. Unlike the previous bit, this bit being stuck-at-zero will affect calculations in both the decode step and part of the execution step. For the decode step, it will calculate the pointer PC pointer for both `beq` and `jal` incorrectly by doing $PC + imm$ rather than $oldPC + imm$. This will lead it to be ahead by a single instruction if it does jump, which can lead to logic errors later on. Similarly, it will calculate $PC + 4$ rather than $oldPC + 4$ for `jal` during the execution step, which will save the incorrect return address being forward one too many instructions, which can be devastating depending on the circumstance.

#### g) ImmSrc1

`ImmSrc1` controls if either a store/load word immediate is taken or if a `beq`/`jal` immediate is taken. If it is stuck-on-zero, this would mean that it will always take a `lw` immediate if it was a branch instruction or a `sw` immediate when it is a `jal` instruction. This will lead to an error when it calculates the pointer for branching/jumping and could lead to either an out-of-bounds error or jump to a random spot in the program depending on how large the immediate should have been.

#### h) ImmSrc0

`ImmSrc0` controls the distinction between `lw` and `sw` immediates and `beq` and `jal` immediates. A stuck-at-zero error will cause errors for both store and jump instructions. For store, it will create an incorrect pointer that will dereference the wrong memory location, which can return garbage data into a register or even possibly go out of bounds. Similarly, `jal`’s pointer will be calculated as if it was a branch instruction, will will be even more incorrect than the previous pointer. This will lead to jump going to a random point in the instruction list, which will most likely lead to the program crashing.

#### i) RegWrite

`RegWrite` controls if the register file can take any values back and write them into the destination register. If this value is stuck-at-zero, this means that values can never be written back into the register file. This would make R-type and I-type arithmetic instructions as well as load word instructions work, but unable to save the value back. Similarly, `jal` will work as if it was just a jump instruction and will not save any value back into the return address, making it impossible to link back.

#### j) PCUpdate

`PCUpdate` determines if the `PC` register is able to take either $PC+4$ or a jumped/branched `PC` value. However, if this value is stuck-at-zero, this means `PC` can never update. This would lead to the same instruction being looped over and over again until this error is fixed.

#### k) Branch

The `branch` signal is placed into an AND gate along with the zero flag to determine if a branch instruction will be taken. If the branch signal is never high, this means that `beq` will never be taken. However, since this signal is ORed with the PCUpdate signal, `jal` would work normally fine. In most circumstances, this would turn all for/while loops into infinite loops and make a program run forever.

#### l) AdrSrc

`AdrSrc` is used to separate the instruction memory from data memory for load and store instructions. If this signal was stuck-at-zero, this would lead to catastrophic errors if `lw` or `sw` were ever called. For `lw`, it would calculate the proper pointer, but would instead use the pointer to the nextPC instead ($PC +4$). This would then write back the value of the next instruction into the register file instead of the expected data. Even more dangerous is the `sw` instruction. During the fourth clock cycle, it would take the value it would have written to the calculated pointer and would instead place the value it was going to store as the *next* instruction. This will lead to very interesting unexpected behavior based on what constant was going to be stored in the data memory.

#### m) MemWrite

`MemWrite` is used to control when the memory can be written back to. This will make it such that the `sw` instruction will never work properly. The previous clock cycles will always make the correct pointer and get the correct value to the `WD` wire and get the proper `Adr` to access the data memory, it can just not ever write to it because of the `MemWrite` being the main deciding factor if the memory is written to. 

#### n) IRWrite

`IRWrite` controls when the register between the instruction memory and the register file will save both the instruction and the value of `oldPC`. If this value does not work, it means that no instruction will ever be loaded, which will mean it will just continuously loop the last instruction that it was given while also changing `PC` by positive 4 or jumping around if it was a `beq` or `jal` instruction. This would ultimately lead to an out-of-bounds error and a crash.

### Exercise 7.12

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-1 fault, meaning that the signal is always 1 regardless of its intended value. What instructions would malfunction? Why? Refer to the multicycle datapath and control shown in Figures 7.27 and 7.45.
1. $ResultSrc_1$
2. $ResultSrc_0$
3. $ALUSrcB_1$
4. $ALUSrcB_0$
5. $ALUSrcA_1$
6. $ALUSrcA_0$
7. $ImmSrc_1$
8. $ImmSrc_0$
9. $RegWrite$
10. $PCUpdate$
11. $Branch$
12. $AdrSrc$
13. $MemWrite$
14. $IRWrite$
```

## Problem Type 3 (Critical Path)

### Notes

$$T_{c\_single} = t_{pcq\_PC}+t_{mem}+\max[t_{RFread} + t_{cntrl} + t_{ext} + t_{mux}]+t_{ALU} + t_{mem}+t_{mux} + t_{RFsetup}$$

$$T_{c\_multi}=t_{pcq} + t_{dec} + 2t_{mux}+\max(t_{ALU}, t_{mem})+t_{setup}$$

$$T_{c\_pipelined}= \max \begin{bmatrix} t_{pcq}+t_{mem} +t_{setup} \\ 2(t_{RFread}+t_{setup}) \\ t_{pcq} + 4t_{mux} + t_{ALU} + t{ALU} + t_{AND-OR} + t_{setup} \\ t_{pcq} + t_{mem} + t_{setup} \\ 2(t_{pcq} + t_{mux}+t_{RFwrite}) \end{bmatrix}$$

### Exercise 7.7

```ad-question
Your friend is a crack circuit designer. She has offered to redesign one of the units in the single-cycle RISC-V processor to have half the delay. Using the delays from Table 7.7 on page 415, which unit should she work on to obtain the greatest speedup of teh overall processor, and what would the cycle time of the improved machine be? Explain why.
```

To increase the performance most, the crack circuit designer should speed up the **Memory Unit**. Such that:

$$T_{c\_new}=t_{pcq\_PC} + 2t_{mem} + t_{RFread}+t_{ALU}+t_{mux}+t_{RFsetup}$$
$$= 40 + 2(100) + 100 + 120 + 30 + 60 = \boxed{550ps}$$

### Exercise 7.8

```ad-question
Consider the delays given in Table 7.7 on page 415. Ben Bitdiddle builds a prefix adder that reduces the ALU delay by 20ps. If the other element elays stay the same, find the new cycle itme of the single-cycle RISC-V processor and determine how long it takes to execute a benchmark with 100 billion instructions
```

### Exercise 7.19

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the multicycle RISC-V processor to be much faster. Using the delays from Table 7.7 on page 415, which unit should jshe work on to obtain the greatest speedup of the overall processor? How fast should it be? (Making ti faster than necessary is a waste of your friend's effort.) What is the cycle time of the improved processor? Explain and show your work.
```

The crack circuit designer should speed up the **Memory Unit** and should make it equal to the delay of the ALU ($120ps$). The cycle time would then be as follows:

$$T_{c\_ new} = t_{pcq} + t_{dec} + 2t_{mux}+\max(t_{ALU}, t_{mem})+t_{setup}$$
$$=40+25 + 2(30) + \max(120, 120) + 50$$
$$t_{c\_new} = 295ps$$

### Exercise 7.21

```ad-question
Suppose the multicycle RISC-V processor has the component delays given in Table 7.7 on page 415. Alyssa P. Hacker designs a new register file that has 40% less power but twice as much delay. Should she switch to the slower but lower power register file for her multicycle processor design? Explain why.
```

Alyssa should switch to the slower but lower power register file. By doubling the delay of the register file, it still does not place it on the critical path. This means that power will be saved without affecting the cycle time.

Specifically, the path that includes the register files would require the following constraints: 

$$T_{c\_multi\_RF} = t_{pcq} + t_{RFread} + t_{setup}$$
$$T_{c\_multi\_RF} = (40+100+50)=190ps$$

With twice as much register file (RF) delay, this constraint would be:

$$T_{c\_multi\_RF} = (40+2 \times100+50)=290ps$$

THIS is still less than the $375ps$ per cycle time required by the path through memory!

### Exercise 7.39

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the pipelined RISC-V processor to be much faster. Using the delays from Table 7.7 on page 415, which unit should she work on to obtain the greatest speedup of the overall processor? How fast should it be? (Making it faster than necessary is a waste of your friend's effort.) What is the cycle time of the improved processor? Explain your answers and show your work.
```


![[Pasted image 20241101114404.png]]

Currently, the critical path is limited by the following:

$$T_{c\_pipelined}= \max \begin{bmatrix} t_{pcq}+t_{mem} +t_{setup} \\ 2(t_{RFread}+t_{setup}) \\ t_{pcq} + 4t_{mux} + t_{ALU} + t_{AND-OR} + t_{setup} \\ t_{pcq} + t_{mem} + t_{setup} \\ 2(t_{pcq} + t_{mux}+t_{RFsetup}) \end{bmatrix}$$
$$= \begin{bmatrix} 290ps \\ 300ps \\ 350ps \\ 290ps \\ 260ps \end{bmatrix}$$

Out of all the units, improving the $t_{mux}$ would be the best since it would speed up critical path while still speeding up another path. If it were to be improved to work about twice as fast ($17.5ps$), the critical path will be improved to $300ps$ and matches the critical path of one other sections of the processor. It also improves the speed of the write back part of the pipeline.

### Exercise 7.40

```ad-question
Consider the delays from Table 7.7 on page 415. Now, suppose that the ALU were 20% faster. Would the cycle time of teh pipelined RISC-V processor changed? What if the ALU were 20% slower? Explain your answers and show your work.
```

## Problem Type 4 (Average CPI with Changes to Benchmark)

### Exercise 7.35

```ad-question
How many cycles are required for all pipelined RISC-V Processor to issue all of the instructions for the program in Exercise 7.31? What is the CPI of the processor on this program
```

It takes **seven** clocks to run *six* instructions:

$$\mbox{CPI} = \mbox{\# of clock cycles} / \mbox{\# of Instructions}$$
$$\mbox{CPI} = (7)/(6) = 1.17 \mbox{ CPI}$$

### Exercise 7.34

```ad-question
How many cycles are required for the pipelined RISC-V processor to issue all of the instructions for the program in Exercise 7.30? What is the CPI of the processor on this program?
```

```ad-important
When caring about CPI, we do not care about latency, but when the last instruciton was fetched
```

It takes **eight** clock cycles to issue all the instructions. Number of instructions = 6

$$\mbox{CPI} = 8 \mbox{ clks} / 6 \mbox{ instructions} = 1.33 \mbox{ CPI}$$

## Problem Type 5 (Pipeline Hazard Diagrams)

### Notes

**Control Hazards**: If a branch is taken: Scratch the previous two instruction F and D THEN IF and jump to the next instruction and fetch them. If not, continue as is:

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.31.41.excalidraw]]

### Exercise 7.32

```ad-question
In a diagram similar to Figure 7.57, show the forwarding and stalls needed to execute the following instrucitons
```

```
addi s1, zero, 11 # s1 = 11
lw s2, 25(s1) # s2 = memory[36]
lw s5, 16(s2) # s5 = memory[s2+16]
add s3, s2, s5 # s3 = s2 + s5
or s4, s3, t4 # s4 = s3 | t4
and s2, s3, s4 # s2 = s3 & s4
```

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.14.11.excalidraw]]

### Exercise 7.33

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.31 on the pipelined RISC-V Processor.
```

```
addi s1, zero, 52
addi s0, s1, -4
lw  s3, 16(s0)
sw  s3, 20(s0)
xor s2, s0, s3
or  s2, s2, s3
```

![[Ethan Berei - Computer Architecture Homework 6 2024-11-04 12.55.31.excalidraw]]

### Exercise 7.33a

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.29 on the pipelined RISC-V Processor
```

```
xor s1, s2, s3
addi s0, s3, -4
lw s3, 16(s7)
sw s4, 20(s1)
or t2, s0, s1
```

### Exercise 7.33b

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.29 on the pipelined RISC-V Processor
```

```
addi s1, zero, 11
lw s2, 25(s0)
add s3, s3, s4
or s4, s1, s2
lw s5, 16(s2)
```
