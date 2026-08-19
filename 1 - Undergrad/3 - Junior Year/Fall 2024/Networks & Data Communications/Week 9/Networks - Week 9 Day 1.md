Date: 21st October 2024
Date Modified: 21st October 2024
File Folder: Week 9
#networks

# Virtual Local Area Network (VLAN)

## Switched Network

```ad-note
title: Remember
Every broadcast packe ttransmitted is een by every device on the network
- ARP will send pacekts to ask who which MAC address is related to a specific IP address
- This will be delivered to *every* host on a network
- True for both *hubs* and *link-layer switches*

![[Pasted image 20241021091241.png]]

```

### Benefits of Switch

1. Creates individual collision domain segments for each device plugged into each port of the switch
2. Allows us to build larger networks

### Downsides of Switch

1. The more users and devices that populate and use a network, the more broadcasts and packets each switch has to deal with.
2. **Security** All users can see all devices by default. Cannot stop devices form broadcasting, plus can’t stop users from trying to respond to broadcast. Security options are limited to placing passwords on your servers and other devices.

```ad-check
title: Easy Solution
Put them in different networks! You need more switches and cabling; however.
```

## VLAN Motivation

```ad-check
title: Expert Solution!

Create VLANs
```

![[Pasted image 20241021092225.png]]

## Advantages

- Networks adds, moves, and changes are achieved with ease by just configuring a port into the appropriate VLAN.
- VLANs increase the number of broadcast domains while decreasing their size
- A group of users that need a high level of security can be put into its own VLAN so that users outside of the VLAN can’t communicate with that group’s users
- VLANs can be considered independent from their physical or geographic locations
- *greatly enhance network security* if implemented correctly.

## Identifying VLANs

### Access Ports

```ad-summary
title: Defintiion
**Access port**: A port that belongs to and carries the traffic of only one VLAN. VLANs increase the number of broadcast domains while decreasing their size.
```


Any device attached to an *access link* is unaware of a VLAN membership - the device just assumes it is part of some broadcast domain.

![[Pasted image 20241021092631.png]]

### Trunk Ports

Carries the traffic of multiple VLANs - from 1 to 4094 VLANs at a time. (12-bit range)
- Instead of an access link for each VLAN between switches, create a trunk link.

![[Pasted image 20241021092738.png]]

```ad-note
Much like how phone lines work. One line with *multiple* conversations
```

```ad-important
VLAN 0 and 4095 are *reserved* for system use. VLAN 1 is *also* the default VLAN. That means we have $2^{12}-3$ VLANs that are usable. 
```

## Frame Tagging

Once within a switch, each switch that the frame reaches must first identify the VLAN ID from the *frame tag*. It then finds out what to do with the frame by looking at the information in what’s known as the filter table. If the frame reach a switch that has another trunked link, the frame will be forwarded out of the trunk-link port.

Once the frame reaches an exit that’s determined by the forward/filter table to be an access link matching the frame’s VLAN ID, the switch will remove the VLAN identifier. This is so the destination device can receive the frames without being required to understand their VLAN identification information.

## VLAN Identification

Created by the IEEE has a standard method (*IEEE 802.1q*) of frame tagging
- Inserts a field into the frame to identify the VLAN.
- VLAN identifier (`VLAN ID`) is 12bit, support up to 4,094 VLANs
- VLAN 1 is the default native VLAN
- The native VLAN accepts information without any frame tag

![[Pasted image 20241021094507.png]]


```ad-note
The basic purpose of 802.1q frame-tagging method is to provide inter-switch VLAN communication
```

```ad-warning
802.1q frame tagging is removed if a frame is forwarded out an access link. It is used internally and across turnk links only!
```

## VLAN Communication

Hosts in a VLAN live in their own broadcast domain and can communicate freely
- Allows for network partitioning and traffic speration at the layer 2
- If we want hosts or any other IP-addressable device to communicate between VLANs, we must have a layer 3 device to provide routing

*Two* types of VLAN
- Router that has an interface for each VLAN
- A router that supports ISL or 802.1q routing


