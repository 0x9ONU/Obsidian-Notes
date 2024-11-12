
## Exercise 7.31

```ad-question
The pipelined RSIC-V Processor is running the following code snippet. Which registers are bieng written and which are being read on the fifth cycle? Recall that the pipelined RISC-V processor has a Hazard Unit. You may assume a memory system that returns the result within one cycle.
```

```
addi s1, zero, 52
addi s0, s1, -4
lw  s3, 16(s0)
sw  s3, 20(s0)
xor s2, s0, s3
or  s2, s2, s3
```

On the fifth cycle of the process, all five of the pipelined modules are being used. Firstly, the instruction fetch block is grabbing the fifth instruction (`xor s2, s0, s3`) as expected with no stalls. Secondly, the `sw` instruction is being decoded and calculates a garbage jump pointer. Thirdly, the execution stage is currently calculating the immediate for the `lw` function by doing $\mbox{Target} =s0 + 16$. Then, `addi` skips through its memory access stage. And finally, the first instruction (`addi`) writes back to the register file.

## Exercise 7.33

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.31 on the pipelined RISC-V Processor.
```

![[Ethan Berei - Computer Architecture Homework 6 2024-11-04 12.55.31.excalidraw]]

## Exercise 7.35

```ad-question
How many cycles are required fo rthe pipelined RISC-V Processor to issue all of the instructions for the program in Exercise 7.31? What is the CPI of the processor on this program?
```

It takes **eight** clocks to run *six* instructions:

$$\mbox{CPI} = \mbox{\# of clock cycles} / \mbox{\# of Instructions}$$
$$\mbox{CPI} = (8)/(6) = 1.33 \mbox{ CPI}$$

## Exercise 7.39

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the pipeliend RISC-V processor to be much faster. Using the delay table, which unit should she work on to obtian the greatest speedup of the overall processor? How fast should it be? What is the cycle time of the improved processor? Explain your answers and show your work.
```

![[Pasted image 20241101114404.png]]

Currently, the critical path is limited by the following:

$$T_{c\_pipelined}= \max \begin{bmatrix} t_{pcq}+t_{mem} +t_{setup} \\ 2(t_{RFread}+t_{setup}) \\ t_{pcq} + 4t_{mux} + t_{ALU} + t_{AND-OR} + t_{setup} \\ t_{pcq} + t_{mem} + t_{setup} \\ 2(t_{pcq} + t_{mux}+t_{RFsetup}) \end{bmatrix}$$
$$= \begin{bmatrix} 290ps \\ 300ps \\ 350ps \\ 290ps \\ 260ps \end{bmatrix}$$

Out of all the units, improving the $t_{mux}$ would be the best since it would speed up critical path while still speeding up another path. If it were to be improved to work about twice as fast ($15ps$), the critical path will be improved to $290ps$ and matches the critical path of two other sections of the processor. It also improves the speed of the write back part of the pipeline.