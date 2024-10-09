Date: 9th October 2024
Date Modified: 9th October 2024
File Folder: Week 7
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# OSPF Day 2

![[Pasted image 20241009090617.png]]

## Loopback Interface

```ad-summary
Logical itnerfaces, aka virtual/software-only interfaces. Used with router configurations to ensure that they ensure an interface is always active and available
```

```ad-important
Allows us to access the router remotely. Used also test connectiviy
```

```
ISP(config)#interface loopback 0
ISP(config-if)#ip address 200.10.20.1 255.255.255.255
ISP(config-if)#exit
```
```ad-warning
We **DO NOT** use `255.255.255.0` for loopback. The /32 mask is called the host mask and works fine for loopback interfaces. It allows the configurator to save subnets
```

Allows for the use of remote accessing to fix problems with links remotely using protocols such as *Telnet*. Also allows us to not use public links with Telnet, which increases security and allows us to connect routers regardless if a link is down or not.

## OSPF How To

### Enable

The first command used to activate the OSPF routing process is:
```
Router(config)#router ospf <Process_ID>
Router1(ncofig)#router ospf 1 //Example
```

A value in the range from $1 \to 65636$

The number is irrelevant. It can be the same on every router on the network, or it can be different. It is only locally significant.


### Area

Define network with area. The areas can be any number from $0 \to 4.2 \mbox{ billion}$

```
Router1(config)#router ospf 1
Router1(config-router)#network 192.168.1.0 0.0.0.255 area 0
Router1(config-rotuer)#network 192.168.200.0 0.0.0.3 area 0
```

```ad-summary
title: Definition
**Wildcard Mask**: A `0` octect in the wildcard mask indicates that the corresponding octet in the network must match exactly. On the other hand, a `255` indicates that you don't care what the corresponding octect is in the network number. 
- A network and wildcard mask combination of `1.1.1.1 0.0.0.0` would match an itnerface configured with exactly `1.1.1.1` only.
- Useful if you want to activate OSPF on a specific interface in a very clear and simple way
- `1.1.0.0 0.0.255.255` would match any interface in the range of `1.1.0.0` to `1.1.255.255`
```

### Default Route

```ad-note
title: Steps
1. Add a default route to ISP
2. View `show ip route` of Router2
3. View `show ip route` of Router1
```

```
Router2(config)#ip route 0.0.0.0 0.0.0.0 s0/1/0
Router2(config-router)#default-information originate
```
## `Example`: Configuring OSPF on R1

![[Pasted image 20241009093342.png]]

```ad-question
COnfigure OSPF on Router1 by asking/doing:
1. Identifying only direclty connected networks
2. Identify network's subnet mask, and covert it to wildcard mask
3. Who are the networks in this system?
```

**List Directly connected networks on Router1**:

| Network Address | Subnet Mask     | Wildcard Mask |
| --------------- | --------------- | ------------- |
| 192.168.1.0     | 255.255.255.0   | 0.0.0.255     |
| 192.168.200.0   | 255.255.255.252 | 0.0.0.3       |
| 192.168.200.4   | 255.255.255.252 | 0.0.0.3       |

**Configuring OSPF on Router1:**

```
Router1(config)#router ospf 1
Router1(config-router)#network 192.168.1.0 0.0.0.255 area 0
Router1(config-router)#network 192.168.200.0 0.0.0.3 area 0
Router1(config-router)#network 192.168.200.4 0.0.0.3 area 0
```

## `Example`: Configuring OSPF on R4

![[Networks - Week 7 Day 2 2024-10-09 09.42.20.excalidraw]]

```ad-question
Configure OSPF on Router4 by asking/doing:
1. Identifying only direclty connected networks
2. Identify network's subnet mask, and covert it to wildcard mask
3. Who are the networks in this system?
```

**List Directly Connected Networks on Router4:**

| Network Address | Subnet Mask     | Wildcard Mask |
| --------------- | --------------- | ------------- |
| 192.168.4.0     | 255.255.255.0   | 0.0.0.255     |
| 192.168.200.12  | 255.255.255.252 | 0.0.0.3       |
| 192.168.200.16  | 255.255.255.252 | 0.0.0.3       |
| 192.168.210.0   | 255.255.255.252 | 0.0.0.3       |

**Configuring OSPF on Router4**

```
Router4(config)#router ospf 1
Router4(config-router)#network 192.168.1.0 0.0.0.255 area 1
Router4(config-router)#network 192.168.200.12 0.0.0.3 area 1
Router4(config-router)#network 192.168.200.16 0.0.0.3 area 1
Router4(config-router)#network 192.168.210.0 0.0.0.3 area 0
```
## Differences Between RIP and OSPF in `running-config`

RIP does not show classless IPs even with no auto-summary. OSPF does!

RIP does not have wildcard subnets or areas. OSPF does!

## `show ip route` with OSPF

`o` means OSPF

`o IA` means OSPF inter-area routing. It learned how to route these packets using the protocol for IP addresses OUTSIDE of its area.