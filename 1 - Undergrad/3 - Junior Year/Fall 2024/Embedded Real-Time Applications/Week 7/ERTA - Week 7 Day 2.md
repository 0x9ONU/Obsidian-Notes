Date: 9th October 2024
Date Modified: 9th October 2024
File Folder: Week 7
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Debugging

## Debugging Theory

Every programmer is faced wit the need to debug and verify the correctness of his or her software

```ad-summary
A debugging instrument is hardware or software used for the purpose of debugging
```

**Hardware**:
- Logic Analyzer
- Oscilloscope

**Software-Level Tools**:
- Simulators
- Monitors
- Debuggers
- Manual tools like inspection and print statements.

## Testing Method

**Black Box**: Simply observing the inputs and outputs without looking inside.
- Debugs the functionality

**White Box**: Allows you to control and observe the internal workings of a system
- A common mistake is to just do black box testing
- Effective debugging uses both. One must always start with black-box testing by subjecting a hardware or software module to appropriate test-cases

![[images 2.png]]

## Stabilization

The *first* step in debugging

```ad-summary
Stabilized by creating a *test rotuine that fixes* all the inputs. In this way, we cna reproduce the exact inputs over and over again.
```

Allows precise measurements on the effects the inputs have on the outputs.

```ad-important
Prevents irrelevant input fluctuating uncontrollably.
```

### Modular Programming

Define a fixed set of inputs to test, run the system on these inputs, and record the outputs.

**Advantages**:
- Allows for modular debugging

## Intrusiveness

Most users use manual methods for locating and correcting program errors:
- Desk-checking
- Print statements

```ad-warning
A real-time system cannot be debugged with simple print statements
- Requires too much time to execute for embedded systems
- This is *too intrusive*
```

```ad-summary
The measure to which the debugging itself affects the system being measured
```

Try to be as negligible as possible to minimize intrusiveness

**Measure of Intrusiveness**: $t/\Delta t$
- The fraction of the time consumed by the process of debugging itself
- $t$: Time to execute the debugging instrument
- $\Delta t$: Average time between execution of the debugging tool
- Try to *minimize*

### Examples

`GPIO_PORTF_DATA_R ^= 0x02` ← Toggles the 2nd bit on and off
- *Heartbeat monitor* - often used to determine if your code crashed or not
- Minimally intrusive! If it runs every 1ms, it has a ratio of 1/1000 for a 80Mhz clock

#### Dumps

Memory dumps dump strategic information into an array at run time.

**Advantage**: The debugger allows you to visualize memory even when the program is running

*Small Intrusiveness*
- Similar usage as printf
- Save into array
- Observe later with debugger


```c
#define SIZE 100
uint8_t P1Buf[SIZE];
uint8_t P2Buf[Size];
uint32_t I;
void Dump(void) {
	if (I < SIZE) {
		P1Buf[I] = P1-> IN;
		P2Buf[I] = P1-> OUT;
		I++;
	}
}
```
**Disadvantages**: They can generate a tremendous amount of information
- Has to often be *filtered* to the instrument to reduce this overhead
- If we suspect the error occurs when another variable gets large, we could add a filter that saves in the array only when a condition is true.

*Continuous*
- Saves the last 32 values
- Wrap index
```c
uint16_t Buf[32];
uint32_t I=0;
void Record(uint16_t x) {
	Buf[I] = x;
	I = (I + 1) % 32;
}
```

*Filtered*
- Save only on certain conditions
- Reduces the volume of data to observe
```c
void Record2(uint16_t x) {
	if(P1->IN&0x01) {
		Buf[I] = x;
		I = (I+1)%32
	}
}
```

## Test Case Selection

When a system has a *small number* of inputs, test ALL of them

However, when a system is large, you need to select a set of inputs. Select them based on:
- Near the extremes and in the middle
- Most typical of how our clients will properly use the system
- Most typical of how our clients will improperly attempt to use the system
- Using a random number generator (ex. Latin Hypercube)

## Version Control

Using tools like Git can help debug a system
- You make commits whenever your code is working
- Whena bug arises, youc an look back at your previous working commit to find out what went wrong
- If unsure which commit caused the error, a tool like git bisect can help you search for the errant commit.




