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
- Is segmented down from the entire file being sent 
- Each packet has a set of header bytes

```ad-important
Even though the packets are sent separately, they can be reassebmled into the original data
```

### Packet Switches

Takes an incoming packet on its communication links and forwards it to its destination through its outgoing communication links.

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
Special **routing protocols** are used to automatically set the fowarding tables. They set the shortest possible path from each router to teach destination.
```

## 1.3.2 Circuit Switching

The other fundament approach to moving data through a network.

Unlike a packet-switched network, a circuit switch network is *reserved* and **does not have any queue** to access a communication link.

```ad-example
An example of a circuit-swtiched network is the traditional telephone networks
- A *bona fide* connection must be made between the sender adn the receive before any data can be passed.
- This connection will remain constant until the connection is broken
```

When it comes to circuit switched networks, for each host, there must be another switch, so it can support up all the connections between each end system simultaneously. 

**End-to-end connections** - Created when a network establishes a *dedicated* link between two hosts. Prevents any possible buffering due to internet traffic congestion.

![[Pasted image 20230604185233.png]]

### Multiplexing in Circuit-Switched Networks

A circuit can be implemented through either:
- **Frequency-Division Multiplexing (FDM)**
	- A frequency band across the link is dedicated to each connection for the entirety of the connection.
	- The **bandwidth** of the connection determines the width of these frequency bands.
	- ![[Pasted image 20230604190935.png]]
- **Time-Division Multiplexing (TDM)**
	- Time is divided into a frame that has a fixed duration. 
	- it is further divided into a fixed number of time slots.
	- On connection, the network dedicates one time slot for that device on every frame.
	- $$ TransmissionRate = frameRate * numberOfBits $$
	- ![[Pasted image 20230604190943.png]]

```ad-note
Circuit-swtiched networks can have **silent periods** where there is no traffic during periods of idle. Some say that it is wasteful when it comes to resources
```

```ad-important
The transimission time is **indepednet** of the number of links.
- A transmission would take the same amount of time regardless if it pases through one link or one hundred links.
```

### Packet Switching Versus Circuit Switching

#### Packet-Switching

```ad-check
title: Packet-Switching Pros
- Offers better sharing of transmission capacity
- Simpler
- More efficient
	- The chance that there are too many simultaneous users that overflow a link is very slim
	- Thus, packet swtiching provides essentially the same speed as circuit switching, while providing up to **3 times** as many users
	- Can continuously send packets regardless of time or frequency
- Less costly
- Alllocates link use on demand
```

```ad-warning
title: Packet-Switching Cons
- Unpredictable end-to-end delays
```

#### Circuit-Switching

```ad-check
title: Circuit-Switching Pros
color: 154, 205, 50
- Pre-allocates use of the transmission link regardless of demand

