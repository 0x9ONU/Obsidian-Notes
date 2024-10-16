Date: 16th October 2024
Date Modified: 16th October 2024
File Folder: Week 8
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Link Layer and CRC

## Link Layer Services

**Framing**: Encapsulate each network-layer datagram within a link-layer frame before transmission over the link

**Link Access**; A medium access control (MAC) protocol specifies the rules by which a frame is transmitted onto the link.

**Reliable Delivery**: A link-layer reliable delivery service can be achieved with acknowledgements and retransmissions. A link-layer reliable delivery service is often used for links that are prone to high error rates, such as a wireless link, with the goal of correcting an error locally. Seldom used on low-error links.

**Error Detection and Correction**: Errors caused by signal attenuation or electromagnetic noise. Link-layer can detect and correct the presence of errors.

```ad-note
MAC Addresses can be whitelisted, which means no one can connect on the link layer *unless* they match the table.
```

## Where is the Link Layer Implemented

Implemented on a network adapter or a WiFi adapter.

```ad-note
Special chip that implements many of the link-layer servicees
- hardware and software
```

*Sending Side*: The controller takes a datagram from network layer, encapsulates the datagram in the link-layer frame, and then transmits the frame into the communication link.

*Receiving side*: A controller receives the entire frame, and extracts the network-layer datagram.

![[Pasted image 20241016092656.png]]

```ad-note
This class does not worry about what *exaclty* the controller does. That is the focus of higher-level computer architecture
```

## Error Detection

### Parity Checking

*Single Bit Parity*:
- Add a single bit
- Detects isngle bit errors

*Evan Parity*:
- An additional bit (1 or 0) is added to make the total number of 1s is even.

*Odd Parity*:
- An additional bit (1 or 0) is added to make the total number of 1s is odd.

![[Pasted image 20241016092946.png]]

### Cyclic Redundancy Check (CRC)

```ad-note
MORE POWERFUL than parity checking.
```

Can detect all burst errors less than $r+1$ bits

```ad-example
Used in:
- Ethernet
- 802.11 WiFi
- ATM
```

![[Pasted image 20241016092953.png]]

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

### Time Division Multiple Accesss (TDMA)
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

### Frequency Division Multiple  Access (FDMA)
- Channel spectrum divided into frequency bands
- Each station assigned fixed frequency band
- Unused transmission time in frequency bands go idle

![[Pasted image 20241016094948.png]]

#### WiFi Channels

![[Pasted image 20241016095026.png]]

### Code Division Multiple Access (CDMA)
- Assigns a different code to each node
- Each node uses its unique code to encode the data bits
- Different nodes can transmit simultaneously, using same time and frequency.

