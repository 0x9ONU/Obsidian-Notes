Date: 4th November 2024
Date Modified: 4th November 2024
File Folder: Week 11
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Exam Questions

1. OSPF: One Question: 10 MC
2. MAC Protocols: Extended Response
	1. Fundamental differences between the differences between each of the protocols
3. VLAN: Two Questions: 10MC + 1 DQ
4. Packet Delay: One Numerical Question

# Module 5-1: Transport Layer, Multiplexing and Demultiplexing, Connection-less and Connection-oriented

## Introduction

```ad-summary
title: Definition
A **transport-layer** protocol provides for logical communicaiton between applicaiton processes running on different hosts
```

It is as if the hosts running the processes were *directly connected*. In reality, the hosts may be far away and are connected via numerous routers and a wide range of link types

```ad-warning
Transport-layer protocols are implemented in the end systems, but not in network routers.
```

On the sending side:
- converts the application-layer messages it receives from a sending application processes into transport layer segments
- It breaks the application messages into smaller chunks and adds a transport-layer header to each chunk to create the transport-layer segment. Then, it passes the segmetn to the network-layer
- Has *two* protocols: TCP and UDP

### Transmission Control Protocol (TCP)

Provides:
- Reliability
- Connection-oriented service
- Connection Setup
- Flow Control
- Congestion Control

### User Datagram Protocol)

Provides
- Unreliable
- Connectionless

```ad-note
Neither protocol can provide:
- Delay guarantees
- Bandwidht guarantees
```

![[Networks - Week 11 Day 1 2024-11-04 09.14.04.excalidraw]]

## Multiplexing and Demultiplexing

At the destination host, the transport layer receives segments from the network layer. The transport layer has the responsibility of *delivering the data* in these segments to the *appropriate application process* running in the host.

A process can have one or more *sockets*, doors through which data passes from the network to the process and through which data passes from the process to the network. 

```ad-important
Thus, the transport layer in the receiving host does not actually deliver data directly to a process, but instead to an intermediary socket., Because at any given time there can be more than one socket in the receiving host.
```

![[Pasted image 20241104092331.png]]

**Demuxing**:
- Each transport layer segmetn has a set of fields
- At the receving end, the transport layer examines the fields to find which receiving socket it should go to
- **The job of delivering the data in a transport-layer segment to the correct socket**

**Muxing**:
- Job of gathering data chunks at the source host from different sockets, encapsulating each data chunk with header information to create segments, and passing the segments to the network layer.

### Segment Format

Transport-layer multiplexing requires:
1. Each socket has unique identifiers
2. That each segment have special fields that indicate the socket to which the segment is to be delivered

```ad-note
These fields are the *source port number* and the *destiantion port number*
```

- 16-bit number 
- Ranges from 0-65535

```ad-warning
0 to 1023 are well-known port numbers are are restricted
- HTTP: port 80
- FTP: port 21
```

![[Pasted image 20241104092734.png]]

### Connectionless Multiplexing and Demultiplexing (UDP)

When a UDP socket is created by opening an application, the transport-layer automatically assigns a port number to the socket. IN particular, the transport-layer assigns a port number int the range 1024→65535 that is not being used by any other UDP port on the host.

If the application developer writing the code were implementing the server side of a well-known protocol, then the developer would have to assign the corresponding well-known port number. Typically, the client side of the application lets the transport layer automatically (and transparently) assign the port number, whereas the server side of the application assigns a specific port number.

```ad-important
UDP socket is fully identified by a two-tuple consisting of a destination IP address and a destination port number. As a consequence, if two UDP segments have different source IP addresses and/or source port numbers, but have the same destination IP address and destination port number, then the two segments will be directed to the same destination process via the same destination socket.
```

![[Pasted image 20241104093515.png]]

### Connection-Oriented Mux and Demux

Difference between a TCP and a UDP socket is that a TCP socket uses a *four-tuple*: (source IP, source port, destination IP, destination port). Thus, when a TCP segment arrives from the network to a host, the host uses all four values to direct (demux) the segment to the appropriate socket. 

Two arriving TCP segments with a different source IP addresses or source ports will be direct to two different sockets

```ad-note
This true above for everything but the first connection-establishment request
```

![[Pasted image 20241104093714.png]]

### List of Applications that use UDP or TCP

| Applicaiton          | Application-Layer Protocol | Underlying Transport Protocol | Port Number |
| -------------------- | -------------------------- | ----------------------------- | ----------- |
| Electronic Mail      | SMTP                       | TCP                           |             |
| Remote Access        | Telnet                     | TCP                           | 23          |
| Web                  | HTTP/HTTPS                 | TCP                           | 80/443      |
| File Transfer        | FTP                        | TCP                           | 20, 21      |
| Remote file server   | NFS                        | usually UDP                   |             |
| Streaming multimedia | proprietary                | UDP or TCP                    |             |
| Internet Telephony   | Prorietary                 | UDP or TCP                    |             |
| Network management   | SNMP                       | UDP                           |             |
| Routing protocol     | RIP                        | UDP                           |             |
| Name translation     | DNS                        | UDP                           |             |
## Practice Problems

### Problem #1

```ad-question
Suppose Client A initates a Telent sessionw ith SErver S. At about the same time, Client B also initiates a Telent session with Server S. Provide possible source and destiantion port numbers for
1. Segments sent from A -> S
2. Segments sent from B -> S
3. Segments sent form S -> A
4. Segments sent from S -> B
5. If A and B are different hosts, is it possible that the soruce port number int he segments are the same?
6. How about if they are the same host?
```

![[Networks - Week 11 Day 1 2024-11-04 09.41.20.excalidraw]]

| Connection | Source Port | Destination Port |
| ---------- | ----------- | ---------------- |
| A→S        | 467         | 23               |
| B→S        | 513         | 23               |
| S→A        | 23          | 467              |
| S→B        | 23          | 513              |
It *is* possible that the source port number in the segments. Demuxing will take care of it on the server side

However, it is NOT possible if it is on the same host. They must use two *different* sockets

### Problem #2

```ad-question
Consider the following Figure. What are the soruce and destination port values in the segments
```

