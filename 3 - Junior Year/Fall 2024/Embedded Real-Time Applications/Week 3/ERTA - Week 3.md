Date: 9th September 2024
Date Modified: 9th September 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Input/Output Concepts

```

# For Lab Tomorrow…

Pre-read the following:
- Directive
- Function Calls
- Review the op codes from the slides

# Input/Output Concepts

## Input Output Examples

![[Pasted image 20240909130519.png]]

**Large Diversity**
- Many widely differering device types
- Devices whtin each type also differs

**Speed**
- Varying, often slow access & transfer compared to CPU
- Some device-types require very fast access & transfer

**Access**
- Sequential vs. random
- Read, write, read & write

```ad-note
RAM/random means that you can choose any "chunk" of memory to read or write to
```

```ad-warning
Sequential MUST be read one item at a time
```

## Types of I/O

**Digital**
- GPIO: General Purpose Input/Output
- UART: Universal asynchronous receiver/transmitter
- SPI: Serial Peripheral Interface
- I2C: Inter-Integrated Circuit

**Timer**:
- TimerA: Periodic interrupts, input capture, output compare
- Timer32: Periodic interrupts

**Analog**:
- ADC: 14-bit analog to digital converter
- Analog Comp: Compare two analog signals

## I/O Port Registers

I/O Ports are *memory-mapped*: Simply read from or write to a memory address to access I/O ports

However, I/O ports behave differently compared to memory bytes
- Some can only be read
- Others can only be written
- Some bits of a port cannot be modified
- Some can only be set

Each I/O port has several registers for initialization, configuration, and data exchange.

```ad-important
A port is group of I/O pins
```

## GPIO Overview

- Exists on all I/O pins
- Can be sued for 1-bit Input or Output
- Can interrupt the processor
- *Cannot* source (or sink) significant current.
- GPIOs are simple but extremely powerful

### Logic Voltage Levels

**Active High**
- Logic `1` = High voltage
- Logic `0` = Low voltage

**Active Low**
- Logic `1` = Low voltage
- Logic `0` = High voltage

### Pull Up/Down Resistors

```ad-question
Assuming negative logic (low is True), what would happen when:
- $A$ is switched on?
- What's $A$'s voltage?
- What's the voltage of $A$ after switching it off?
- Set $A$ and $B$ to $5V$ by default, but what is the problem?
- How do we fix this?
```

![[Pasted image 20240909132353.png]]

If $A$ was switched on, it would make $A$’s voltage zero, since it is grounded.

If we switch is back off, we do not know what voltage it is. It has the potential to “float"

![[Pasted image 20240909132900.png]]

It shorts!!!!

```ad-important
We can fix this wil a pull-up resistor
```

![[Pasted image 20240909132957.png]]

**Open** means around $5V$ and **Closed** means $0V$

### Pull-Down Resistor

![[Pasted image 20240909133138.png]]

### Example with a MCU

**Negative Logic** $s$
- Pressed, $0V$, False
- Not pressed, $3.3V$, True

![[Pasted image 20240909133338.png]]

**Positive Logic** $t$
- Pressed, $3.3V$, True
- Not Pressed, $0V$, False

![[Pasted image 20240909133411.png]]

### LaunchPad Switches and LEDs

![[Pasted image 20240909133643.png]]

The Switches on the LaunchPad:
- Attached to port pins $X$ and $Y$
- Negative Logic
- Require internal pull-up

The LEDs on the LaunchPad:
- Attached to port points $Z$
- Positive Logic

## Setting Bits Selectively

```ad-question
title: Problem Statment
Use the **OR** operation to set bits `1` and `0` of a register while the other six bits remain constant.
```

**C-Code**
```c
GPIO_PORTD_DIR_R |= 0x03; // PD1, DP0 outputs
```

**Assembly**

```armasm
LDR R0, =GPIO_PORTD_DIR_R
LDR R1, [R0]              ; read previous value
ORR R1, R1, #0x03         ; set bits 0 and 1
STR R1, [R0]              ; Write it back to update
```

![[Pasted image 20240909134327.png]]

```ad-note
The best practices is to just modify the bits that you know/need to be modified
```

## Toggling Bits Selectively

```ad-important
The *Exclusive Or* operation can be used to toggle bits.
```

**C Code**

```c
GPIO_PORTD_DATA_R ^= 0x80 ; /* Toggle PD7 */
```

**Assembly**

```
LDR R0, =GPIO+PORTD_DATA_R
LDR R1, [R0]      ; read port D
EOR R1, R1, #0x80 ; toggle bit 7
STR R1, [R0]      ; Update
```
## I/O Ports

### Input Only Port

An **Input only port** (read only) allows the software to read external digital signals
- Tristate driver sends data to processor during read cycle
- 2.0 to 5.0 volts = high voltage
- Not found on MSP432

```ad-note
A Tristate driver bridges an input and an output when it receives a true input
```

### Output Only Port

Output-only port outputs data on data bus:
- A write cycle to the port address will affect the values on the output pins
	- Recorded in array of flip-flops, which is triggered with a write signal
- You can technically *read* from this output-only port
	- Triggered by the tri-state driver
	- Returns the last written state on the flip-flops
- Not found on MSP432

### Bi-Directional I/O Ports

```ad-note
To make the microcontroller more marketable, most ports can be software-specified to be either inputs or outputs
```

Each digital port point has a direction bit. This means some pins on a port may be inputs while others are outputs.

**Direction Registers** determine whether a pin is an input or an output
- Direction initialized on start up

| Direction Bit | Port Behavior       |
| ------------- | ------------------- |
| 0             | Behaves like input  |
| 1             | Behaves like output |

```ad-note
It is like an output only port, but it also includes a another tri-state driver and another flip flop to swap between the modes
```

## MSP432 I/O

### MSP432 GPIO Input Initialization

```ad-note
The following C++ code is used to initialize the second pin on port 1. We have an object P1 for Port2
```

**Example Code**
```c++
//Make P1.1 an input
void SW1_Init(void) {
	P1->SEL0 &- ~0x02; // Select bit one
	P1->SEL1 &= ~0x02; // Select bit two
	P1->DIR &= ~0x02;  // Direction Register
}
```
$0\mbox{x}02 \equiv b00000010$
~$0\mbox{x}02 = b11111101$
Then, take the and to get…:
$$C_7C_6C_5C_4C_3C_20C_0$$

```ad-important
All of these operations sets the second bit to zero
```

```ad-summary
`Py->DIR` is `0` on input, `1` if output
`Py->SEL0` and `Py->SEL1`
```

| PxSEL1 | PxSEL0 | I/O Function                          |
| ------ | ------ | ------------------------------------- |
| 0      | 0      | General Purpose I/O is selected       |
| 0      | 1      | Primary modulo function is selected   |
| 1      | 0      | Secondary module function is selected |
| 1      | 1      | Tertiary module funciton is selected  |

### MSP432 GPIO Input Reading

```c++
//Read form P1.1

