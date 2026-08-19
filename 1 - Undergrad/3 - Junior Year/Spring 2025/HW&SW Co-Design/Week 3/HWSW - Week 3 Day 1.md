Date: 4th February 2025
Date Modified: 4th February 2025
File Folder: Week 3
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Design Patterns
- Software State Machines
- Circular Buffers

```

# Design Patterns

Common structures in software

used in:
- Reactive systems
- Data processing applications
- Repeatedly used applications

Design patterns in embedded systems:
- State Machines
- circular Buffers

# Software State machines

```ad-important
State machine keeps internal state as a variable, which changes based on inputs
```

**Uses**:
- Control-dominated code
- Reactive Systems

```ad-example
![[Pasted image 20250204203852.png]]
```

## C Implementation

```c
#define IDLE 0
#define SEATED 1
#define BELTED 2
#define BUZZER 3

switch(state) {
	case IDLE: if (seat) {state = SEATED; timer_on = TRUE;}
		break;
	case SEATED: if (belt) state = BELTED
		else if (timer) {state = BUZZER; buzzer_on = TRUE;}
			break;
}
```

## Example - FIR Filter

![[Pasted image 20250204204134.png]]

# Signal Processing and Circular Buffer

Commonly used in signal rpcoessing:
- New data constantly arrives
- Each datum has a limited lifetime

![[Pasted image 20250204204213.png]]

![[Pasted image 20250204204224.png]]

## Pseudo Code

```
i = 0;
x[0]=x[1]=x[2]=x[3]=0
While
	If i=4 then i=0;
	x[i]=in;
	out = c1*x[i]+c4*x[(i+1)%4]+c3*x([i+2]%4)+c2*x[(i+3)%4]
	i++'
end
```


