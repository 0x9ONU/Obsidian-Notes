Date: 4th September 2024
Date Modified: 4th September 2024
File Folder: Week 2
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Chapter 5: Hardware Trojan

```

# Hardware Trojan

## Overview

![[Pasted image 20240904143353.png]]

A malicious addition or modification to the existing circuit elements
- Change the functionality
- Reduce the reliability
- Leak valuable information

## IC/IP Trust Problem

Chip design and fabrication has become increasingly vulnerable to malicious activities due to the world-wide IC chain

![[Pasted image 20240904143641.png]]

![[Pasted image 20240904143715.png]]

```ad-warning
These companies are located all over the world and there is often no control in the design process
```

![[Pasted image 20240904143752.png]]

## Hardware Trojan Examples

![[Pasted image 20240904144009.png]]

```ad-note
The AND gate above will function normally, UNLESS the trigger happens
```

| A   | B   | AND | AND w HJ |     |
| --- | --- | --- | -------- | --- |
| 0   | 0   | 0   | 1        |     |
| 0   | 1   | 0   | 0        |     |
| 1   | 0   | 0   | 0        |     |
| 1   | 1   | 1   | 1        |     |


![[Pasted image 20240904144016.png]]

```ad-note
Happens after a sequence of effects, much like how a state machine works.
```

However, in this case, it is counting up and will then activate the XOR gate to invert the input.

![[Pasted image 20240904143940.png]]

![[Pasted image 20240904143929.png]]

*MOLES* will add some way to add a side-channel attack:

```ad-example
In the MOLE above, it writes the key with a PRNG and produces the "random" signal to a transmitter. Then, the signal can be taken from the transmitter and the inverse of the PRNG can be taken to get the hardware key
```


```ad-note
You are inserting some error into a system.
```

