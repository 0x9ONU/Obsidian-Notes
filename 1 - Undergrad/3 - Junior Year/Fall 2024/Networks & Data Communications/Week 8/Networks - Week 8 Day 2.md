Date: 18th October 2024
Date Modified: 18th October 2024
File Folder: Week 8
#networks

```ad-summary
title: Today's Topics
- Mac Protocols
	- Channel Partitioning
	- Random Access
	- Taking Turns
```

# Mac Protocols

## Multiple Access Links and Protocols

Two types:\

1. *Point-to-point Link*
	- PPP for dial-up access
	- Point-to-point link between Ethernet switch, host
2. *Broadcast (Shared Wire or Medium)*
	- The term broadcast is sued here because when any one node transmits a frame, the channel broadcasts the frame and each of the other nodes receives a copy
	- Old-fashioned Ethernet 
	- 802.11 wireless LAN

![[Pasted image 20241016093834.png]]

```ad-warning
**SIngle Shared Broadcast Channel**: Two or more simulataneous trnamission by nodes lead to interference and *collide*
```

```ad-summary
title: Definition
**Multiple Accesss Protocol**: Distributed algorithm that determiens how ndoes hsare channel, i.e., determine when node can transmit. Communicaiton about channels sharing must use channel itself.
- No out-of-band channel for coordination
```

## Categories

Three broad calsses:

*Channel Partitioning*: Divide channel into smaller “pieces” (time slots, frequency, code). Allocate a piece to a node for exclusive use

*Random Access*: Channel is not divided, allows collisions. “Recover'" Collisions

*Taking Turns*: Nodes take turns, but nodes with more data to send can take longer turns

### Channel Partitioning

#### Time Division Multiple Accesss (TDMA)
- Access to channel in “rounds”
- Each station gets fixed length slot in each round
- Unused slots go idle

```ad-example
6-Station LAN. 1, 3, 4 have packets to sned, slots 2, 5, 6 idle
![[Pasted image 20241016094843.png]]
```

```ad-note
Each slot length is equal to the packet transmission time
```

```ad-warning
A central system sets a central server who assigns the time slot. If this clock loses accuracy, then it can lead to the system falling apart.
```

#### Frequency Division Multiple  Access (FDMA)
- Channel spectrum divided into frequency bands
- Each station assigned fixed frequency band
- Unused transmission time in frequency bands go idle

![[Pasted image 20241016094948.png]]

```ad-warning
Frequency is very expensive and limited. Often only a few systems can use FDMA
```

##### WiFi Channels

![[Pasted image 20241016095026.png]]

#### Code Division Multiple Access (CDMA)
- Assigns a different code to each node
- Each node uses its unique code to encode the data bits
- Different nodes can transmit simultaneously, using same time and frequency.

### Random Access Protocols

Packets are sent at a full channel data rate $R$ with no prior coordination among nodes.
- Can lead to collisions between transmitting nodes

```ad-important
Random access MAC protocol specifies:
- How to detect collisions
- How to recover from collisions
```

```ad-example
- Slotted ALOHA
- ALOHA
- CSMA, CSMA/CD, CSMA/CA
```

#### Slotted ALOHA

*Assumptions*
- All frames same size
- Time divided into equal size slots (time to transmit 1 frame)
- Nodes start to transmit only slot beginning
- nodes are synchronized
- If 2 or more nodes transmit in slot, all nodes detect collision

*Operation*: When nodes obtains fresh frame, transmits in next slot
- **If no collision**: node can send new frame in next slot
- **If collision**: node retransmits frame in each subsequent slot with probability $p$ until success

![[Pasted image 20241018091435.png]]

*Pros*: 
- Single active node can continuously transmit at full rate of channel
- Highly decentralized: only slots in nodes need to be inn sync
- Simple

*Cons:*
- Collisions, wasting slots
- Idle slots
- Nodes may be able to detect collision in less than time to transmit packet
- Requires clock synchronization to find starting point of slot

##### Efficiency

```ad-summary
title: Definition
**Efficiency**: Long-run fraction of successful slots (many nodes, all with many frames to send)
```