//Code the Long Way 
unit8_t Sw1 (void) {
	unit8_t data;
	// Read from port
	data = P1->IN;    // All 8 pins on the port
	// Select bits
	data = data&0x02;
	return data;
}

//Code the nerd way
unit8_t Sw1(void) {
	//read and select
	return P1->IN&0x02;
}
```
```ad-example
`data` = $d_7d_6d_5d_4d_3d_2d_1d_0$
`0x02` = $00000010$
\-\-\-\-\-\-
`data` = $000000d_10$
```

```ad-important
We use the `&0x02` to mask the unimportant bits
```

### MSP432 GPIO Output Initalization

```c++
//Make P1.0 an output
void LED_Init(void) {
	P1->SEL0 &= ~0x01;
	P1->SEL1 &= ~0x01;
	P1->DIR |= 0x01;   //Sets the first bit to high
}
```
### MSP432 GPIO Pin Output

```c++
void LED(unint8_t new_bit) {
	unit8_t old;
	old = P1->OUT;
	old = old&(~0x01);     //Sets ONLY the first bit to 0
	new_bit = new_bit|old; //
	P1->OUT = new_bit;
}
```
`new` = $a_7a_6a_5a_4a_3a_2a_1a_0$
`old` = $b_7b_6b_5b_4b_3b_2b_1b_0$


