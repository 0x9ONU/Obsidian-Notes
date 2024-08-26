Date: 26th August 2024
Date Modified: 26th August 2024
File Folder: Week 1
#networks

```ad-summary
title: Today's Topics
- Syllabus
- Internetwork Design Introduction
```

# Syllabus

Textbook has already been obtained

```ad-important
Reference books for the Cisco CCNA Certification Exam are provided for free through an e-book service. Links are in the *syllabus*
```

**Tools**
- Tools will be provided through canvas and *must* be the same version
- CiscoPacketTracer & Wireshark

**Weekly Time Breakdown**
- Three Classes (3 Hours Total)
- Network Lab (3 Hours)
- Weekly Homework (1 Hour)
- Weekly Computer Assignment (3 Hours)
- Formal Lab Report (3 Hours)
- Reading & Writing Assignment (1 Hour)

```ad-warning
Plagarism is a 10% reduction in *overall* grade
```

**AI Policy**
- May be used for idea generation & sentence enhancement

**File Policy**
- All assignments are submitted with *two* files
	- **PDF File**
	- **.pkt File**

**Late Policy**
- 40% off for homework being late. 
- They will not be accepted two days after the due date.

**Lab Policy**
- Without a reason, missing a lab is an automatic zero

# Internetwork Design

```ad-summary
title: What is a Network?
A group or system of interconnected things
```

## What is a Computer Network?

- A system of interconnected devices that can communicate using some common standard (called *protocol*)

## What is the Internet?

- A computer network interconnects hundreds of millions of computing devices throughout the world.

![[Networks - Week 1 Day 1 2024-08-26 09.39.24.excalidraw]]


## Some Pieces of the Inernet

**HOsts or End Systems:**

- Computing devices that are any client computer or server machine.
- Connected together by a network of communication links and switches. Different links can transmit data at different rates, with the transmission rate of a link measured in bits/second.
- Can be wired or not wired
- The information that is sent between these systems using **packets**
	- Includes a header that includes the source & destination IP addresses
	- A single message/command is sent in multiple packets and is reassembled inot the original data

```ad-example
- Cell Phone
- PC
- Smart Fridge
```

![[Networks - Week 1 Day 1 2024-08-26 09.41.28.excalidraw]]

## Broadcast Domain

A domain in which a broadcast is forwarded
- contains all devices that can reach each other at the data link layer by using broadcast
- Broadcast traffic *makes* broadcast domains

![[Screen Shot 2017-06-18 at 4.19.22 PM.png]]

## Collision Domain

The part of a network where packet collision can occur
- When a host is sending and receiving a packet *at the same time*
- When two devices send a packet at the same time on the shared network segment. The packets collide and both devices must send the packets again, which reduces network efficiency.

## Network Components

### Hub

Connects two or more end systems together!
- Network is called a *Local Area Network*
- Typically used in Small Office HOme Office Network

```ad-warning
Only contains *ONE* collison domain and *ONE* broadcast domain
```

![[General Notes/images.png]]

### Switch

Switches take packets arriving on one of its incoming communication links and forwards that packet on one of its outgoing communication links.

```ad-important
Breaks up collison domains!
```

The network is still just one *broadcast domain*, each of the ports have a collision domain.

![[Pasted image 20240826094957.png]]

