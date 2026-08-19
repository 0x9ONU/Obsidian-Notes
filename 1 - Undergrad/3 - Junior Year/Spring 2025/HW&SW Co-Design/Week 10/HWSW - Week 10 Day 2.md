Date: 4th April 2025
Date Modified: 4th April 2025
File Folder: Week 10
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Sequential Circuits

```ad-summary
- Have memory
- Their outputs depned on both current and previous inputs
- Using the combinational circuits developed so far, sequeintal circuits can be built using latches and flip-flops
```

## Basic Layout of a Sequential Circuit

Have a clock, `clk`, and a data input, $D$ and produce and output, $Q$

### D-Latch
- Transparent when $CLK = 1$, meaning that $Q$ follows $D$
- Opaque when $CLK = 0$, meaning $Q$ retains its previous value and ignores changes in $D$

![[Pasted image 20250404103403.png]]

Uses a CMOS to create a positive-level-sensitive D latch
- 2-input mux and two inverters
- Chooses $D$ or old $Q$

![[Pasted image 20250404103511.png]]

*Edge-Triggered Flip Flop*
- Copies $D$ to $Q$ on the rising edge of $CLK$
- Remembers its old value at other times

```ad-note
By combining two level-sensitive latches, we construct the edge-triggered flip-flop
```

![[Pasted image 20250404103547.png]]

![[Pasted image 20250404103626.png]]

## Race Condition

Back-to-back flops can malfunction from *clock skew*
- Second flip-flop fires late
- Sees first flip-flop change and captures its result
- Called *hold-time failure* or *race condition*

![[Pasted image 20250404103714.png]]

```ad-important
Can be prevented by **Nonoverlapping Clocks**
- As long as nonoverlap exceeds clock skew
- Industry manages skew more carefully instead

![[Pasted image 20250404103754.png]]
```

### Types of Clock Skew and Causes

**Positive Clock Skew**: The clock arrives later at the destination register than at the source register

**Negative Skew**: The clock arrives earlier at the destination register than at the source register

*Factors for clock skew*:
1. **Unequal Wire Delays**: Different trace lengths and routing on the PCB or chip lead to differences in clock arrival times 
2. **Different Loading Conditions**: Variations in the capacitance of the clock tree branches cause differing propagation delays.
3. **Process Variations**: In VLSI and FPGA implementations, slight differences in manufacturing processes can introduce timing inconsistencies.
4. **Temperature Variations**: Different parts of the circuit may operate at different temperatures, affecting clock signal propagation.
5. **Jitter**: Variations in the clock source can cause uncertainty in clock transitions.

*Effects of Clock Skew*:
1. **Setup Timing Violation**
	- If the clock arrives too late at the destination register, the data may not be latched in time
	- This results in the next stage of logic using incorrect or old data
2. **Hold Timing Violation**
	- If the clock arrives too early at the destination register, data may be latched before it stabilizes
	- This causes metastability or incorrect data capture
3. **Clock Domain Crossing Issues**:
	- If different parts of a design operate on skewed versions of a clock, synchronization issues can occur