```

```ad-warning
title: Packet-Switching Cons
color: 249, 108, 98
- Can support less users per link
- Struggles with large amounts of packets
- Unneeded link time goes unused
```

## 1.3.3 A Network of Networks

In order for the Internet to be connect with each other, each ISP must be interconnected with each other
- This creates a *network of networks*

```ad-warning
title: Note
Each access ISP *directly* connecting to each other would be too expensive and a waste with how many communication links needed
```

To understand it better, a few hypothetical scenarios were created:

### *Network Structure 1*

This network structure interconnects **all** of the access ISPs with a *single global transit ISP*

```ad-warning
This is, again, not practical as it would be very costly for each router per access ISP and the number of communciation links. It would make it so the global ISP would have to charge to stay in business
```

**Provider** - The ISP who chargers customers, which can be residents or *other* ISPs, for traffic through their network

**Customer** - The ISP or resident who pays another higher-level ISP for access to their network to forward their traffic to where it needs to go

### *Network Structure 2*

This network structure has *multiple* global ISPs that connect all the access ISPs with each other and themselves
- Leads to a two-tier hierarchy
	- Global transit providers at the top tier
	- access ISPs at the bottom tier
- This assumes that the global transit ISPs are able to get economically close with each access ISP

### *Network Structure 3*

```ad-note
In reality, a single ISP does not have rpesence in each and every city in the world.
```

Thus, **Regional ISPs** are needed to be the middleman between access ISPs in the region and higher-tier ISPs.

**tier-1 ISPs** - The highest tier ISPs that connect to every regional ISP and provides global access for the world
- NOTE: tier-1 ISPs, despite being the highest tier, still do not have presence in every place in the world.

```ad-example
title: Examples of tier-1 ISPs
Ther around around a dozen which includes:
- Level 3 Communications
- AT&T
- Sprint
- NTT
```

This hierarchy continues the customer-provider relationship at every level:
- The access ISPs pay the regional ISP for their network access
- The regional ISPs pay for the access on the tier-1 ISPs network

```ad-note
There may be another larger regional ISP that connects smaller regional ISPs to a tier-1 ISP, which leads to an even more levels of hierarchy
```

### *Network Structure 4*

To make a network that is more like today's internet, a few different additions are needed:

#### Points of Presence (PoPs)

A group of one or more routers in the provider's network where customer ISPs can connect into the provider ISP
- Exists at every level of the hierarchy except at the access ISP level
- Allows a customer ISP to rent out a high=speed link from a third-party
- It connects the customer to the provider at a faster rate than without a PoP

#### Multi-home

Where an ISP chooses to connect to two or more provider ISPs
- Any level of ISP may multi-home with any ISP higher than itself

```ad-example
An access-level ISP may home with multiple Regional ISPs as well as multiple tier-1 ISPs if they want
```

```ad-important
This allows an ISP to send and receive packets into the Internet even if **one of its providers has a failure**
```

#### Peering

When two or more nearby ISPs at the same level choose to **directly connect their networks together**
- The traffic then passes between them instead of upstream intermediaries

```ad-note
Peering is often settlement-free and **neither ISP pays the other**
```

```ad-important
This is most prevalent with tier-1 ISPs who all peer with each other to provide global Internet access
```

#### Internet Exchange Point (IXP)

A meeting point where multiple ISPs can peer together
- Created by a third-party
- Typically stand-alone with their own switches

### *Network Structure 5*

Most closely describes today's Internet by adding **content-provider networks**

#### Content-Provider Networks

Large tech companies that have many of their own servers that make up a large part of the Internet, but are still private in nature
- Connects to lower-tier ISPs through peering 
- Connects to higher-tier ISPs through IXPs
- ==Reduces the payments to upper-tier ISPs==
- ==Greater control of how its services are ultimately delivered to the end users==

![[Pasted image 20230605125937.png]]

# 1.4 - Delay, Loss, and Throughput in Packet-Switched Networks

Even though it is ideal to move as much data as fast as possible between two end systems without any loss of data, it is impossible. Thus:
- **Throughput** (the amount of data per second that can be transferred) is constrained
- Delay between end systems is introduced
- Packets will be lost

## 1.4.1 Overview of Delay in Packet-Switched Networks

At each node along the path from the source to the destination of a packet, there is a delay.

```ad-example
The most important of these delays include:
- **Nodal processing delay**
- **Queuing delay**
- **Transmission delay**
- **Propagation delay**
```

The combination of all the delay from all the nodes is called the **total nodal delay**

### Types of Delay

![[Pasted image 20230605131034.png]]

```ad-summary
title: Reminder
Router A is connecting multiple end systems to router B
- A packet can be transmistted on a link only after it:
	- has been processed
	- there is no packet being transmitted on the link
	- there are not toehr packets preceding it in the queue