*Assuming*: $N$ nodes with many frames to send, each transmit in slot with probability $p$

Probability that given node has success: $=p(1-p)^{N-1}$

Probability that *any* node has a success $= Np(1-p)^{N-1}$

**Max efficiency**: find $p^\star$ that maximizes $Np(1-p)^{N-1}$

For many nodes, take limit of $Np^\star(1-p^\star)^{N-1}$ as $N$ goes to infinity gives:

$$\mbox{Max Efficiency} = 1/e = .37$$

```ad-warning
At best, channel used for useful transmission 37% of the time!
```

#### Pure (unslotted) ALOHA

```ad-summary
Simpler with no clock synchornization when frame first arrives
```

This *increases* the probability of a collision

![[Pasted image 20241018092520.png]]

##### Efficiency

$$\mbox{Maximum Efficiency of Pure ALOHA} = 1/(2e)=.18=18\%$$

```ad-danger
EVEN WORSE than slotted ALOHA! THis is nearly half the maximum efficiency of Slotted ALOHA
```

#### CSMA (Carrier Sense Multiple Access)

*CSMA*: Listen before transmission:
- **if channel sensed idle**: Transmit entire frame
- **if channel sensed busy**: defer transmission

```ad-note
Human analogy: do not interrupt others!
```

##### CSMA Collisions

*can* still occur: Propagation delay means two nodes may not hear each other’s transmission

**Collision**: Entire packet transmission time wasted:
- Distance & propagation delay play role in determining collision probability. The longer this propagation delay, the larger the chance that a carrier-sending node is not yet to sense a transmission that has already begun at another node

![[csma1.gif]]


#### CSMA/CD

Carrier sensing, deferral as in CSMA
- Collision *detected* within short time
- Colliding transmission aborted, reducing channel wastage collision detection:
	- Easy in wired LANs: Measure signal strengths, compare transmitted, received signals
	- Difficult in wireless LANs: Received signal strenght overwhelmed by local transmission strength

![[unnamed.gif]]
#### Ethernet CSMA/CD algorithm

1. NIC receives datagram from network layer, creates frame
2. IF NIC senses idle channel, start frame transmission. IF NIC senses busy, wait until idle
3. IF NIC transmits frame without detecting another frame, NIC is done with that frame
4. If NIC detects another transmission while transmitting, aborts transmission
5. After aborting NIC enters *binary (exponential) backoff*:
	- After $m$th collision, NIC chooses $K$ at random from $\{ 0, 1, 2, …, 2^{m-1}\}$. NIC waits $K*512$ bit times, returns to Step 2
	- Longer backoff interval with more collisions

### Taking-Turns MAC Protocols

```ad-note
Takes both the efficiencies of sharing a channel effciency and fairly from channel partitioning while allowing single nodes to fully utilize a channel like random access MAC protocols
```

*Polling Protocol*:
- Master node “invites” slave nodes to transmit in turn, typically used with “dumb” slave devices

Concerns:
- Polling overhead
- latency
- single point of failure (master)

```ad-note
Bluetooth protocol uses polling
```

#### Polling Protocol

The polling protocol *requires*:
- One of the nodes to be designated as master node. The mast node sends a message to node 1. After node 1 transmits some frames, the master node then tells node 2 it can transmit.

The master node can determine:
- Whena  node has finished sending its frames by observing the lack of a signal on the channel.
- The procedure continues in this manner, with the master node polling each of the nodes in a cyclic manner

![[Pasted image 20241018095232.png]]

#### Token-Passing Protocol

Controls *token* passed from one node to next sequentially

Concerns:
- Token overhead
- Latency
- Single point of failure (token)

![[Pasted image 20241018095241.png]]

## Summary

**Channel Partitioning**: By time, frequency or code
-  Time Diviison, Freuqnecy Division, Cod eDivision

**Random Access** (dynamic):
- ALOHA, S-ALOHA, CSMA, CSMA/CD
- Carrier sensing: easy in soem technologies, but hard in others (wire vs wireless)
- CSMA/CD used in Ethernet
- CSMA/CA used in 802.11

**Taking Turns**:
- Polling from central site, token passing
- Bluetooth, FDDI, token ring

