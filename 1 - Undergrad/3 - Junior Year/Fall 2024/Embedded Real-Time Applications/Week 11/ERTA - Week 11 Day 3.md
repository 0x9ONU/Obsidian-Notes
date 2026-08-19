Date: 8th November 2024
Date Modified: 8th November 2024
File Folder: Week 11
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Real-Time Systems Day 2

```

# Real-Time System Day 2

## Interrupt Vectors for I/O Ports

**Layout**

| Vector                    | Number | IRQ | ISR name                             | NVIC priority                                                 | Priority                                                                  |
| ------------------------- | ------ | --- | ------------------------------------ | ------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Location of vector in ROM |        | ID  | Name of the Interrupt service called | Points to which priority register has the correct value (row) | Points to where in each priority register have the correct value (column) |
**NVIC**: System prioritizing and handling interrupt requests

**IRQ**: Interrupt Request

**ISR**: Routine that performs requested service for a given interrupt.

```ad-important
Check paper handout for more information
```

## Configuring I/O Triggered Interrupts

```ad-question
What are the steps for configuring an I/O triggered interrupt for P1.4
```

**Steps**:
1. Running `Enable_Interrupt()` (sets $I=0$)
2. Set `NVIC 35` to enable (set up bit 35 in NVIC for port 1)
3. Arm `IE` bit 4 (pin 4) for port 1 so it can request interrupts
4. Set up hardware trigger (IFG bit set for bit 4)
	- Set Priority so it would only be delayed by an interrupt of higher priority

## Single Switch Interface

**C-Code**
```c++
void EdgeTrigger_Init(void) {
	FallingEdges4 = 0;
	P1->SEL0 &= ~0x10;
	P1->SEL1 &= ~0x10; //Set P1.4 to GPIO
	P1->DIR &- ~0x10;  //Set P1.4 to input
	P1->REN |= 0x10;   //Enable pullup resistor
	P1->OUT |= 0x10;  //Charges P1.4
	P1->IES |= 0x10;   // Set P1.4 to a falling edge event
	P1->IFG  &= ~0x10 //Clear Flag 4
	P1->IE   |= 0x10  // Aarm interrupt on P1.4
	NVIC->IP[8]=(NVIC->IP[8]&0x00FFFFFF)|0x40000000; //Set prior. 2 P1.4
	NVIC->ISER[1] = 0x00000008; //enable Interrupt 35
	EnableInterrupts();
}
```

```ad-question
How would you set port 1 to priority 2 using C code?
```

We know that the PORT1 handler is on the NVIC_IPR8 and has the priority bits of 31→29.
```c++
NVIC->IP[8]=(NVIC->IP[8]&0x00FFFFFF)|0x40000000;
```
`IP[8]` Dereferences the correct row/register out of the NVIC

`&0x00FFFFFF` keeps the rest of the bits alone, but sets the bits we want to change (bits 31 through 29 plus its *padding*) low!

`|0x40000000` sets the the the second to highest bit high, which becomes `010x`, and makes a priority of two!

```ad-important
The spaces in-between are used to store other things in the register. the bits before the priority numbers is a throw-away bits.
```

### Single Switch Interface ISR

**C Code**

```c++
void PORT1_IRQHandler(void) {
	P1->OUT ^= 0x01;
	P1->OUT ^= 0x01;
	P1->IFG &= 0x10; //clear flag4
	FallingEdges4 = FallingEdges4+1;
	P1->OUT ^= 0x01;
}
```

### `IE` and `IES` Table

| DIR | SEL0 SEL 1 | IE  | IES | Port Mode                               |
| --- | ---------- | --- | --- | --------------------------------------- |
| 0   | 00         | 0   | 0   | Input, rising edge trigger              |
| 0   | 00         | 0   | 1   | Input, fallling edge trigger            |
| 0   | 00         | 1   | 0   | Input, rising edge trigger, interrupt   |
| 0   | 00         | 1   | 1   | Input, falling edge trigger, interrupt. |

