Date: 27th September 2024
Date Modified: 27th September 2024
File Folder: Week 5
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Dynamic Routing Protocols

```ad-important
Static routing fails to change when the network changes without manually configurations. Dynamic routing communciates with other 
```

```ad-example
- **Router Information Protocol (RIP)**
- **Open Shortest-Path-First (OSPF)**
- **EIGRP (Cisco Proprietary)**
- BGP (Used for global communications)
```

## Routing the Internet

- Lecture focuses on Internet’s routing protocols. The main goal of internet routing protocol is to determine the path taken by a packet between source and destination
	- Incorporates routing algorithms; link-state and distance-vector

#comebacklater 

# Router Information Protocol (RIP)

```ad-summary
Distance-vector protocol that operates in a manner very close to the idealized distance-vector routing algorithm
```

```ad-warning
RIP *only* uses the hop count as a cost metric. *Each link* has a cost of **ONE**!
```

**Hop Count**: The number of subnets traversed along the shortest path form source router to destination subnet including the destination subnet.

```ad-danger
RIP only has a max path of 15, thus the use of RIP to a system has to have *fewer* than 15 hops in diameter.
```

Routing updates as exchanged between neighbors *approximately every 30 seconds* using a RIP response message. Also known as **RIP advertisements**.

```ad-note
There are *two* versions of RIP:
- RIPv1: Does *NOT* consider interdomain subnets to be separate. It uses *classful* routing instead of special subnet masks. **OUTDATED**
- RIPv2: Recognizes *classless* interdomain routing. It uses the subnet masks provided. It only considers only the networks connected to the router.
```

## Hop Count

Each router maintains a RIP table, aka its routing table.

Includes:
- Router’s distance vector
- Router’s forwarding table

The following network diagram $u, v, w, x, y$, and $z$ represent subnets, while $A$, $B$, $C$, and $D$ are routers:

![[Pasted image 20240927091928.png]]

Routing table has three columns. First for destination subnet, second to identify next router, and third for number of hops

![[Pasted image 20240927092006.png]]

### Link Failure and Recovery

```ad-important
If a router does not hear from its neighbor at least *once every *180 seconds**, that neighbor is considered no longer reachable.
```

It will then go and modifies the local routing table and propagates by sending advertisements to its neighboring routers.

### *Example*: Configuring RIP on R1

![[Pasted image 20240927092206.png]]

**Step 1**: Identify directly connected networks:

| Network Address |
| --------------- |
| `192.168.1.0`   |
| `192.168.200.0` |
| `192.168.200.4` |

**Step 2**: Configure RIP on R1 using router config rip

```
Router1(config)# router rip
Router1(config-router)# version 2
Router1(config-router)# network 192.168.1.0
Router1(config-router)# network 192.168.200.0
Router1(config-router)# network 192.168.200.4
Router1(config-router)# no auto-summary
Router1(config-router)# exit
```

**Step 3**: List all passive interfaces connected on Router1:

| Name of Passive-Interface               |
| --------------------------------------- |
| `192.168.1.0` $\rightarrow$ `gig 0/0/0` |

**Step 4:** Configure passive interface on R1

```
// Add the following command right before exiting
passive-interface gig 0/0/0
```

