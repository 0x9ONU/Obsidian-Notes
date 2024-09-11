Date: 11th September 2024
Date Modified: 11th September 2024
File Folder: Week 3
#networks

```ad-summary
title: Today's Topics
- Network Devices:
	- Swtiches
	- Switching Table
	- Routing
	- Routing Table
```

# Network Devices

## MAC Address

Ip address consists of 32 bits (6 bytes separated by period)

**MAC** (or LAN or physical or Ethernet) **address**:
- *Function*: Used “locally” to get frame from one interface to another physically-connected interface (same network, in IP-addressing sense)"
- *48-bit* MAC address burned in Network Interface Card (NIC) ROM
- e.g. `1A-2F-BB-76-09-AD`

```ad-note
- Stored in hexadecimal
- 3 bytes come from the computer manufacture
- 3 bytes come from the network card manufacture
```

```ad-important
Each adapter on LAN has unique MAC address
```

![[Pasted image 20240911095641.png]]

**MAC Address Facts**:
- Allocated by IEEE
- Manufacturer buys portion of mAC address space
- Analogy
	- Like SSN
- MAC flat address:
	- can move LAN card from one LAN to another  
	- MAC address of computer remains the same, where you move
- IP hierarchical addresses are NOT portable
	- address depends on IP subnet to which node is attached.  
	- Once network is changed, IP address is also changed

## Ethernet Switch

Link-layer device (Switch): Takes an *active role*:
- store, forward Ethernet frames
- Examine incoming frame’s MAC address, selectively forward frame to one-or-more outgoing links when frame is to be forwarded on segment

```ad-note
**Benefits**:
- *Transparent*
	- Hosts are unaware of presence of switches
- *plug and play*
	- Switches do not need to be configured
```

## Multiple Simultaneous Transmissions

Hosts have dedicated direct connection to switch
- Switches buffer packets
- Ethernet protocol used on *each* incoming link, but no collsiions; full duplex
- Each link is its own collision domain

*Switching*: A-to-D and B-to-E can transmit simultaneously, without collisions

![[Pasted image 20240911095701.png]]

## Switch Forwarding Table

```ad-question
How does a switch know `D` is reachable via interface 4, `E` is reachable via interface 5?
```

**Answer**: Each switch has a *switching table*, which each entry having:
- MAC address of host
- Interface to reach host
- Timestamp

### Self-Learning Switches

Switches *learn* which hosts can be reached thorugh which interfaces:
- When a frame is received, the switch “learns” location of sender: incoming LAN segment
- Records sender/location pair in switch table

![[Pasted image 20240911095916.png]]

![[Pasted image 20240911095925.png]]


