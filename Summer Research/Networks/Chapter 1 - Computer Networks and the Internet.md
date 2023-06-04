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

**ALL** activity between two or more communicating remote entities is governed by a protocol on the internet.

These protocols control both hardware communication and Internet communication

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

# 1.2 - The Network Edge

This section focuses on the edge the network and its components

```ad-note 
color: 234, 234, 123

End systems are also know as *hosts* as they run applications that hold Web servers and all the functions of the internet

```

Hosts can be divided into two categories:
- **Clients**
	- Tend to be the customers of the Internet such as desktops, laptops, smartphones, and more
- **Servers**
	- More powerful machines that store and distribute files such as Web pages, videos, and run e-mail

## 1.2.1 -  Access Networks

```ad-important
title: Term
color: 70, 234, 143

The network that physicaly *connects an end system to the first router* on a path fromt he end system to any other distant end system
```

![[Pasted image 20230603103411.png]]

### Home Access: DSL, Cable, FTTH, and 5G Fixed Wireless

The two most common forms of broadband in residential areas are **digital subscriber line (DSL)** and **cable**

#### DSL

```ad-faq
title: Note

DSL is often obtained through a customer's telephone provider, which makes the telco the ISP

```

DSL modems take advantage of *the existing telephone line* to exchange data to the telco's central office (CO).

The modem turns the digital data into high-frequency tones to transmit over the wires.

From there, a Digital Subscriber Line Access Multiplexer (DSLAM) in the CO converts the tones back into digital data.

By doing this, the line is able to carry both internet traffic and telephone traffic using 3 different frequencies:
- A high-speed downstream channel, in the 50kHz to 1 MHz band
- A medium-speed upstream channel, in the 4 kHz to 50 kHz band
- The ordinary two-way telephone channel, in the 0 to 4 kHz band

A splitter on the customer's side separates the digital data and the telephone signals arriving to the house into two different signals

The DSLAM on the telco side separates the data and phone signals and sends the data into the internet.

![[Pasted image 20230603105315.png]]

```ad-summary
title: DSL standards

- Downstream transmission rates of 24 Mbs and 52 Mbs
- Upstream rates of 3.5 Mbps and 16 Mbps
- **THIS MAKES IT ASYMMETRIC**
```

```ad-note
- The telco is able to limit the speed of the internet to charge more for high rates.
- The max rate is also limited by: 
	- the distance between the home and the CO
	- The guage of the twisted pair line
	- degree of eletrical interface
```

DSL is used when the residence is within 5 to 10 miles from the CO, so a resident must you a different alternative if needed

#### Cable

Cable makes use of the cable television company's existing cable television infrastructure. 

Utilizes a system called **Hybrid Fiber Coax (HFC)**:
- A fiber cable from the cable company connects to a single fiber node that is able to serve 500 to 5,000 homes 
- The traditional coaxial cable from the original television connect each individual home to the fiber node.

```ad-important
Cable internet access requrie a special modem called a cable modem
- An external device that connects to a PC through an Ethernet port
```

The **Cable Modem Termination System (CMTS)**:
- turns the analog signal from the cable modems into a digital format.

![[Pasted image 20230603112413.png]]

The network is divided into two channels just like DSL and are *also asymmetric* with downstream having a higher bitrate than upstream

```ad-note
color: 255, 255, 0
title: DOCSIS 2.0 and 3.0 Standards
- Downstream bitrates of 40 Mbps and 1.2 Gbps
- Upstream bitrates of 30 Mbps and 100 Mbps.
```

Because cable Internet access used a shared broadcast medium, if several users are downloading a file at the same time, the download rate would be significantly lower than the aggregate cable speed.

#### FTTH (Fiber to the Home)

An up-and-coming technology that provides higher speeds by providing *a optical fiber path* from the CO directly the home

Multiple ways to have FTTH:
- Direct Fiber - One cable per home
	- Split Fiber - One cable shared by many homes using a splitter and smaller fiber
		- Active Optical Networks (AONs)
		- Passive Optical Networks (PONs)

##### Active Optical Networks (AONs)

Switched Ethernet

##### Passive Optical Networks (PONs)

- Each home has their own Optical Network Terminator (ONT)
- It is connected to its own fiber
- This fiber goes to a neighborhood splitter
- The splitter then sends the data over a main optical fiber to the CO
- The Optical Line Terminator (OLT) converts the optical and electrical signals to digital data and sends it to the router

![[Pasted image 20230603113319.png]]

```ad-note
The packets sent from the OLT to the splitter are **replicated at the splitter**
```

### Access in the Enterprise (and the Home): Ethernet and WiFi

#### Local Area Network (LAN)

Connects end systems to the edge router using various means, but **Ethernet** is the most common.

Ethernet Setup:
- Use a twisted-pair copper wire that connects end systems to an Ethernet switch
- The Ethernet switch(s) is then connected into he larger internet 

![[Pasted image 20230603114940.png]]

```ad-summary
title: Note
color: 243, 100, 100
- User have 100 Mbps to 10s of Gbps of access to the Ethernet switch
- Severs may have 1 Gbps to 10 Gbps access.
```

##### Wireless LAN/WiFi

- Access points are placed around an enterprise's buildings 
- These access points are connected to the network using wired Ethernet
- Wireless users transmit and receive packets to and from the access point

```ad-note
The user must often be within a few tens of meters from the access point for it to work
```

This technology is based off the IEEE 802.111 technology which was termed as WiFi.