```

#### Processing Delay

The time required to **examine the packet's header** and *determine where to direct the packet*.
- Typically within microseconds or less

#### Queuing Delay

The delay experienced when a packet waits to be transmitted onto the link.
- Depends on the number of packets that arrived before the current packet
- Can be as low as zero (no packets within the queue) or long (many packets in the queue)
- From microseconds to milliseconds in practice

#### Transmission Delay

The delay caused by the fact that the packet can only be transmitted only after all the packets before it have arrived.
- The amount of time required to push all of the packet's bits into the link
- From microseconds to milliseconds of delay in practice

```ad-important
The delay of transmission can be donoted by $L/R$ where:
- $L$ is the length of the packet in *bits*
- $R$ is the rate of transmission between the two routers in *Bits per second*
```

#### Propagation Delay

The time required to propagate from the beginning of the link to to the next destination.
- The propagation time depends on the medium of the link
- In the order of milliseconds

```ad-example
title: Reminder - Types of Physical Links
- Fiber optics
- Twisted-pair copper wire
```

```ad-note
This propagation speed is in the range of $2*10^8$ meters/sec to $3*10^8$ meters/sec
- This equal to or less than the speed of light
```

**Propagation Delay** is measured in $d/s$ where:
- $d$ is the distance between routers (meters)
- $s$ is the propagation speed of the link (meters/sec)

### Comparing Transmission and Propagation Delay

```ad-important
color: 234, 100, 180
- The transmission delay is a function of the packet's length and tranmission rate of the link, but has **NOTHING** to do with **distance between routers**
- Propagation delay is a function of the distance between two routers, but has **nothing** to do with **the packet's length** and the **transmission rate** of the link
```

#### Total Delay Formula

$$ d_{nodal} = d_{proc} + d_{queue} + d_{trans} + d_{prop} $$

```ad-note
Any of these variables can either be negligible to significant depending on the situation
```

## 1.4.2 Queuing Delay and Packet Loss

$d_{queue}$ is the most complicated out of all the delays:
- One of the most well-research subjects when it comes to computer networking
- It can vary from packet to packet
- Often characterizing using statistics
	- Average queueing delay
	- variance of queuing delay
	- probability that the queuing delay exceeds some specific value.

```ad-example
If 10 packets arrive at an empty queuea t the same time, the first packet transmitted will suffer no queuing delay, while the last packet will suffer heavy delay
```

### Traffic Intensity

**Traffic Intensity** can be measured using the ratio $La/R$ where:
- $L$ is the assumed amount of bits in each packet
- $a$ is the average rate at which the packets arrive at the queue
- $R$ is the transmission rate of how fast the packets are pushed out of the queue

```ad-note
If this ratio $La/R > 1$, then the average rate of how fast the bits arrive in the queue exceeds the rate at which the bits can be transmitted from the queue
- This will cause the queueing delay to aproach infinity the longer the system runs
```

```ad-important
To design a working network system, the traffic intensity should be **no greater than 1**
```

When $La/R \le 1$, the arriving traffic impacts how long the queuing delay is:
- If there is packets arriving to an empty queue, the delay will be 0
- If packets arrive in bursts, there will be a significant average queuing delay.

```ad-summary
In general, the $n$th packet of a sequence of packets will have a queueing delay of $(n-1)L/R$ seconds
```

```ad-note
color: 180, 90, 170
These definitions are more academic as packets arrive *randomly* between either periodically and in batches. However, it can be used to estimate how the packets are arriving:
- If the traffic intensity is close to zero, the packets are arriving fewer and farther between
- If the traffic intensity is closer to one, the packets are arriving more frequently and are more liikkely to **exceed the transmission capacity**
```

As the traffic intensity approaches 1, the average queuing delay increases **rapidly**. 
- This means small increases in intensity lead to massive increases in delay.

![[Pasted image 20230605150818.png]]

### Packet Loss

```ad-note
Due to the queue capacity being finite, the packet delay caused by queuing does not approach infinity as the traffic intensity approaches 1
```

If a packet arrives at a router that has a full queue, the router is forced to drop that packet, which causes **packet loss.**

From the end systems side, a lost packet will:
- look like a packet was put into the network core, but never emerged
- increase the number of lost packets as network intensity increases

## 1.4.3 End-to-End Delay

Assuming that there are $N - 1$ routers between hosts and the queuing delays are negligible, the **end-to-end delay** is given by the following equation:

$$ d_{end-end} = N(d_{proc} + d_{trans} + d_{prop}) $$

```ad-note
title: Reminder
$$d_{trans} = L/R$$
```

### Traceroute

It is a simple program that can run in any Internet host that is able to help visualize end-to-end delay.
- It sends multiple, special packets that then send back short messages that contains the name and address of the routers along the the way to the destination.
- It will send $3*N$ special packets for every $N - 1$ routers.
	- The $n$th packet will be delivered to the other end system and send back one final message
	- It does the route 3 times due to there being $3*N$ packets
- It also records the total time between when a packet is sent out and when the router returns it

```ad-note
color: 234, 255, 0
- The first column is the packet number
- The second column is the name of the router
- The third column is the address of the router
- Column four-six are the round-trip delays for the three routes taken
```

![[Pasted image 20230605155435.png]]

```ad-important
Sometimes, the routers later on the network has *less* delay even though they are farther away. This is due to the transatlantic fiber-otpic link between routers, which has a large propagation delay.
```

### End System, Application, and Other Delays

End systems that transmit packets into a shared medium can also introduce delays *on purpose* in order to provide a medium for more than one end system:
- WiFi and cable modem

Voice-over-IP (VoIP) applications might add media packetization delay by having to encode the speech into a digital format before sending it out.

## 1.4.4 - Throughput in Computer Networks

End-to-end throughput is crucial in measuring the performance of a computer network.

### Instantaneous Throughput

The rate (in bit/sec) at any *instant of time* to which the host is receiving the file
- This is what speedtest websites show when testing a network

### Average Throughput

Measured by the formula $F/T$ bits/sec where:
- $F$ is the number of bits
- $T$ the time in seconds for the host to receive all $F$ bits

```ad-note
color: 234, 150, 234
Some applications care more about throughput than others
- Internet telephony needs to have low delay and instantaneous throughput *consistency*
- On the other hand, file transfers, delay is not necessary and the throughput must be **maximize**
```

### Bottleneck link

For a simple setup with a server, a router, and a client, there are two communication links that have rates of $R_s$ and $R_c$:

![[Pasted image 20230605162306.png]]

```ad-important
**The slowest link** will determine the end-to-end throughput of the entire transmission. This link is known as ==**the bottleneck link**==.
```

```ad-note
This is just an approximation and does not account of store-and-forward, processing delays and protocol delays
```

```ad-warning
Due to the slowest link being the limiting factor in a network, the **access network** is often the blame for throughput on the Internet due to the core of the Internet have fast rates on their communciation links.
```

```ad-summary
- Throughput depends on the transmission rates of the links over which the data flows
- With no intervening traffic, a throughput can be an approximated by the mimimum transmissionr ate along the path.
- However, *intervening traffic* may cause the bottleneck to be placed on the **high transmission rate link**
```

# 1.5 - Protocol Layers and their Service Models

```ad-check
title: Good News
Organizign a network architecture in both the real world and in the small-scale internet created **is possible** despite its complexity
```

## 1.5.1 - Layered Architecture

When descripting a complex issue such as airline travel, often **a series of actions that are taken** are described.

![[Pasted image 20230606092440.png]]

However, this direct approach is not perfect for describing the Internet. These steps need some sort of *structure* to be completed. 

```ad-example
There is two ticket functions, two baggage functions, two gate functions, two runway functions, and three airplane routing functions
```ad-note
Each of these functions can be further broken down into 3 *horizontal* groups that represent each stage of air travel
```

