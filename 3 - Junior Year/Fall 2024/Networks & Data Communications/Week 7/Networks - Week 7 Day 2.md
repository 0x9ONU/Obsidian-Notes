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

