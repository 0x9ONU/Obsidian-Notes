Date: 30th September 2024
Date Modified: 30th September 2024
File Folder: Week 6
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Exam

**Six Questions**:
40 Multiple Choice Questions that make up FOUR questions. (10 per question)

**Two** Questions. One from HW #2 and one from HW #3

```ad-important
Check over *BOTH* lecture slides and lab
```

```ad-warning
LAB concepts will also be on the exam.
```

# Cybersecurity Awareness Day

There will be a writing assignment and attendance for the day.

# RIP Routing Day 2

## Removing RIP

The RIP routing protocol can be completely removed from the router by using:

```
Router(config)# no router rip
```

```ad-note
If you want to remove *only one* entry of a network it can be done as:

`Router(config-router)#no netowrk 192.168.2.0`
```

## Configuring **Default** Route using RIP

```ad-note
We use default routing to send packets with a remote destination networknot in the routing table to the next-hop router. By using a defualt route, you can create one static route entry instead.
```

```ad-warning
Default routing should be done thorough RIP instead on *each* router in the network.
```

```
Router4(config)#ip route 0.0.0.0 0.0.0.0 serial 0/1/0
```
^^ Gateway of Last Resort

The following set of statements are used to advertise this default route to the other routers in the networks through RIP:

```
Router4(config)#router rip
Router4(config-router)# default-information originate
```

### *Example*: RIP Default Route on Two Large Networks

![[Pasted image 20240930092049.png]]

*Step 1*: Preparing the Routers with default IP

**For Router4 and Router8**: Apply default routing in your Router4 and Router 8. View your Router4 and Router8 running configurations and make sure you see the correct default route statement in your router.

```
Router4(config)#ip route 0.0.0.0 0.0.0.0 serial 0/1/0
```
*Step 2*: Advertise default gateway

```ad-important
The following set of statements are applied to both routers to advertise this defualt route to other routers in the networks through RIP
```

```
Router4(config)# router rip
Router4(config-router)# default-information originate

Router8(config)# router rip
Router8(config-router)# default-information originate
```
*Step 3:* `show ip route` to confirm default routers

The routing table R4 and R8 can be seen using the command above. From there, it will have a list of routes, with the `S*` route showing the static default route.

![[Pasted image 20240930092655.png]]

*Step 4*: Confirm other routers

On all other router, view the output of the `show ip route`. You will notice a route `R*`, which indicates the default route injected through **RIP**.

![[Pasted image 20240930092827.png]]

## Preparing Routing Table using `show ip route`

```ad-question
Using the console output above, prepare the Routing Table.
```

| Network Address | Subnet Mask   | Next-hop or Exit-interface |
| --------------- | ------------- | -------------------------- |
| 192.168.1.0     | 255.255.255.0 | gig 0/0/0                  |
| 192.168.2.0     | 255.255.255.0 | 192.168.200.2              |

#comebacklater 

## RIP Auto-Summary

```ad-summary
RIP automatically summarizes along classful network boundaries.
```

So, if your router sees that several subnets of the same network all use the same path, and there are no subnets of this network using a different path, it will automatically summarize this information. 

```ad-warning
The routes to the individual subnets are *supressed*. This could lead to dropped packets if subnets are using *classless* ips
```

![[Pasted image 20240930093243.png]]