![[Pasted image 20230606093241.png]]

```ad-note
Each column has a set of functionalities called **services**:
- The level above will end up at the next above level
```

Each layer provides its service by:
- Performing certain actions within that layer
- Using the services of the layer directly below it

```ad-important
By using layered architecture, a specific part of a large and complex system is able to be defined and discussed
- Provides modularity
	- As long as the layer provides the same service to the layer above it, and uses the same services from the laeyr below it
```

### Protocol Layering

Much like the above example, network protocols are organized into **layers**. 
- Each protocol belongs to a layer
- Each layer provides a **service** for the layer above by:
	- performing certain actions within that layer
	- using the services of the layer directly below it.

```ad-note
These protocols can be implemented at both the hardware, software, or both!
```

Network interface cards are responsible for handling communications over a specific link and are found in Ethernet or WiFi interface cards 

```ad-important
Each layer of the network architecture is *distributed* across different software and hardware:
- end systems
- packet swtiches
- other network components
```

```ad-danger
title: Drawbacks of Layering
- One layer may **duplicate** a lower-layer's functionality
- Functionality at one layer may need information that is present in another layer that it should not be able to access, **violating the separation of layers**
```

### Protocol Stack

The protocols of various layers combined and contains the following layers:
- Application
- Transport
- Network
- Link
- Physical

