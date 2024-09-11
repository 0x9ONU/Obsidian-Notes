Date: 9th September 2024
Date Modified: 9th September 2024
File Folder: Week 3
#networks

```ad-summary
title: Today's Topics
- Physical Media 
- TCP/IP Protocol
```


# Physical Media

## Introduction

```ad-summary
title: Defintion
Physical link is what lies between a transmitter and a receiver.
```

```ad-example
- Twisted-pair copper wire
- coaxial cable
- Multimode fiber-otpic cable
- Terrestrial radio spectrum
- Satellite radio spectrum
```

**Guided Media**: The waves are guided along a solid medium, such as a fiber-optic cable, a twisted-pair copper wire, or a coaxial cable.

**Unguided Media:** The waves propagate int he atmosphere and in outer space, such as in a wireless LAN or a digital satellite channel.

## Media Types

### Indoor Cables

**Twisted-Pair Cable**: The wires are twisted together to reduce the electrical interference form similar pairs close by.

**Unshielded twister pair (UTP)**: The most common cable sued for computer networks *within a building*, aka, for LANs. Data rates for LANs using twisted pair today range form 10 Mbps to 10 Gbps.
- Also known as *10BaseT*

```ad-warning
Can only be used in areas that have low electromagnetic waves.
```

```ad-important
The standard limit of the *length* of a UTP cable is $100m$
```

![[Pasted image 20240909093101.png]]

#### Straight Through Vs. Crossed Cables

![[5942409_orig.png]]

```ad-example
For the **RJ-45**
![[Networks - Week 3 Day 1 2024-09-09 09.09.41.excalidraw]]
![[Networks - Week 3 Day 1 2024-09-09 09.15.04.excalidraw]]
```

```ad-important
**Straight-Through** is used when:
- PC is to Switch
- PC is to Hub
- Switch is to Router
- Hub to Router

**Crossover** is used when:
- PC is connected to PC
- Router is Connected to Router
- Hub is Connected to Hub
- Switch is Connected to Switch
```

```ad-warning
The PC port and the Router ports are the same, which means they need a crossover cable. HOWEVER, they should realistically *never* be connected directly
```

![[Pasted image 20240909093045.png]]



### Other Cable Types

**Coaxial Cable**: 
- Conssits of two copper conductors
- Two conductors are concentric
- Can be sued as guided shared medium
- Bidirectional
- Multiple channels on one cable

**Fiber-Optic Cable:**
- Glass fiber carrying light pulses
- Each pulse is one bit
- High-speed operation
- Transmission Rate in Gbps
- Low error rate
- Immune to electromagnetic noise

### Wireless Types

**Radio Channel**:
- Signal carried in electromagnetic spectrum
- No physical wire
- Bidirectional
- Propagation environment effects:
	- Reflection
	- Obstruction by objects
	- Interference

```ad-note
Includes WiFI and Celluar Network.
```

**Differences between Wifi and Celluar Netowrk**:
- Range (Wifi = low and Cell = high)
- Data Rate (Wifi = high and Cell = low)
- Place (Wifi = INdoor, Cellular = indoor/outdoor)
- Frequency (ISM vs. Licensed)
- Type (Personal vs. Big Company)
- Price (Free vs. Expensive)

# TCP/IP Protocol

## What is a Protocol

```ad-note
The exchange of messages and the actions taken when these messages are sent and received are the key defining elements of a protocol
```

![[Pasted image 20240909093026.png]]

```ad-summary
title: Definition
A protocl defines the format and the order of messages exchanged between two or more communicating entities, as well as the actions taken on the transmission and/or receipt of a message or other event.
```

```ad-example
- TCP
- UDP
- SMTP
```

## Protocol Layers

### Air Travel Analogy
![[Pasted image 20240909093236.png]]

**Layers:** Each layer implements a service
- Via its own internal layers
- Relies on the services on the layers below it

### Why Layering?

Protocols are organized in layers, each protocol belongs to one of the layers

Each laeyr provides its service by performing certain actions within that layer, and by using the services of the layer *directly below it*
- Can use hardware and/or software to implement each layer

This allows for an ease of maintenance, updating of the system, change of implementation of a layer’s service transparent to rest of system etc.

```ad-warning
**Drawbacks:** 
1. Duplicate functionality, such as many protocol layers  
provide error recovery.
2. Functionality at one layer need information from another layer only such as time-stamp.
```


### Internet Protocol Stack (TCP/IP)

**Application**: Supporting network applications
- FTP, SMTP, HTTP
- *Message*

**Transport**: Proccess-to-Process transfer
- TCP, UDP
- *Segment*

**Network** Routing of datagrams from source to destination
- IP, Routing protocols
- *Datagram*

**Link**: Data transfer between neighboring network elements
- Ethernet, IEEE 802.11 (WiFi), PPP
- *Frame*

**Physical**: Bits “on the wire”

```ad-note
Made by DOD to help create standardization.
```

```ad-important
The Network Interface card will deal with the following layers:
- Network
- Link
- Physical
```

![[Pasted image 20240909093605.png]]

![[Pasted image 20240909094214.png]]

### ISO/OSI Reference Model

Created back int eh late 1970s, and includes *seven layers*, with two of them being *NEW*:

**Presentation**: Allow applications to interpret meaning of data, e.g., encryption, compression, machine-specific conventions

**Session**: Synchronization, checkpointing, recovery of data exchange
- Internet stack “misssing” these layers”

![[Pasted image 20240909094630.png]]

## Review

### What are Five Tasks that Each Layer can Perform?

Includes:
- Error control
- Flow control
- Segmentationa nd reassembly
- Multiplexing and demuxing
- Connections setup

```ad-important
These tasks can be duplicated at different layers. Error control is often provided at more than one layer
```

### Which layers in the IP stack does each Hardware Process?

**Routers:** Process network, link, and physical layers

**Link Layer Switches**: Process link and physical layer

**Host**: Process all five layers

### Practice Problem

```ad-question
In the given network diagram, some hosts are unable to communicate with others. Troubleshoot the network diagram and identify the errors in IP addresses and cabling. List only the correct IP addresses in the following table. Do not list those devices/interfaces that already have correct addresses.  
Circle/Highlight the incorrect cables. Note that all IP addresses belong to `195.1.X.X` with subnet mask `255.255.255.248` and only last two bytes of IPs (X.X) are shown in the figure.
```

![[Networks - Week 3 Day 1 2024-09-09 09.52.00.excalidraw]]

| Device Name | IP Address |
| ----------- | ---------- |
| Host A      | 195.1.1.25 |
| Host B      | 195.1.1.22 |
| Host C      |            |
