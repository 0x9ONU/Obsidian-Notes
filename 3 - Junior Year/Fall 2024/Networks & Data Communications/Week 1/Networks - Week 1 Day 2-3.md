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

```ad-note
Broken up into four 8-bit segments separated by a period per number. These numbers have a minimum of `0` and a maximum of `255`
```

**Interface:** Connection between host/router and physical link
- Router’s typically have multiple interfaces
- Host typically has one or two interfaces (wired Ethernet, or wireless 802.11)

**IP addresses associated with each Interface**:
- There are 4 billion possible IP addresses
- IP address is written in dotted-decimal notation

![[Networks - Week 1 Day 2 2024-08-30 09.04.40.excalidraw]]

```ad-note
There are two different networks that have different netowrk addresses
```

```ad-important
There *MUST* be a router between two different networks to make them connected. Only a router, **NOT** a switch, has the capability to route traffic to multiple different networks.
- Always the default gateway of a network
```

```ad-question
How are interfaces actually connected?
```

![[Pasted image 20240828094412.png]]

```ad-note
A subnet mask is used to conceal your IP
```

## What Do You Need to Use the Internet Protocol?

```ad-important
Your IP consists of a netowrk address **AND** a host address 
```

**IP Address**: Explained before

**Subnet Mask**: A 32-bit number that masks and IP address. It divides the IP address into network address and host address. Subnet Mask is made by setting network bits to all 1’s and setting host bits to all 0’s. When logical AND operation is performed between IP address and Subnet mask, it returns Network Address.

```ad-important
A subnet mask **MUST** have consecutive ones in a row. If this pattern is not followed, then something must not be right.
$$\space$$
How many ones in a row determines how many bits are in the subnet mask. With this, you can simplify IP addresses.
```

$223.1.1.21$ + $255.255.255.0$ $\Rightarrow$ $223.1.1.1/24$
$192.168.16.27$ + $255.255.248.0$ $\Rightarrow$ $192.168.16.27/21$

**Default Gateway**: A default gateway serves as an access point or IP router that a networked computer uses to send information to a computer in another network or the Internet. Basically, it is the IP address of the router interface for the connected network.

**Broadcast Address**: The address used by applications and hosts to send information to all nodes on a network is called the broadcast address. When all bits in host address are set to “1”, then it becomes Broadcast address for that particular network.

```ad-example
$223.1.1.1 \Rightarrow 223.1.1.255$
$192.168.16.27$
$[192.168.000][01000.00000000]$ <- Right side is the network side, and left side is the host side
$192.168.00011111.11111111$
$192.168.31.255$
```

```ad-note
After considering the broadcast address and the network address, there are *TWO* less IPs that can be used on a network.
- 254 hosts for a 24 bit subnet mask
- 2048 hosts for a 21 bit subnet mask
```

### Subnet Mask Examples

#### Example #1 

IP = $223.1.1.1$
Subnet = $255.255.255.0$

IP<sub>B</sub> = $11011111.00000001.00000001.00000001.00000001$
SM<sub>B</sub> = $11111111.11111111.11111111.00000000$

```ad-important
Take the logical AND of every bit
```

Network<sub>B</sub> =$11011111.00000001.00000001.00000000$
Network = $223.1.1.0$

#### Example #2

IP = $192.168.16.27$
Subnet = $255.255.248.0$

IP<sub>B</sub> = $11000000.10101000.00010000.00011011$
SM<sub>B</sub> = $11111111.11111111.11111000.00000000$

Network<sub>B</sub> = $11000000.10101000.000100000.00000000$
Network = $192.168.16.0$

## Classful Addressing

![[Networks - Week 1 Day 2-3 2024-08-30 09.47.07.excalidraw]]

![[Pasted image 20240830094837.png]]

```ad-important
**Default Subnet Masks**:
- *Class A*: `255.0.0.0`
- *Class B:* `255.255.0.0`
- *Class C:* `255.255.255.0`
```

```ad-note
Number of Hosts *Per* Network:
- *Class A:* 24 bits $\Rightarrow$ $2^{24} -2$  $\Rightarrow$ 16,777,214
- *Class B:* 16 bits $\Rightarrow$ $2^{16} - 2$ $\Rightarrow$ 65,534
- *Class C:* 8 bits $\Rightarrow$ $2^8 -2$ $\Rightarrow$ 254

```ad-important
This leads to 4 billion devices
```

```ad-note
Number of *Networks*:
- *Class A:* 126 networks
- *Class B:* 64 * 254 = 16,256
- *Class C:* 32 \* 254 \* 254 = 2,064,512
```

```ad-warning
`127.x.x.x` is *reserved* for local loop purposes. A packet with this IP address will *NEVER* leave the host 
```

## Private IP Address Range

These IPs are reserved for private use and *cannot* be used on the Internet.
- `10.x.x.x`
- `172.16.x.x` through `172.31.x.x`
- `192.168.x.x`

![[Networks - Week 1 Day 2-3 2024-09-04 09.17.39.excalidraw]]

This is called **Network Address Translation**

```ad-note
These IP addresses DO NOT need to be licensed and are free to use
```

This is why a private web server can only be accessed from internal devices *without* configuration (**Port Forwarding**)





