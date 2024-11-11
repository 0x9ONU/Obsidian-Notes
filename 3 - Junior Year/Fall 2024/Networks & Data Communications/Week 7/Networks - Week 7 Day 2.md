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

## Router ID $\star$

The Router ID (RID) is an IP address that identifies the router.

```ad-note
CIsco chooses the router ID by using the highest IP addresss of *all* configured loopback interfaces
- It will chose the highest IP out of ALLL active physical interfaces if *no loopback* has been configured
```

Loopback before applying OSPF, the lookback address will be the chosen Router ID.
- If applied afterwards, restart the router to get the loopback as the Router ID

### Commands

#### Command 1: `show ip ospf`

```ad-important
The `show ip osf` command displays OSPF information for one or all OSPF processes running on the router.
```

**Includes the Following Information**:
- Router ID
- Area Information


```
Router1#show ip ospf
Router Process "ospf 1" with ID 220.1.1.1

Router2#show ip ospf
Routing Process "ospf 1" with ID 220.1.1.2
```
#### Command 2: `show ip protocols`

The `show ip protocols` command is highly useful, whether you’re running OSPF, EIGRP, RIP, BGP, IS-IS, or any other routing protocols that can be configured on your router. It provides an excellent overview of the actual operation of all currently running protocols.

```ad-note
For *OSPF*, it will show the OSPF process ID, OSPF router ID, type of OSPF area, networks and areas configured by OSPF, and the OSPF router IDs of the neighbors
```
```
Router1#show ip protocols
Router2#show ip protocols
```
```ad-important
Showing `interface is up, line protocol is up (connected)` proves that the interface is powered on and the cable is setup correctly both physically and in terms of protocol (DTE vs. DCE)
```

#### Command 3: `show ip ospf database`

OSPF, as a link-state protocol, uses several different packets to exchange the information about the network topology between routers. These packets are called *link-state advertisements (LSAs)*, and they describe the network topology in great detail.

Each router stores the received LSA packets in the link-state database (LSDB). After LSDBs are synced between the routers, **OSPF uses the shortest path first (SPF) algorithm to calculate the best routes.**
- The best intra-area routes are calculated *individually* by each OSPF router.

```ad-note
Gives information about the number of routers in the internetwork (AS) plus the neighboring router's ID -- the topology database.
```

The router output shows the link ID and the RID of the router on that link under the *ADV router, or advertising router*

```
Router1#show ip ospf database
```
##### How Does this Command Work? $\star$

OSPF floods **LSAs every 30 minutes.** Each LSA includes:
- *Link State Age Variable*: Counts the age of the LSA packet.
- Updated network topology when a router finds out that a network change occurs.

OSPF LSDB shows the value of the current link-state age timer for *all LSAs*. 

```ad-warning
Unless if a network is not operating normally, you will **NOT** see the age variable with values higher than *1800 seconds*
```

After 60 minutes, a LSA is removed from the LSDB, and the router performs a new SPF calcualtion


#### Command 4: `show ip ospf interface`

Displays OSPF information for one or all OSPF processes running on the router. Includes:
- Router ID
- Area Information

```
Router2#show ip ospf int s 0/1/1

Serial0/1/1 is up, line protocol is up
Internet address is 192.168.200.2/30, Area 0
Process ID1, Router ID 220.1.1.2, Network Type POINT-TO-POINT, Cost: 64
```
## OSPF Cost Calculation $\star$

$$\mbox{Cost} = 10^8/\mbox{interface bandwith in bps}$$

```ad-example
- $512 \space Kbps \Rightarrow \quad 10^8/(512000)\approxeq 195$
- $1 \space Mpbs \Rightarrow \quad 10^8/(1000000)\approxeq 100$
```

```ad-important
The cumulative cost of a route is a combination of each cost along each jump.
```

### Cumulative Cost Example

R1 to R3 has a cost of $98$ and R3 to R4 cost is $98$, so the total cost from R1 to R4 is $98+98=196$





