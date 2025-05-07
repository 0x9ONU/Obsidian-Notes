Date: 7th May 2025
Date Modified: 7th May 2025
File Folder: Week 15
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Denial-of-Service Attacks

## Introduction

```ad-summary
title: Definition
An action that prevents or impairs the auhtorized use of netowrks, systems, or applciations by exhausting resources such as CPU, memory, bandiwth, and disk space
```

**Three Main Categories**:
1. *Network Bandwidth*:
	- Relates to the bandwidth of the network links connecting a sever to the Internet
	- For most organizations, this is their connection to their ISP
2. *System Resources*: Aims to overload or crash the network handling software
3. *Application Resources*: Typically involves a number of valid requests, each of which consumes significant resources and thus limited the ability of the sever to respond to request from other users.

## Types of Attacks

1. **Protocol Based**
	- Ping of Death
	- Smurf DoS
	- SYN floods
	- Fragmented packets
- **Application-Layer**
	- GET/POST floods
	- Low-and-Slow attacks
- **Volume-based**
	- Spoof-Packet Floods
	- ICMP floods
	- UDP floods

## Classic DoS Attacks

**Flooding ping command**:
- Aim is to overwhelm the capacity of the network connection to the target organization
- Traffic can be handled by higher capacity links on the path, but packets are discarded as capacity decreases
- Source of the attack is clearly identified unless a spoofed address is used
- Network performance is noticeably affected