```ad-note
color: 231, 50, 199

Today, homes combine LAN technology with their broadband access to create powerfu home networks
![[Pasted image 20230603115116.png]]
```

### Wide-Area Wireless Access: 3G and LTE 4G and 5G

- Is used by phones to access the internet while on the go
- Uses the same wireless infrastructure used for cellular telephones and has a base station that is able to send and receive packets
- Allows a user to be much farther away from a base station unlike WiFi

## 1.2.2 Physical Media

For data to travel from one place to another, the data must be propagated into electromagnetic waves or optical pulses and then sent across a **physical medium**

Two types of physical mediums:
- Guided Media
	- A solid media that is often a cable of some kind
- Unguided Media
	- Waves sent into the atmosphere and outer space.

### Twisted-Pair Copper Wire

- Least Expensive
- Most Commonly Used
- Two insulated copper wires arranged into a regular spiral pattern
	- Done to reduce electrical interference
	- Can be bundled together using a shield between each pair
	- Each pair is a single communication link

**Unshielded Twisted Pair (UTP)**:
- Most common wiring used for computer networks within a building and LAN
- Transfers between 10 Mbps to 10 Gbps

### Coaxial Cable

- Consists of two copper conductors like twisted-pair
- However, they are concentric rather than parallel
- They are able to achieve high data transmission rates. 
- Most commonly used for cable television
- The transmitter turns the digital signal into a specific frequency band 
- The analog signal is then sent from the transmitter to one or more receivers
- Can be used as a guided *shared medium*
	- Multiple end systems can connect directly to a single cable

### Fiber Optics

- Thin, flexible medium that conducts pulses of light, with each pulse representing a bit.
- 10s to 100s Gbps
- Immune to electromagnetic interference
- Low signal attenuation
- Very hard to tap
- Most commonly used for long distances and for overseas connections
- Is typically more expensive to install due to the cost of the transmitters, receivers, and switches

```ad-note
title: Note: Optical Carrier standard link speeds
- Range from 51.8 Mbps to 39.8 Gpbs
- Referred to as OC-$n$ where the speed equals $n * 51.8$ Mbps
```

### Terrestrial Radio Channels

- Uses electromagnetic spectrum to transmit signals
- Carries signals through physical mediums and long distances without the need of cables

```ad-warning
- Can suffer due to:
	- Shadow fading
		- A decrease in signals strength due to distance or objects
	- Multipath fading
		- Signal reflection off of interfering objects
	- Interference
		- Other transmissions and electromagnetic signals
```

Three broad groups of radio channels:
- Very short distance (1-2 meters)
	- Wireless headsets, keyboards, medical devices
- Local distance (a few hundred meters)
	- Wireless Lan technologies
- Wide area (tens of kilometers)
	- Cellular access technologies

### Satellite Radio Channels

- Links two or more ground stations
	- microwave transmitters/receivers 
- The satellite:
	- receives transmissions
	- regenerates the signal using a repeater
	- transmits the signal on another frequency

#####  Geostationary Satellites

- Permanently remains above the same spot on Earth
- Around 36,000 kilometers above Earth's surface
- Has a signal propagation delay of 280 milliseconds
- Signals can still have high-speeds
- Used in areas where DSL or cable-based internet is limited

##### Low-Earth Orbiting (LEO) 

- Placed much closer to Earth
- Do not remain in one permanent location above Earth
- Communicate with each other and other base stations


# 1.3 - The Network Core

The Network Core is a group of packet switches that connects the rest of the internet together

![[Pasted image 20230604165857.png]]

## 1.3.1 - Packet Switching

```ad-note
title: Definintion
**Messages**
- What end systems exchange with each other
- Can contain:
	- Control Function
	- Data
```

To send messages, the end system breaks up the message into **packets**

To get to the destination, the packets go through communication links and **packet switches**.

```ad-note
Packets are transmitted at the *full* transmission rate of the link. Meaning it will take $L$ bits over $R$ trasnmission rate seconds ($\frac{L}{R}$)
```

### Store-and-Forward Transmission

A protocol that makes sure that a packet switch must *receive the entirety of the packet* before it is able to transmit any data to the outward link
- The most common protocol for packet switches
- It buffers within the packet switch in order to account for the lag caused by the communication links


```ad-important
Due to Store-and-Forward Transmission, for each packet switch between the end systems, it will take $nL/R$, where $n$ is the number of communication links, to transmit a single packet from one end system to another.
```


![[Pasted image 20230604172324.png]]

### Queuing Delays and Packet Loss

**Output Buffer/Queue** - Stores packets that the router is about to send into a link
- There is one output buffer for *every attached link* within a packet switch

```ad-important
title: Queuing Delays
If a packet that has completely arrived cannot go into the link it must go into, it will expereince a **queuing delay** and wait within an output buffer.
- This can lead to **packet loss** if all the output buffers are full
- Packet loss leads to one of the relady-queued packets or the arriving packet to be dropped
```


![[Pasted image 20230604181455.png]]

### Forwarding Tables and Routing Protocols

There are many ways that a packet switch determines which communication to send the packet.

On the Internet, **IP addresses** are used.
- Every end system has an IP address
- The destination's IP address is added to each packet header and sent off to the packet switch.

IP addresses have a hierarchical structure and part of the packet's address can be examined to determine which communication line the packet switch chooses.

```ad-important
Each router ahs a **fowarding table** that maps out the destination addressed to the router's outbound links.
- Determines which line the packet is sent down
```

```ad-note
Special **routing protocols** are used to automatically set the fowarding tables. 
```