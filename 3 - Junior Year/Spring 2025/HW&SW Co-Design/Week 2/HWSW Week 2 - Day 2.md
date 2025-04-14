Date: 29th January 2025
Date Modified: 29th January 2025
File Folder: Week 2
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


# Computing Platform Architecture

![[Pasted image 20250129110706.png]]


## Platform Software Components

Hardware and software are *inseparable*, each needs the other to perform its function
- Range across many layers of abstraction
- The hardware abstraction layer (HAL) provides a basic level of abstraction from the hardware.
- Device drivers often use the HAL to simplify their structure.

![[Pasted image 20250129110830.png]]

## CPU Busses

```ad-summary
The mechanism by which the CPU communciates with memory and devices
```

At minimum a collection of wires, but has a *protocol* that defines how the CPU, memory, and devices communicate


### Bus Protocols

Determines how devices communicate
- Common connection between components in a system
- CPU servers are the *bus master*
- May contain asynchronous logic behavior

Provides the following:
- Data
- Clock
- Addresses
- Control signals

### Microprocessor Busses

- Clock Provides synchronization
- R/W is true when reading and false otherwise
- Data is $a$-bit bundle of address lines
- Data is $n$-bit bundle of data lines
- Data ready signals when $n$-bit data is ready.

```ad-important
Controlled through Tri-State Registers
```

### Four-Cycle Handshake

```ad-summary
- The basic building block of most bus protocols
- Ensures that two devices are ready to both receive or transmit data.
```

**Process**:
1. Device 1 raises its output to signal an *enquiry* (`enq`), which tells device 2 that it should get ready to listen for data.
2. Device 2 raises its output to signal an *acknowledgement* (`ack`) when it is ready to receive data. At this point, devices 1 and 2 can transmit or receive.
3. Once the data transfer is complete, device 2 lowers its output, signaling that “has received the data”
4. After seeing that ack has been released, device 1 lowers its output. 

![[Pasted image 20250129111700.png]]

```ad-note
title: Remember: Timing Diagrams
![[Pasted image 20250129111730.png]]
```

#### Timing Diagram

![[Pasted image 20250129111747.png]]
#### State Diagram

![[Pasted image 20250129112158.png]]
#### Wait Cycle Example

![[Pasted image 20250129112501.png]]

### Bus Burst Operations

```ad-important
Allows for a lot of data to be transfered in only **one handshake**
```

```ad-warning
Does need an extra signal & wire for it to work
- Raised high right *before* the final datapoint is sent ($n-1$)
```

![[Pasted image 20250129112614.png]]
### Bus Multiplexing

The address enable allows the address to go on the address bus
- Can be simplified down into a **multiplexer** & a **tri-state register**!

![[Pasted image 20250129112855.png]]

