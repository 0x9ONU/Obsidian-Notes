Date: 6th June 2023
Date Modified: 6th June 2023
File Folder: Networks
#networks

# IP Address

Consists of a group of 4 numbers separated by a period (dotted-decimal notation)
- Each number ranges from 0 to 255
- 32-bits long
- Used to identify a **host** and *router interface*
- About 4 billion possible IP addresses

![[Pasted image 20230606144027.png]]

```ad-example
- 192.168.1.10
- google.com - 142.250.217.78
- search.yahoo.com - 98.136.144.138
- Bank of America - 171.159.118.100
- playstation.com - 209.200.152.198
```

```ad-note
It is assigned by a DHCP Server and is usually ran on the Router
```

==IP Address is a combination of the Network's Address and the Host's Address==

## Interface

A connection between the host/router and the physical link
- Router's often have multiple interfaces
- Hosts often have one to two interfaces
	- Ethernet
	- wireless 802.11 (WiFi)

```ad-important
Interfaces are connected to hosts through either:
- wired Ethernet interfaces connected by Ethernet switches
- wirelesss WiFi interfaces connected by WiFi base station
```

## IP Address as a Combination

IP Address is a combination of host and network/subnet addresses

**Subnet Mask** - A 32-bit number that masks an IP address:
- Divides the IP address into the network and host addresses
- Sets **all the network bits to 1s** and **the host bits to all 0s**
- Performing an AND operation between the IP address and he Subnet mask returns the Network address

**Default Gateway** - Servers as an access point or IP router that a networked computer uses to send information to a computer in other network or the Internet
- The IP address of the router interface for the connected network

**Broadcast Address**: Used by applications and hosts to send information to all nodes on a network
- When all the bits in *the host address are set to "1"*, it becomes **the broadcast address for that particular network**

## Classful Addressing

There are 5 forms of IP addresses that are labeled Class A-E:

|               | Net ID        | First Host    | Last Host       | Net ID (bytes) | Host ID (bytes) | Size of Net                         |
| ------------- | ------------- | ------------- | --------------- | -------------- | --------------- | ----------------------------------- |
| Class A       |               |               |                 | 1              | 3               | Huge # of Hosts, Less # of Networks |
| First Network | 1.0.0.0       | 1.0.0.1       | 1.255.255.254   |                |                 |                                     |
| Last Network  | 126.0.0.0     | 126.0.0.1     | 126.255.255.254 |                |                 |                                     |
| ----          | ----          | ----          | ----            | ----           | ----            | ----                                |
| Class B       |               |               |                 | 2              | 2               | # of Hosts = # of Networks          |
| First Network | 128.1.0.0     | 128.1.0.1     | 128.1.255.254   |                |                 |                                     |
| Last Network  | 191.254.0.0   | 191.254.0.1   | 191.254.255.254 |                |                 |                                     |
| ----          | ----          | ----          | ----            | ----           | ----            | ----                                |
| Class C       |               |               |                 | 3              | 1               | Huge # of Networks, Less # of Hosts |
| First network | 192.0.1.0     | 192.0.1.1     | 192.0.1.254     |                |                 |                                     |
| Last network  | 223.255.254.0 | 223.255.254.1 | 233.255.254.254 |                |                 |                                     |
| ----          | ----          | ----          | ----            | ----           | ----            | ----                                |
| Class D       |               |               |                 |                |                 | Multicast Addresses                 |
| First Network | 224.0.0.0     |               |                 |                |                 |                                     |
| Last Network  | 240.0.0.0     |               |                 |                |                 |                                     |
| ----          | ----          | ----          | ----            | ----           | ----            | ----                                |
| Class E       |               |               |                 |                |                 | Reserved for Future Use             |
| First Network | 241.0.0.0     |               |                 |                |                 |                                     |
| Last Network  | 248.0.0.0              |               |                 |                |                 |                                     |

![[Pasted image 20230606151520.png]]

## Private IP Addresses

Several networks are reserved for private use and cannot be used on Internet:

| Private IP Address Range      |     | 
| ----------------------------- | --- |
| 10.x.x.x                      |     |
| 172.16.x.x through 172.31.x.x |     |
| 192.168.x.x                   |     |
