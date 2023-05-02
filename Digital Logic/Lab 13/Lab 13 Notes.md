Date: 2nd May 2023
Date Modified: 2nd May 2023
File Folder: Lab 13
#DigitalLogic

```ad-abstract
title: Today's Topics
collapse: open

- Part 1 - Array Multiplier in hardware
- Part 2 - Serial Multiplier in hardware

```

# Part 1 - Pipelined Parrallel Array Multiplier in Hardware

#comebacklater Get graph here and recreate later

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

#comebacklater Get graph here and recreate later

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






