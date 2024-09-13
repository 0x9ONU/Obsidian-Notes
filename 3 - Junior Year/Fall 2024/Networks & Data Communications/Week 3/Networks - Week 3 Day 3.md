Date: 13th September 2024
Date Modified: 13th September 2024
File Folder: Week 3
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Network Layer

Network layer transports segment from sending to receiving host
- On the sending side, it encapsulates segments inot datagrams
- On the receiving side, it delivers segments to transport layer
- Network layer protocosl in *every* host, router
- Router examines header fields in all IP datagrams passing through it

Each *datagram* has each of the following information headers:

![[Networks - Week 3 Day 3 2024-09-13 09.09.21.excalidraw]]

\
![[Pasted image 20240913090857.png]]

## Two Key Functions

**Forwarding**: Move packets from router’s input to appropriate router output within a single router

**Routing**: Determine route taken by packets from source to destination, involves all of a network’s routers.
- Done through *routing algorithms*

## Interplay Between Routing and Forwarding

![[Pasted image 20240913091308.png]]

```ad-note
Forwarding table is also known as the *routing table*
```

## Switches vs. Router

*Both* are Store-and-Forward
- Routers are network layer devices
- Switches are link-layer devices

*Both* have forwarding tables:
- Routers: compute tables using routing algorithms, IP addresses
- Switches: learn forwarding table using flooding, learning, and MAC addresses

```ad-note
There is a **layer-3 switch** that has the functionality to route with IPs, but it *cannot* automate routing updates like routers. It cannot figure out the shortest path and cannot communicate with other routers or layer-3 switches to find the shortest route.
```

## Utilities

### Ping

Tests the reachability of a host on an IP network
- Measures the round-trip time for messages sent form the originating host to a desitnation computer
- Ping replies are echoed back to the source
- Ping operates by the means of *Internet Control Message Protocol (ICMP)* packets
- Ping sends *ICMP echo request* to the target and then receives an *ICMP echo reply*.

### Traceroute

`traceroute` program: provides delay measurement from source to router along end-end Internet path towards destination. For all $i$:
- Send *three* packets that will reach router $i$ on path towards destination
- Router $i$ will return packets to sender
- sender times interval between transmission and reply
- In Windows, `traceroute` utility is used with `tracert`

```ad-example
`tracert 8.8.8.8` will trace route to google.com
```

# Review Questions

## Question 1

```ad-question
What is the ufndamental difference between a router and a link-layer switch?
```

A network-layer packet is a datagram. A router forwards a packet based on the packet’s IP (layer 3) address. A link-layer switch forwards a packet based on the packet’s MAC (layer 2) address.

## Question 2

```ad-question
What is the difference between routing and forwarding?
```

Forwarding is about moving a packet from a router’s input port to the appropriate output port. Routing is about determining the end-to-routes between sources and destinations.

## Question 3

```ad-question
Do routers have IP addresses? If so, how many?
```

YES! They have one for *each* interface.

```ad-example
The router in lab that has two GE ports and two serial ports has *four* IP addresses
```

## Practice Problem #1

```ad-question
There are 8 hosts and 3 routers with the following IP addresses. You can use any number of switches. COnnect all devices as per their IP addresses and draw the network diagram. Also, label the diagram
```

![[Pasted image 20240913093044.png]]

```ad-important
Step 1: find the network address of each Host and Router
```

Network `192.168.1.0`:
- Host A
- Host H
- R2, fa 0/1

Network `192.168.2.0`:
- R2 fa0/2
- R3 fa0/1

Network `192.168.3.0`:
- R1, fa0/1
- R2, fa0/0

Network `192.168.4.0`:
- Host B
- Host E
- Host G
- R3, fa0/2

Network `192.168.5.0`
- R1, fa0/2
- R3, fa0/0

Network `192.168.6.0`:
- Host C
- Host D
- Host F
- R1, fa0/0

![[Networks - Week 3 Day 3 2024-09-13 09.34.47.excalidraw]]