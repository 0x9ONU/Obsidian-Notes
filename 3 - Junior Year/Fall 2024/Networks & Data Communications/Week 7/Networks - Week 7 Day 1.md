Date: 7th October 2024
Date Modified: 7th October 2024
File Folder: Week 7
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Open Shortest Path First (OSPF)

## Hierarchical Routing

Link-State and Distance-Vector routing algorithms both use the fact that all routers executed the same routing algorithm to compute the routing paths through the entire network

**Simple Because**:
1. *Scale*: As the number of routers become large, the overhead involved in computing, storing, and communicating routing information
2. *Administrative Autonomy*: An organization should be able to run and administer its network as it wishes, while still being able to connect its network to other outside networks.

```ad-important
Can be solved by organizing routers into **Autonomous Systems (AS)**.
- Under one administration
- Not shared with another administration

![[Networks - Week 7 Day 1 2024-10-07 09.20.49.excalidraw]]
```

### Autonomous System

Each autonomous system (AS) consists of a group of routers that are typically under the same administrative control.
- Routers within the same AS all run the same routing protocol.
- The routing protocol running with an *AS* is called an **Intra-Autonomous System Routing Protocol.**
- As each AS connect to the outside world, each AS has routers, called *Gateway Routers*, to forward packets to destinations outside the AS.
- Gateway router has *link* to router in another AS.

### Interconnected ASes

![[Pasted image 20241007092545.png]]

```ad-note
Forwarding table configured by both intra- and inter-AS routing algorithm
- Intra-AS sets entries for internal destinations
- Inter-AS & Intra-AS sets entries for external destinations
```

#### Inter-AS Tasks\

```ad-question
Suppose router in AS1 receives datagram destined outside of AS1. What does it do?
```

It must:
1. Learn which destinations are reachable through AS2, which through AS3
2. Propagate this reachability info to all routers in AS1

```ad-warning
RIP systems cannot be used to make hierarchical AS. ONLY good for smaller systems.
```

Since the inter-AS routing protocol involves communication between two ASes, the two communicating ASes must run the same inter-AS routing protocol.

```ad-important
There is only one Inter-AS routing protocol, that is **Border Gateway routing Protocol (BGP)**
- Like a translator that can understand all the different "languages" (routing protocols) and allows them to communicate with each other.
```

#### Intra-AS Routing

```ad-note
Also known as *interior gateway protocols (IGP)*
Most common intra-AS rotuing protocols:
- RIP: Routing Information Protocol
- OSPF: Open Shortest Path First
- IGRP: Interior Gateway Routing Protocol 
- EIGRP: Enhanced Interior Gateway Routing Protocol
```

## OSPF Protocol

```ad-summary
title: Definition
A link-state routing protocol that uses flooding of link-state informationa nd a Dijkstra leat-cost path algorithm
```

**Features**:
1. Creates a complete topological map of the entire AS.
2. Link costa are configured to be either one by default, OR link weights that are inversely proportional to link capacity to avoid low-bandwidth links
3. Allows for creation of areas and autonomous systems
4. Minimizes rotuing update traffic
5. Flexible, versatile, and scalable
6. Supports VLSM/CIDR
7. Offers *unlimited* hop count
8. Is open standard and supports multi-vendor deployment
9. Speed up convergence if configured with areas
10. Confine network instability to single areas of the network

```ad-warning
DOES NOT mandate the policy for how link weights are set, but provides the emchanism for determining least-cost path routing given a set of link weights
```

```ad-important
A router also broadcasts a link's state periodically *at least every 30 minutes*, even if the link's state has **NOT** changed.
```

OSPF protocol checks that links are operational via a HELLO message that is sent to an attached neighbor.

### Advanced Features of OSPF

**Security**: All OSPF messages authenticated (to prevent malicious intrusion).

**Multiple Paths**: When multiple paths to a destination have the same cost, OSPF allows multiple paths to be used.

**Support for hierarchy within a single routing domain**: Perhaps the most significant advance in OSPF is the ability to structure an autonomous system hierarchically.

## OSPF Area

```ad-summary
title: Definition
A grouping of continguous networks and routers. All rotuers in the same area share a common area ID. Because a rotuer can be a member fo more than one area of a time, the area ID is associated with specific itnerfaces on the router. This allows some itnerfaces to belong to area 1 while the remaining interfaces can belong to area 0.
```

```ad-warning
There *must* be an area 0, this is typically considered the backgone area.
```

Allows for establishing a hierarchical network organization, enhancing the scalability of OSPF.

![[Pasted image 20241007094248.png]]

```ad-important
The router that connects ASs is called an **autonmous system boundary router (ASBR).**
```

### Process ID

A positive integers from 1 to 65535.
- Locally significant
- Allows for multiple OSPF processes on the same router.
- Used to differentiate between different processes running on the same router.

```ad-important
The OSPF process number doesn't have to be the same on all rotuers to establish a neighbor relationship, but the Area ID has to be the same on all neighboring rotuers for rotuers to become neighbors.
```


