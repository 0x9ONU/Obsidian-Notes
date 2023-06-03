Date: 2nd June 2023
Date Modified: 2nd June 2023
File Folder: Networks
#networks

```ad-note
title: ### Chapter One Overview
- A broad overview of computer networking
	- Has a lot of pieces of a computer network without losing the big picture
- Basic terminology and concepts
- Hardware and software components that make up a network
- Links and switches
- Access networks and physical media
- Internet as a network of networks
- Delay, loss, and throughput of data
	- quantitative models for end-to-end throughput and delay
- Key architectural principles in computer networking
- Vulnerability of computer networks
```

# 1.1 - What Is The Internet?

Can be defined in many different ways:
- The basic hardware and software components that make up the internet
- Networking infastructure

## 1.1.1 A Nuts-and-Bolts Description

```ad-faq
title: Term
**Hosts** or **End Systems** - Any device that is able to connect to the Internet
```

### Figure 1.1 - Basic Internet Layout

![[Pasted image 20230602201231.png]]

### Connecting End Systems

Each end system is connected together by a network of **commucnaiton links** and **packet switches**. 

Can be made up of many different materials:
- coaxial cable
- copper wire
- optical fiber
- radio waves

```ad-note
title: Term
**Transmission rate**
- The rate a *communication link* is able to transmit datea
- Measured in **bits/second**
```

### Packets

- A batch of data that is sent from one end system to another
- Is segemented down from the entire file being sent 
- Each packet has a set of header bytes

```ad-important
Even though the packets are sent separately, they can be reassebmled into the original data
```

### Packet Switches

Takes an incoming packet on its communciation links and forwards it to its destination thorugh its outgoing communciation links.

```ad-note
The two most common types of packet switches:
- **Routers**
	- Typically used in the network's core
- **Link-Layer swtiches**
	- Typically ued in an access network
```

```ad-summary
title: Route or Path
A sequence of packet switches and communciation links that a packet travels from one end system to another
```

### Packet-switched Network Allagory

Much like a transportation network that inlcudes highways, roads, and intersection with transport vehicles.

Imagining a factory that needs to move a large amount of cargo:
- It needs to load multiple *trucks* with some cargo (A Packet)
- Travel along highways and roads to get closer to the destination (Communication Links)
- Needs to change roads using intersections (Packet Switches)
- And arrvies at its destination (End System)

### Internet Service Providers (ISPs)

A network of packet switches and communcation links that are sold to customers in order to connect them to the Internet

Provide a variety of network access for end systems including:
- cable 
- DSL
- high-speed lcoal area network access
- mobile wireless access
- Servers directly to the Internet

```ad-important
To make the Internet work, ISPs must connect end systems with other end systems on other ISPs
```

Lower-level ISPs are interconnected to each other thorugh national and international ISPs which then directly connect to each other

Despite their differences, ***ALL*** ISPs are:
- Managed independently
- run the IP protocol
- Conforms to certain naming and address conventions

### Transmission Control Protocol (TCP) and the Internet Protocol (IP)

```ad-important
color: 255, 255, 0
The internet has *many* different protocols, but the two most important are the TCP and IP
```

**IP protocol**
- specifies the format of the packets sent and received by routers and end systems

These protocols and standards are developed by the **Internet Engineering Task Force**

They send out documents called *requests for comments* (RFCs) that solve an networking issue that services need to implement

## 1.1.2 - A Services Description

This chapter deals with descriping the internet in terms of *an infastructure that provides services to applications*

```ad-note
color: 235, 159, 200
title: Term
**Distributed Applications** - Applications that utilize mutiple end systems that exchange data with each other.
- Inlcudes:
	- Internet messaging
	- mapping
	- music streaming
```

```ad-important
color: 234, 100, 234
Internet applications ALWAYS run on end systems and not on packet switches in the network core.
```

### Socket Interface

Allows one program on one end system to instruct the Internet to deliver data to another program running on another end system.

This interface is a set of rules that the sending program must follow so the Internet can deliver the data to the destination

Much like how letters must be properly formatted for them to end up in the correct mailbox

## 1.1.3 - What Is a Protocol?

### Human Analogy

![[Pasted image 20230602212610.png]]

A proper conversation is a lot like how computers communicate with each other using protocols:
- Saying "Hi" starts a conversation with someone if they say hi back, much like a TCP connection request.
- The failure to hear "Hi" back means that the conversation cannot start and the conversation fails.

```ad-important
It comes down to a transmission and receipt of messages that result in actions that are taken based on what messages were sent and received
```

### Network Protocols

**ALL** activity between two or more communicating remote entities is govenered by a protocol on the internet.

These protocols control both hardware communciation and Internet communication

```ad-example
title: Example: Web server
- A computer will send a connection request message to the Web server
- The Web server will receive the message and send back a connection reply message if it is able to reply
- Now that the computer knows it is okay to communicate, it will send a GET message to fetch the Web page
- Then the Web server returns the Web page (file) to the computer
```

```ad-important
title: Protocol Definition
*The format and the order of messages* exchanged between two or more communicating entities, as well as *the actions* taken on the transmission and/or receipt of a message or orther event.
```