```ad-note
It can be taken both from a top-down to bottom-up approach
- This book teaches the top-down appraoch
```

![[Pasted image 20230606101934.png]]

#### Application Layer

Where network applications and their application-layer protocols reside.

```ad-example
title: Application-layer Protocols
These include:
- ##### HTTP
	- Provides Web document request and transfer
- ##### SMTP
	- Provides for the transfer of e-mail messages
- ##### FTP
	- provides the transfer of files between two end systems
- ##### DNS (Domain Name System)
	- Translates human-friendly anems for the Internet end systems toa  32-bit network address
```

These protocols are distributed over **multiple end systems**. The end systems exchange packets called **messages** with each other

#### Transport Layer

Responsible for transporting application-layer messages between application endpoints

```ad-example
color: 234, 180, 234
title: Transport-layer Protocols
- ##### TCP
	- Provides a connection-oriented service to its applications
	- guarnteed delivery of applciation-layer messages to the destination
	- flow control
		- send/receiver speed matching
	- breaks long messages into shorter segments
	- provicees a congestion-control mechanism
		- the sender automaticall throttles its transmission rate whent eh network is congested
- ##### UDP
	- A connectionless service
	- Does **NOT** provide the following:
		- reliability
		- flow control
		- congestion control
```

```ad-note
color: 255, 255, 0
Transport-layer packerts are also called **segments**
```

#### Network Layer

Responsible for moving network-layer packets known as **datagrams** from one host to another
- Provides the service of delivering the segments from the transport-layer to **the transport layer in the destination host**

```ad-important
The Network Layer runs off of the **IP protocol**
- Defines the fields in the datagram
- Defines how the end systems and routers act on these feilds
- The only protocol that **all** components on the network layer must run
```

```ad-note
color: 0, 255, 255
The Internet also uses multiple different routing protocols
- Determines the routes that the datagrams take betweens sources and destinations
- Each network admin may choose to use a different routing protocol
```

#### Link Layer

**Moves a packet from one node to the next node** on the route designated by the network layer
- Once the network layer hits a node, the network layer passed their datagram to the link layer to deliver it to the next node
- Dependent on the specific link-layer protocol that is employed over the link

```ad-example
title: Link-Layer Protocols
color: 70, 234, 100
- Ethernet
- WiFi
- DOCSIS
	- cable
```

Link-layer packets are known as **frames**

#### Physical Layer

Moves *individual bits* from within the link-layer's frame from one node to the next.
- Link dependent once again

```ad-example
title: Physical Layer Protocols
- Twisted-pair copper wire
- single-mode fiber optics
- Coaxial Cable
- Radio
```

## 1.5.2 - Encapsulation

![[Pasted image 20230606110323.png]]

The Figure shows the physical path that the data takes down to sending a packet from one host, to a router, to the other host











