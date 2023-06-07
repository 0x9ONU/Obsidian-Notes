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
Due to UDP providing only process-to-process data delivery and error delivery, 
```
