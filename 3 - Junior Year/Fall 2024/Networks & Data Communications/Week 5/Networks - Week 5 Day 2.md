Date: 25th September 2024
Date Modified: 25th September 2024
File Folder: Week 5
#networks

```ad-summary
title: Today's Topics
- Static and Defualt Routing
```

# Static and Default Routing

## Router’s Serial Interface

	There are two types of devices that can communicate over a serial interface: Data Communication Equipment (DCE), and Data Terminal Equipment (DTE). A DCE provides a physical connection to a network and forwards traffic. A DTE connects to a network through a DCE device. Typically, a DTE device is connected to a DCE device (or vice versa) rather than other DTE device.
- DCE has to transmit the clock signal, which controls the data rate, and ther other sid e9DTE) receives the clock signal
- By default, Cisco routers are all data terminal equipment (DTE) devices, so you must *tell* an interface to provide clocking if you need it to act like a DCE device.

![[Pasted image 20240925090401.png]]

```ad-important
`show controller serial x/x/x` can help you see which router is DCE and which router is DTE and if they are properly setup
```

## Routing Table

```ad-warning
Downsides to Static Routing:
- Needs to be setup manually
- Needs to be changed if a cost changes in a link
- Needs to be updated if a link goes down manually.
- Is very time consuming to keep up
```

```ad-summary
title: Defintion
A routing table is a set of rules, often viewed in table format, that is used to dtermine where data packets traveling over an Internet Protocol (IP) network will be directed.
```

```ad-question
How does `Router1` know where is Network D?
```

*Answer*: We will have to set up a routing table in Router1 that will be sued to determine the path to each network in the system.

![[Pasted image 20240925090857.png]]

### Elements of a Routing Table $\star$

1. **Destination**: The IP address of the packet’s final destination
2. **Next Hop**: The IP address to which the packet is forwarded
3. **Interface**: The outgoing network interface the device should use when forwarding the packet to the next hop or final destination.
4. **Metric**: Assigns a *cost* to each available route so that the most cost-effective path can be chosen

### *Example*: Prepare the Routing Table for `Router1`

| Network Address | Subnet Mask     | Next-hop or Exit-interface |
| --------------- | --------------- | -------------------------- |
| 192.168.1.0     | 255.255.255.0   | Gig 0/0/0                  |
| 192.168.2.0     | 255.255.255.0   | 192.168.200.2              |
| 192.168.3.0     | 255.255.255.0   | 192.168.200.5              |
| 192.168.4.0     | 255.255.255.0   | 192.168.200.5              |
| 192.168.200.0   | 255.255.255.252 | s0/1/0                     |
| 192.168.200.4   | 255.255.255.252 | s0/1/1                     |
| 192.168.200.8   | 255.255.255.252 | 192.168.200.5              |
| 192.168.200.12  | 255.255.255.252 | 192.168.200.2              |
| 192.168.200.16  | 255.255.255.252 | 192.168.200.5              |

### *Example*: Prepare the Routing Table for `router2`

| Network Address | Subnet Mask     | Next-hop or Exit-interface |
| --------------- | --------------- | -------------------------- |
| 192.168.1.0     | 255.255.255.0   | 192.168.200.1              |
| 192.168.2.0     | 255.255.255.0   | Gig 0/0/0                  |
| 192.168.3.0     | 255.255.255.0   | 192.168.200.10             |
| 192.168.4.0     | 255.255.255.0   | 192.168.200.10             |
| 192.168.200.0   | 255.255.255.252 | s0/1/1                     |
| 192.168.200.4   | 255.255.255.252 | 192.168.200.10             |
| 192.168.200.8   | 255.255.255.252 | s0/2/0                     |
| 192.168.200.12  | 255.255.255.252 | s0/1/0                     |
| 192.168.200.16  | 255.255.255.252 | 192.168.200.10             |

## IP Routing

*Three* Types of Routing:
1. Static Routing
2. Default Routing
3. Dynamic Routing

### Static Routing

Manually adds routers in each router’s routing table

```ad-important
title: Command Syntax
`Router(config)#ip route [destination_network][mask][next-hop_address or exitinterface]`
```

**Command descriptions:**
- *ip route* The command used to create the static route
- *destination_network* The network you are placing in the routing table
- *mask*: The subnet mask being used on the network
- *next-hop_address*: The address of the next-hop router that will receive the packet and forward it to the remote network.
- *exitinterface*: You can use it in place of the next-hop address if you want, but it is got to be on a point-to-point link, such as a WAN. This command will nto work on a LAn such as Ethernet.

![[Pasted image 20240925093314.png]]

### Default Routing

![[Pasted image 20240925094824.png]]

```ad-summary
We use defualt routing to send packets with a remote destination network not in the routing table to the next-hop router. You can only use defualt routing on stub networks, those with only one exit path out fo the network.
```

By using a default route, you can just create one static route entry instead. This is also known as *Gateway of Last Resort*

`Router1(config)# ip route 0.0.0.0 0.0.0.0 serial 0/1/0`

```ad-important
This is used for edge-routers that are connected to the internet or another larger network
```
#### Default Routing for R2, R3, E4

`Router2(conifg)# ip route 0.0.0.0 0.0.0.0 s0/2/0`

`Router3(config)#ip route 0.0.0.0 0.0.0.0 s0/1/1`

`Router4(config)# ip route 0.0.0.0 0.0.0.0 s0/1/1`

