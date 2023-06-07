Date: 7th June 2023
Date Modified: 7th June 2023
File Folder: Networks
#networks

# 3.1 - Introduction and Transport-Layer Services

A transport-layer protocol provides **logical communication** between different hosts:
- Assumes that the hosts are right next to each other
- Does **not** worry about the the physical infrastructure of the network layer, link layer, or the physical layer 

```ad-note
Transport-layer protocosl are implemented in the **end systems only**
```

An incoming message from the application-layer is broken down into smaller transport-layer **segments** that have header data and a payload
- the payload within encapsulates the part of the previous message

The segment is then further encapsulated by a network-layer datagram and sent to the destination

```ad-note
Since the segment is encapsulated by the datagram, network routers do not have access to the segment and do not act upon it
```

![[Pasted image 20230607134713.png]]

## 3.1.1 Relationship between Transport and Network Layers

Transport layers provide logical communication between *processes* running on different hosts, while the network-layer protocol provides logical communication between *hosts*. 

```ad-example
###### Analogy for how the transport-layer and network-layer differ
- Application messages - letters in envelopes
- Processes = Cousins who wrote the letters
- Hosts = Houses
- Transport-layer protocol = One cousin who collects all the mail and moves it to the mailbox and distributes the mail from the mailbox
	- Within their respective homes
- Network-layer protocol = Postal Service (including mail carriers)
```

```ad-note
Every computer network might make multiple transport protocols available
- Each protocol will have a different service model for the application-layer
```

**The transport-layer's services are constrained by the service model of the underlying network-layer protocol**
- Makes it so there is no guarantee for delay or bandwidth between process as the network-layer cannot provide estimates between hosts

```ad-important
Despite this, some services *can* be offered regardless:
- Offers reliable data transfer serice to an application
- Can use encryption to guarantee that application messages are not read by intruders, even whent eh network layer cannot guarantee the confidentiality of transport-layer segments
```

## 3.1.2 - Overview of the Transport Layer in the Internet

```ad-summary
title: Reminder
There are two distinct transport-layer protocols:
- **UDP (User Datagram Protocol)**
	- Provides an unreliable, connectionless service for applications
- **TCP (Transmission Control Protocol)**
	- Provides a reliable, connection-oriented service to the invoking application

```ad-note
color: 255, 255, 0
The application developer while making network applications can choose between the two protocols
```


### Brief Summary of the Internet's Network Layer

The **IP protocol** provides logical communication between *hosts* using a **best-effort delivery service**
- Makes *no guarantees that every segment is delivered* between communicating hosts
- Makes it an **unreliable service** as some segments can be either corrupted or lost

On top of this, every host has an *IP Address* that is used by the network to deliver the datagram between hosts

### Fundamentals of UDP and TCP

They are both created to extend IP's delivery service between two end systems to a *delivery service between two processes* running on the end system

This process is known as **transport-layer multiplexing** and **demultiplexing**

```ad-important
Both protocols also provide integrity checking through error-detection fields in the segments' headers
```

```ad-warning
Due to UDP providing only process-to-process data delivery and error delivery, it provides an **unreliable service**
- It does not guarantee that the data sent to one process will arrive at all
```

```ad-check
TCP provides **reliable data transfer** through:
- Flow Control
- Sequence Numbers
- Achknowledgments
- Timers
- **Congestion Control**
	- Prevents any one any oen TCP connection from swamping the links and routers between communciating hosts with extra traffic
	- Regulates the rate at which the TCP connections send traffic into the network

```ad-note
This turns IP's unreliable service iunto a reliable data transport service
```

# 3.2 - Multiplexing and Demultiplexing

Extending the host-to-host delivery service provided by the network layer to a process-to-process
- Necessary for ALL computer networks

```ad-note
title: Definition
color: 234, 180, 234

**Sockets** - Doors through which data passes from the network to the *process* and through which data pases from the *process* to the network
- The receving host's transport layer brings the segment to the socket before sending it to the process
- Each socket has their own ID with different formats depending on if they are a UDP or a TCP socket
```

**Demultiplexing** - The job of delivering the data in a transport-layer segment *to* the correct socket
- Uses a set of fields in the segment to get it there

**Multiplexing** - Has the job of:
- gathering data chunks at the source host from sockets
- Encapsulating each data chunk with header information
- Create segments
- Passing the segments to the network layer

![[Pasted image 20230607170408.png]]

As shown above, the middle host *demultiplexes* the incoming traffic to either socket $P_1$ or $P_2$. 

It may then have to gather the outgoing data from these sockets, create segments, and pass these segments down to the network layer

```ad-important
Transport-layer multiplexing requires *two primary things*:
- **Source port number field**
	- Unique fields for each socket
- **Destination port number field**
	- The special fields in each segmetn that indicate the socket to which the segment is to be dlivered to
```

**Source port number fields** are 16-bit integers (ranging from 0-65535)

```ad-note
color: 0, 255, 255
**Well-known Port Numbers**
- The port numbers ranging from 0 to 1023
- Restricted and reserved for well-known application protocols
- Further outlined in the RFC 1700

```ad-example
These protocols can include:
- Port 80: HTTP
- Port 21: FTP
```

***This process described above is essentially how UDP transfers data***

![[Pasted image 20230607171634.png]]

### Connectionless Multiplexing and Demultiplexing

When a UDP socket is created in the standard manner shown below:
- The transport layer automatically assigned a port number from 1024 to 65535
- Addtionally, using the ``bind()`` method, it can be assigned a specific port

```python
clientSocket = socket(AF_INET, SOCK_DGRAM) # Creating a default socket
clientSocket.bind(('', 19157)) # Assigning a Socket a specific port
```

```ad-note
Typically, client-sided applications automatically assgin the port number, where sever side applications assign a specific port number (this is done on purpose)
```



