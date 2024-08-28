Date: 28th August 2024
Date Modified: 28th August 2024
File Folder: Week 1
#networks

```ad-summary
title: Today's Topics
- Internetwork Design
- IP Addressing
```

# Internetwork Design

## Router

```ad-important
Use to connect multiple switches to the Internet
```


![[2f45813cc9d5e1ed39863971b1bdc22769b06e17.png]]


```ad-warning
A common cuases of LAN traffic congestion
- Broadcast storms
- Too much multicast traffic
- Low bandwidth
- Adding hubs for connectivity to the network
- A bunch of ARP broadcasts
```

- Routers do **not** forward broadcasts by default, i.e. break up the broadcast domain
- Routers filter traffic going to layer 3 (aka the *IP layer*)
- Router finds the best routing path or route to forward a packet to the destination network

```ad-important
The router's main job in a network is to break up the broadcast storms within a network. 
```

## Firewall

Blocks unwanted or malicious connections to the computer
- Placed between the computer and the network or the entrance of the LAN
- Can be hardware or software

```ad-note
Almost *always* placed between the internal and external network
```

![[pict--network-diagram-communication-network-diagram.png--diagram-flowchart-example.png]]

## Example Question

```ad-question
How many broadcast domains are in this network?
How many collision domains are in this network?

![[Pasted image 20240828092452.png]]
```

**ONE** Broadcast, and **NINE** Collision

## Network Topology Architecture

```ad-warning
DO NOT put a switch between two routers.
```

## Wide Area Network (WAN)

A major distinction between a WAN and a LAN is that while you generally own a LAN infrastructure, you usually lease a WAN infrastructure from a service provider

```ad-example
title: Characteristics of WAN
- Generally connected devices that are separated by a broader geographic area than a LAN can serve.
- Use the services of carriers like telcos, cable companies, satellite systems, and netwrok providers.
- Use serial connections of various types to provide access to bandwidth over a large geographic area
```

![[Networks - Week 1 Day 2 2024-08-28 09.27.08.excalidraw]]

```ad-important
Typically, home networks will only have one router. Enterprise networks will have a lot of swtiches and possibly a lot of routers.
```

# IP Addressing

```ad-note
Similar to how mailing addresses works
```

ZIP Code $\rightarrow$ Network Address
Street # and Name $\rightarrow$ Host Address
Complete Mailing Address $\rightarrow$ IP Address

## IP Address Basics

### IP Address Setup

Consists of 4 numbers separated by a period
- Each number ranges from 0 to 255

```ad-example
- google.com - 142.250.217.78
- search.yahoo.com - 98.136.144.138
- Bank of America - 171.159.118.100
```

These DNS names are assigned by a DHCP, often runs on a Router

**IP Address:** 32 bits long, used to identify host, and router *interface*

**Interface:** Connection between host/router and physical link
- Router’s typically have multiple interfaces
- Host typically has one or two interfaces (wired Ethernet, or wireless 802.11)

**IP addresses associated with each Interface**:
- There are 4 billion possible IP addresses
- IP address is written in dotted-decimal notation

![[Pasted image 20240828094235.png]]

```ad-question
How are interfaces actually connected?
```

![[Pasted image 20240828094412.png]]

```ad-note
A subnet mask is used to conceal your IP
```

