Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Real-Time Systems Day 3

```

# In-Class Exercise

## Part 3: Setting Priorities in Tabular Format

```ad-question
Setup the following ports for the given scenarios in C code. Use hex, binary, or decimal.
```

*Scenario 1*: Arm Port `1.2` to raise an interrupt if there’s a falling edge trigger on the port.

```c++
P1->SEL0 &= ~0x04 //GPIO
P1->SEL1 &= ~0x04
P1->DIR  &= ~0x04 //Input

P1->IE   |= 0x04  // Interrupts on
P1->IES  |= 0x04  // Falling edge
```

*Scenario 2*: Arm Port `2.2` to set IFG to 1 (but not interrupt) if there is a rising edge trigger on the port

```c++
P2->SEL0 &= ~0x04 //GPIO
P2->SEL1 &= ~0x04
P2->DIR  &= ~0x04 //Input

P2->IE   &= ~0x04 // Interrupts off
P2->IFG  &= ~0x04 // Clear IFG flag
P2->IES  &= ~0x04 // Rising Edge
```

*Scenario 3*: Arm Port `3.2` to set IFG to 1 and interrupt if there is a falling edge trigger on the port

```c++
P3->SEL0 &= ~0x04
P3->SEL1 &= ~0x04
P3->DIR  &= ~0x04

P3->IE   |= 0x04  // Interrupts on
P3->IFG  &= ~0x04 // Clear IFG Flag
P3->IES  |= 0x04  // Falling Edge
```

*Scenario 4*: Arm Port `4.2` to set IFG to 1 (but not interrupt) if there is a falling edge trigger on the port

```c++
P4->SEL0 &= ~0x04
P4->SEL1 &= ~0x04
P4->DIR  &= ~0x04

P4->IE   &= ~0x04 // Interrupts off
P4->IFG  &= ~0x04 // Clear IFG Flag
P4->IES  |= 0x04  // Falling edge
```
# Real Time Systems Day 3

## Two Switch Interface

Two ways to organize a two-switch ISR:
1. *Polling* + Interrupt Approach
2. Pure Interrupt Approach (Like the previous example)

```ad-summary
Polling means manually checking if a pin is high or low!
```

There are two possibilities of writing an ISR for two switches:
- They are on separate ports
- They are on the same port

```ad-important
This creates four possibilites to write with.
```

### Polling + Same Port

```c++
//Happens every 10 ms
void Poll(void) {
	if(P6->IN&0x04) {
		SW1 = 1;     //Global flag variable
	}
	if(P6->IN&0x08) {
		SW2 = 1;
	}
}

int main(void) {
	Clock_Init48MHz();
	P6->DIR &= ~0x0C;
	TimerA2_Init(&Poll, 5000);
	EnableInterrupts();
	while(1);

}
```
### Vectored + Different Port

```c++
P5->SEl0 &= ~0x08;
P5->SEL1 &= ~0x08;
P5->DIR  &= ~0x08;
P5->IES  &= ~0x08;
P5->IFG  &= ~0x08;
P5->IE   |=  0x08;
NVIC->IP[9](NVIC->IP[9]&0x00FFFFFF)|0x40000000;
COME BACK LATER!!! NVIC->ISER[1] = 0x00000080; //enable Interrupt 39
//Repeat for second pin on different port


void PORT5_IRQHandler(void) {
	P5->IFG &= ~0x08; // Rest IFG
	SW1 = 1;
}

void PORT6_IRQHandler(void) {
	P6->IFG &=- ~0x08;
	SW2 = 1;
}
```
### Pure Interrupt + Same Port

```c++
void PolledButtons_Init(void) {
	P6->SEL0 &= ~0x0C;
	P6->SEL1 &= ~0x0C; //GPIO
	P6->DIR &= ~0x0C;
	P6->IES &= ~0x0C;
	P6->IES  &= ~0x0C;
	P6->IFG  &= ~0x0C;
	P6->IE   |=  0x0C;
	NVIC->IP[10] = (NVIC->IP[10]&0xFFFFFF00) | 0x00000040;
	NVIC->ISER[1] = 0x00001000; // Interrupt 100
}
```
```c++
void PORT6_IRQHandler(void) {
	uint8_t status;
	status = P6->IV;   //For a given port, which pins triggered the interrupt
	if (status==0x06) { //Check which pins are active
		SW1 = 1;
		status = P6->IV;
	}
	if (status == 0x08) {
		SW2 = 1;
	}	
}
```


