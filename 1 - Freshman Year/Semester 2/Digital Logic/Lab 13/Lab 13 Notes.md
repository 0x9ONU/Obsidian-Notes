Date: 2nd May 2023
Date Modified: 2nd May 2023
File Folder: Lab 13
#DigitalLogic #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Part 1 - Array Multiplier in hardware
- Part 2 - Serial Multiplier in hardware

```

# Part 1 - Pipelined Parrallel Array Multiplier in Hardware

```ad-summary
color: 45, 250, 28
It takes in 8 bits from the mulitplier and 8 bits form the multiplicand and does the following:
- Adds them together using an array mutliplier as a 16 bit output
- All the results from the array multiplier are put into a buffer that will only send the output out when the array multiplier are finished
- The output is then sent to the Sign and Magnitude converter and is then sent into the display hardware and displayed on the seven segment display 
```

```ad-note
- The **Throughput** of an array mutlplier is one while the **latency** is two
- Uses a high level Sign and Magnitude converter
```

## How many flip flops are needed?

$$ 20 Display + 16 buffer = 36 flip flops$$

# Part 2 - Serial Multiplier in Hardware

```ad-summary
color: 190, 100, 150
- The 8 bits from the multiplier and the multiplicand are sent into the serial multiplier
- the 16 bits are outputed all at once into the sign and magnitude converter
- Then the output is sent to teh display to be put onto the seven segment display
```

```ad-note
color: 255, 255, 0
- An extra buffer is **not** needed for a Serial Multiplier as all the bits of the calculation are not avaiable until the last clk
- 19 clock cycles for Moore. 11 clock cycles for Mealy
- Uses a low level Sign and Magnitude converter
```

## How many flip flops are needed?

$$20 Diplay + 16 buffer + 5 State Machine = 41 Flip Flops$$

# Discussion Topic Answers

1. What is the difference between pipelined parallel implemntation and serial implmentation?
	1. Uses a array multiplier has a buffer in the middle. The inputs can be changed on every clock cycle, but there is latency so you must wait until the buffer has gotten all of its values first
	2. You must provide the inputs and press and release the start button. Takes it an x amount of clocks cycles based on Moore or Mealy. They can only be changed once the multiplier is finished
2. Question 2 answered in 
3. Why the Mealy state machine cheaper?
	1. For Moore state machine, you have to have 3 states per bit due to it only being able to give an output in a state.
	2. For Mealy, you only need 1 state per bit because of the going to the next state and the output being tied to one.
4. Why is the Moore state machine faster, but cost more clock cycles?
	1. Due to $T_{clk} > T_{hold} + T_{setup} + T_{combonational}$
	2. Mealy state needs more time to update the flip flops due to Mealy needing to update the state *AND* deciding what the output is in one clock cycle.
	3. Thus, the $T_{combinational}$ for Moore is **always** smaller than Mealy.
	4. Thus, the minimum period for a Moore state machine is much less than a Mealy, meaning it can be clocked faster.
	5. Even though Mealy has less states, it can sometimes take longer due to it having to be able to clocked slower.
