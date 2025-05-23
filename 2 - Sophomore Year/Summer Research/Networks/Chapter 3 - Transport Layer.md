Date: 7th June 2023
Date Modified: 7th June 2023
File Folder: Networks
#networks

# 3.1 - Introduction and Transport-Layer Services

A transport-layer protocol provides **logical communication** between different hosts:
- Assumes that the hosts are right next to each other
- Does **not** worry about the the physical infrastructure of the network layer, link layer, or the physical layer 

```ad-note
Transport-layer protocosl are implemented in the **end systems only**
```

An incoming message from the application-layer is broken down into smaller transport-layer **segments** that have header data and a payload
- the payload within encapsulates the part of the previous message

The segment is then further encapsulated by a network-layer datagram and sent to the destination

```ad-note
Since the segment is encapsulated by the datagram, network routers do not have access to the segment and do not act upon it
```

![[Pasted image 20230607134713.png]]

## 3.1.1 Relationship between Transport and Network Layers

Transport layers provide logical communication between *processes* running on different hosts, while the network-layer protocol provides logical communication between *hosts*. 

```ad-example
###### Analogy for how the transport-layer and network-layer differ
- Application messages - letters in envelopes
- Processes = Cousins who wrote the letters
- Hosts = Houses
- Transport-layer protocol = One cousin who collects all the mail and moves it to the mailbox and distributes the mail from the mailbox
	- Within their respective homes
- Network-layer protocol = Postal Service (including mail carriers)
```

```ad-note
Every computer network might make multiple transport protocols available
- Each protocol will have a different service model for the application-layer
```

**The transport-layer's services are constrained by the service model of the underlying network-layer protocol**
- Makes it so there is no guarantee for delay or bandwidth between process as the network-layer cannot provide estimates between hosts

```ad-important
Despite this, some services *can* be offered regardless:
- Offers reliable data transfer serice to an application
- Can use encryption to guarantee that application messages are not read by intruders, even whent eh network layer cannot guarantee the confidentiality of transport-layer segments
```

## 3.1.2 - Overview of the Transport Layer in the Internet

```ad-summary
title: Reminder
There are two distinct transport-layer protocols:
- **UDP (User Datagram Protocol)**
	- Provides an unreliable, connectionless service for applications
- **TCP (Transmission Control Protocol)**
	- Provides a reliable, connection-oriented service to the invoking application

```ad-note
color: 255, 255, 0
The application developer while making network applications can choose between the two protocols
```


### Brief Summary of the Internet's Network Layer

The **IP protocol** provides logical communication between *hosts* using a **best-effort delivery service**
- Makes *no guarantees that every segment is delivered* between communicating hosts
- Makes it an **unreliable service** as some segments can be either corrupted or lost

On top of this, every host has an *IP Address* that is used by the network to deliver the datagram between hosts

### Fundamentals of UDP and TCP

They are both created to extend IP's delivery service between two end systems to a *delivery service between two processes* running on the end system

This process is known as **transport-layer multiplexing** and **demultiplexing**

```ad-important
Both protocols also provide integrity checking through error-detection fields in the segments' headers
```

```ad-warning
Due to UDP providing only process-to-process data delivery and error delivery, it provides an **unreliable service**
- It does not guarantee that the data sent to one process will arrive at all
```

```ad-check
TCP provides **reliable data transfer** through:
- Flow Control
- Sequence Numbers
- Achknowledgments
- Timers
- **Congestion Control**
	- Prevents any one any oen TCP connection from swamping the links and routers between communciating hosts with extra traffic
	- Regulates the rate at which the TCP connections send traffic into the network

```ad-note
This turns IP's unreliable service iunto a reliable data transport service
```

# 3.2 - Multiplexing and Demultiplexing

Extending the host-to-host delivery service provided by the network layer to a process-to-process
- Necessary for ALL computer networks

```ad-note
title: Definition
color: 234, 180, 234

**Sockets** - Doors through which data passes from the network to the *process* and through which data pases from the *process* to the network
- The receving host's transport layer brings the segment to the socket before sending it to the process
- Each socket has their own ID with different formats depending on if they are a UDP or a TCP socket
```

**Demultiplexing** - The job of delivering the data in a transport-layer segment *to* the correct socket
- Uses a set of fields in the segment to get it there

**Multiplexing** - Has the job of:
- gathering data chunks at the source host from sockets
- Encapsulating each data chunk with header information
- Create segments
- Passing the segments to the network layer

![[Pasted image 20230607170408.png]]

As shown above, the middle host *demultiplexes* the incoming traffic to either socket $P_1$ or $P_2$. 

It may then have to gather the outgoing data from these sockets, create segments, and pass these segments down to the network layer

```ad-important
Transport-layer multiplexing requires *two primary things*:
- **Source port number field**
	- Unique fields for each socket
- **Destination port number field**
	- The special fields in each segmetn that indicate the socket to which the segment is to be dlivered to
```

**Source port number fields** are 16-bit integers (ranging from 0-65535)

```ad-note
color: 0, 255, 255
**Well-known Port Numbers**
- The port numbers ranging from 0 to 1023
- Restricted and reserved for well-known application protocols
- Further outlined in the RFC 1700

```ad-example
These protocols can include:
- Port 80: HTTP
- Port 21: FTP
```

***This process described above is essentially how UDP transfers data***

![[Pasted image 20230607171634.png]]

### Connectionless Multiplexing and Demultiplexing

When a UDP socket is created in the standard manner shown below:
- The transport layer automatically assigned a port number from 1024 to 65535
- Addtionally, using the ``bind()`` method, it can be assigned a specific port

```python
clientSocket = socket(AF_INET, SOCK_DGRAM) # Creating a default socket
clientSocket.bind(('', 19157)) # Assigning a Socket a specific port
```

```ad-note
Typically, client-sided applications automatically assgin the port number, where sever side applications assign a specific port number (this is done on purpose)
```

#### Overview of UDP Multiplexing/Demultiplexing
- Host A creates a transport-layer segment that includes the following:
	- Application data
	- Source port number
	- the destination port number
	- two *other* values
- The segment is passed to the network layer
- The segment becomes encapsulated in an IP datagram and *tries* to make it to Host B
- Host B then receives the segment that was from the IP datagram
- The transport layer at Host B then uses the destination port number in the segment and delivers it to its socket identified by the number

```ad-note
color: 255, 255, 0
Host B could be running multiple processes that have their own UDP socket and port number.
- Host B demultiplexes each segment to the appropriate socket by examining the segment's destiantion port number.
```

```ad-important
A UDP socket is fully identified by a *two-tuple* consisting of a destination IP address and a destination port number. 
- The destination IP and Port determine where the segments goes to
```

##### Why the Source Port Number?

Allows for a host to **return** a segment back to its original destination.

```ad-note
In terms of the UDP server created in python, the ``recvfrom()`` method was used to return the client side port number so it is able to send a new segment back
```

![[Pasted image 20230607175636.png]]

### Connection-Oriented Multiplexing and Demultiplexing

Unlike a UDP socket, a TCP socket is identified by a *four-tuple* and uses all four values to demultiplex the segment to the right socket:
- Source IP address
- Source port number
- Destination IP address
- Destination port number

```ad-warning
title: Difference

Two arriving TCP segmetns with different source IP addresses or soruce port numbers will be directed to two *different* sockets instead of the *same* socket
```

#### TCP Client-Sever Overview

##### Step 1: Welcoming Socket
- The server has an open welcoming socket that waits for connection from a TCP client on **port number 12000**

##### Step 2: Creating the Connection-Establishment Request
- The TCP client creates a socket and sends a connection establishment request with the following lines:
```python
clientSocket = socket(AF_INET, SOCK_STREAM)
clientSocket.connect((severName, 12000))
```
- A  connection establishment request is a special TCP segment with:
	- the destination port number of 12000 
	- A connection establishment bit that is set HIGH
	- A source port number that was chosen by the client

##### Step 3: Server Receiving the Request 
- The segment is received and is moved to port 12000 and finds the server process that is waiting to accept the connection
- A new socket is then created using:
```python
connectionSocket, addr = serverSocket.accept()
```

```ad-note
All segments that arrive from the client side must have all of the following to be accepted through this new socket:
- The source prot number
- the IP address of the client
- The destination port number
- Its own IP address as the destination
```

By doing these steps, a server host may support many TCP connection sockets with their own process and its own four-tuple socket identifiers.

![[Pasted image 20230607180857.png]]

### Web Servers and TCP

When a host is running a Web server on a specific port, *all* the segments will have the **same destination port**:
- Initial connection-establishment segments
- Segments carrying HTTP request messages

```ad-note
A server may either open a new connection socket for each connection it receives. However, with the current web, there is usually *only single process that has multiple threads and multiple sockets*
- Additionally, if a client has a non-persistent HTTP requests, then a new TCP connection is created and closed to free up space on the server's ports 
```

# 3.3 - Connectionless Transport: UDP

UDP typical does the barebones that a transport protocol can do.
- Multiplexing/Demultiplexing
- Light error checking
- Has **NOTHING** to do with IP
- Take messages from the process, attaches source and destination port numbers, and hopes IP brings them to the correct place

```ad-note
Because there is **no handshaking** between the sending and receiving transport-layer entities *before sending a segment*, UDP is said to be **connectionless** 
```

```ad-example
UDP is typically used by **DNS**:
- DNS application on a host creates a DNS query message using UDP and sends it off
- It does not perform a handshake and it is sent off to the network-layer after adding the proper header messages
- The IP datagram then tries to find the host 
- The DNS application waits for a reply from the query
- If there is no reply:
	- try resending the query
	- sending the query to another name server
	- infrom that the other application that it cannot get a reply
```

### Reasons to use UDP over TCP

```ad-summary 
title: Reason 1: Finer application-level cotnrol over what data is sent, and when
- UDP will automatically pass a created segmetn tot he network layer
- TCP, on the other hand, has a built-in congrestion-control mechanism that throttles the transport-layer sender when a link between the soruce and sitination has become congested
- UDP does not have to wait for a connection-establishment request
```

```ad-summary
color: 255, 255, 0
title: Reason 2: No connection establishment
- TCP will *always* use a 3-way handshake before it starts to transfer data
- UDP does not and does not introduce any delay to establish a connection
- Addtionally, through protocols such as QUIC (Quick UDP Internet Connection), use application-layer programs that add reliability on top of UDP to prevent the downside of losing data
```

```ad-summary
title: Reason 3: No connection state
color: 234, 180, 243
- TCP will maintain a connection state in the end systems
	- receive and send buffers
	- congestion-control parameters
	- sequence and acknowledgment number parameters
- UDP does not maintain a connection state or track these parameters
	- Thus, a server devoted to a certain application can support many more active clients with UDP over TCP
```

```ad-summary
title: Reason 4: Small packet header overhead
color: 150, 250, 100

The TCP segment has 20 bytes of header overhead data, while **UDP only uses 8 bytes of overhead**
```

### Which Applications Use TCP or UDP?

| Application                   | Application-Layer Protocol | Underlying Transport Protocol    |
| ----------------------------- | -------------------------- | -------------------------------- |
| Email                         | SMTP                       | TCP                              |
| Remote terminal access        | Telnet                     | TCP                              |
| Secure remote terminal access | SSH                        | TCP                              |
| Web                           | HTTP, HTTP/3               | TCP (for HTTP), ==UDP (for HTTP/3)== |
| File transfer                 | FTP                        | TCP                              |
| Remote file server            | NFS                        | Usually ==UDP==                      |
| Streaming multimedia          | DASH                       | TCP                              |
| Internet telephony            | Typical Proprietary        | ==UDP== or TCP                       |
| Network management            | SNMP                       | Typically ==UDP==                    |
| Name translation              | DNS                        | Typically ==UDP==                                 |

```ad-note
TCP is used by applications when they need reliable data transfer services, while UDP is used when data is needed to be sent immediately
```

```ad-note
color: 255, 255, 0
UDP is usually ran by mutlimedia applications, but must be done with care:
- If UDP is let wild with streaming platforms, the routers will become clogged with traffic and a lot of UDP packets will be lost
- TCP will also suffer due to its congestion control pulling the sending and receiving rate to a halt
```

## 3.3.1 - UDP Segment Structure

![[Pasted image 20230608105945.png]]

**Application data occupies the data field**

```ad-example
With DNS, the data feidl contains either a query message or a response message
```

The UDP header has *only four fields*, each consisting of **two bytes**
- Source port number
- Destination port number
- Length field
	- specifies the number of bytes in the UDP segment (Header plus Data)
- Checksum
	- Used by the receiving host to check whether errors have been introduced into the segment
	- Calculated over a few of the fields in the IP header as well

## 3.3.2 - UDP Checksum

Is used to determine whether bits within the UDP segment have been altered as it moved from source to destination.

```ad-important
UDP at the sender side performs the **1s complement of the sum of all the 16-bit words** in the segment, with *any overflow being wrapped around*

```ad-example

![[Pasted image 20230608110955.png]]

Then the 1s complement of the sum 0100101011000010 is **1011010100111101**
```ad-note
The carry from the MSB of the addition is carried into the next 16-bit addition
```

At the receivers end, all four 16-bit words are added with the checksum. 
- If there **were no errors introduced**  into he packet, the sum at the receiver's end will be ``1111111111111111``

### Reason Why UDP Introduces Checksums

Since there is no guarantee that all the links between the source and the destination provide error checking
- One of the links may use a link-layer protocol that does not provide error checking

Additionally, when a packet is stored in a router, it may scramble a bit when it is in its memory

```ad-important
color: 234, 180, 254
Because UDP cannot rely on link-layer or in-memory error detection, it must provide error detection at the transport layer *on an end-to-end basis*
- **end-end principle** - certain functionality must be implemented on an end-end basis as functions placed at tghe lower levels may be redundant or of little value when compared to the cost of providing them at the higher level.

```

# 3.4 - Principles of Reliable Data Transfer

```ad-note
Reliable Data Transfer occurs at many different layers along the network:
-  Transport layer
-  Link layer
- Application Layer
```

![[Pasted image 20230608113752.png]]

In the service framework above, it promises that no transferred data bits are corrupted or lost, and are delivered in the order in which they were sent.

**A reliable data transfer protocol** is meant to implement this service abstraction.
- Difficult as the layer below it (the network layer) may be unreliable
	- Could include anything from a single physical link (link-layer is needed) all the way up to a global internetwork (transport-level is needed )

```ad-summary
title: The interfaces of the data transfer protocol
- The sending side will be invoked by calling ``rdt_send()``
	- It passes the data to be delivered to the upper layer at the receiving side
- The receiving side will call ``rdt_rcv()`` when a pakcet arrives fromteh receiving side
- Will then call ``deliver_data()`` when it is ready to deliver the data to the upper layer
```

```ad-note
This section only considers **unidirectional data transfer**
- Data transfer from the sending to the receiving side
```ad-warning
**Bidirectional data transfer** is not much mroe difficult conceptually, but is much more complex to specific explain
```

## 3.4.1 - Building a Reliable Data Transfer Protocol

A series of protocols will be explained that are added onto each other until a flawless and reliable data transfer protocol is created

### Reliable Data Transfer over a Perfectly Reliable Channel: ``rdt1.0``

This version assumes that nothing bad could ever happen when transferring data

``rdt1.0`` has a **finite-state machine (FSM)** for both the sender ***and*** the receiver:

![[Pasted image 20230608115537.png]]

#### Sending Side
The sending side of ``rdt`` simply accepts data from the upper layer via the ``rdt_send(data)`` event and then does the following:
- Creates a packet containing data (using the ``make_pkt(data)`` command)
- Sends the packet into the channel (using the ``udt_send(packet)`` command)
	- Would result from a procedure call (like ``rdt_send()``) by an **upper level application**

#### Receiving Side
``rdt`` receives the packet from the underlying channel via ``rdt_rcv(packet)`` event and then does the following:
- Removes the data from the packet (via ``extract(packet, data)``)
- Passes the data up to the upper layer (via ``deliver_data(data)``)
	- Would result from a procedure call (such as ``rdt_rcv()``) from the **lower-layer protocol**

### Reliable Data Transfer over a Channel with Bit Errors: ``rdt2.0``

Assumes that on top of what happens in ``rdt1.0``, the underlying channels may cause a packet to be corrupted due to physical components of the network

By using both **positive acknowledgments** and **negative acknowledgements** allow the receiver to let the sender know:
- What has been received correctly (positive)
- What as been received in error and thus requires repeating (negative)

These reliable data transfer protocols that are based on retransmission are known as **ARQ (Automatic Repeat reQuest) protocols**

#### What Must An ARQ Protocol Accomplish?

```ad-summary
title: Goal 1: Error Detection
Allow the receiver to detect when bit errors have occurred.
- Require extras bits to be sent from the sender to the receiver
- These bits will be gathered into the packet checksum field of the ``rdt2.0`` packet
```

```ad-summary
title: Goal 2: Receiver Feedback
color: 234, 190, 234
Due to being on different end systems, the only way for the sender to learn of the receiver's view of the world is for the receiver to provide explicit feedback to the sender
- Sends positive (ACK) and negative (NAK) acknowledgement packets back from the receiver to the sender
- Can be as little as 1 bit long

```

```ad-summary
title: Goal 3: Retransmission
color: 255, 255, 255
A pakcet that is received in error will be retansmitted by the sender
```

#### ``rdt2.0`` Description

This FSM representation of ``rdt2.0`` utilizes a data transfer protocol that is able to use error detection with positive and negative acknowledgments

![[Pasted image 20230608122205.png]]

##### Sending side

Unlike the previous example, this FSM has two states:
- The leftmost state
	- waiting for data to be passed down from the upper layer
	- When ``rdt_send(data)`` event occurs:
		- the sender will create a packet (``sndpkt``) containing:
			- The data to be sent
			- the packet checksum
		- Send the packet via ``udt_send(sndpkt)`` operation
- The rightmost state
	- Awaits for an ACK or a NAK packet form the receiver:
		- If ACK is received:
			- The sender knows that the most recently transmitted packet has been received correctly (``rdt_rcv(rcvpkt)`` AND ``isACK(rcvpkt)``)
			- returns to the state of waiting for data from the upper layer.
		- If NAK is received:
			- The protocol retransmits the last packet
			- Await for another ACK or NAK to be returned by the receiver in response

```ad-important
While in the wait-for-ACK-or-NAK state, the protocol cannot get mroe data form the upper layer as the ``rdt_send()``event cannot occur
- Will only happen have the sender reives an ACK packet to go back to the previous state
- Makes this protocol known as the **stop-and-wait** protocols
```

##### Receiving Side

Still has a single state like before.

On packet arrival:
- The receiver replies with either an ACK or a NAK depending on whether or not the received packet is corrupted (``rdt_rcv(rcvpkt)`` and ``corrupt(rcvpkt)``)

```ad-danger
``rdt2.0`` has the one fatal flaw that the ACK or NAK packet could be corrupted!
```ad-check
title: Solution
ACK/NAK packets need to have their own checksum bits in order to detect such errors.
```

To solve the problem with how the protocol should recover from ACK or NAK packet errors can be done in three possible ways:

```ad-note
title: Possible Solution 1
color: 254, 52, 126
Utilzing a new type of sender-toreceiver packet to the protocol
- Sends a packet to ask for the retransmission of the ACK or NAK packet
```ad-warning
Could run into a infinite pass back and forth as the receiver could also receive this packet corrupted as well
```

```ad-note
title: Possible Solution 2
color: 255, 255, 0
To add enough checksum bits to allow the sender not only to detect, but recover from, bit errors.
- Solves the problem for a channel taht can corrupt packets but not lose them
```

```ad-note
color: 0, 255, 255
title: Possible Solution 3
The sender simply to resend the current data packet when it receives a garbled ACk or NAK 
- Can lead to issues with **duplicate packets** that the receiver does not know is a new packet or is a repeat packet
```

#### Fixing ``rdt2.0`` with ``rdt2.1``

The solution with fixing the problem described above is to add a new field to the data packet:
- The sender will number its data packets with a **sequence number** into the field
- The receiver will then only have to check the sequence number to determine it is a new packet or a retransmission

```ad-note
This new fixed version still assumes the following:
- Only a 1-bit sequence number will be needed because of the stop-and-wait protocol
- ACK and NAK packets do not need sequence numbers as we are assuming that a channel does **not** lose packets
```

``rdt2.1`` has twice as many states in their FSM in both for the sender and the receiver:
- Due to how the state must reflect whether the packet is currently being sent or expected can *also* have a sequence number of 0 or 1

![[Pasted image 20230608134356.png]]

![[Pasted image 20230608134220.png]]

It also uses both positive and negative acknowledgements form the receiver and the sender:
- When an out-of-order packet is received, the receiver sends an ACK for the packet it has received.
- When a corrupted packet is received, the receiver sends a NAK

```ad-important
When the sender receives back a **duplicate ACK** for the same packet, the sender knows that the receiver did not correctly receive the packet that was ACKed twice.
```

### ``rdt2.2`` going NAK-free from ``rdt2.1``

The receiver must now include the sequence number of the packet being acknowledged by an ACK message
- Done by including the ``ACK, 0`` or ``ACK, 1`` during the ``make_pack()`` command in the receiver FSM

The sender must now check the sequence number of the packet being acknowledged by a received ACK message
- Done by including the `0` or `1` in the `isACK()` in the sender's FSM

![[Pasted image 20230608141921.png]]

![[Pasted image 20230608141936.png]]

### Reliable Data Transfer over a Lossy Channel with Bit Errors: `rdt3.0`

Now we assume that the underlying channel can *lose* packets as well, which can be pretty common today.

```ad-warning
To solve this, two addtional concerns must now be addressed by the protocol:
- **How to detect packet loss?**
	- A new protocol mechanism must be used
- **What to do when packet loss occurs?**
	- Can be solved by using check-summing, sequence nubmers, ACK packets, and retransmissions used in `rtd2.2`
```

#### Detecting Packet Loss

Many different ways to, but in this rdt, the burden of detecting and recovering from lost packets on the sender.

In the case of the actual packet or the ACK packet being lost, the sender realizes that there is no reply on the packet that was sent.
- The sender judiciously chooses a time value for when packet loss may have happened and retransmits the packet

```ad-note
Because of this, the sender may send another packet based on particularly large delays, even when the packet has not been lost and introduces **duplicate data packets**, which is already solved!
```

Regardless if the packet was lost, the ACK was lost, or either are experiencing a large delay, a **countdown timer** is implemented in order to interrupt the sender after a given amount of time

```ad-important
Thus, the sender must be able to do the following:
- Start the tiemr each time a packet is sent
- Respond to a timer interrupt
- Stop the timer
```

#### Describing the FSM for `rdt3.0`

![[Pasted image 20230608142315.png]]

This protocol reliably transfer data over a channel that can corrupt or lose packets
- The protocol operates with no lost or delayed packets and how it handles lost data packets

![[Pasted image 20230608142933.png]]

This `rdt3.0` protocol is also sometimes known as the **alternating-bit protocol** due to the sequence numbers alternating between 0 and 1.

## 3.4.2 Pipelined Reliable Data Transfer Protocols

Even though a stop-and-wait protocol can function correctly, the performance can be lack-luster

![[Pasted image 20230608143757.png]]

```ad-example
Assuming that:
- there are two hosts with one being on the West Coast and the otehr on the East Coast.
- the round-trip progatation delay, $RTT$, is around 30 miliseconds
- The channel is connected with a transmission rate, $R$, of 1 Gbps
- The packet size, $L$ is 1,000 bytes
- The for the sender to transmit the packet into the link is:

$$ d_trans = \frac{L}{R} = \frac{8000 bits}{10^9 bits/sec} = 8 microseconds$$
```

The packet will then make a 15-msec journey with the last bit of the packet emerging at the receiver at $t = RTT/2 + L/R = 15.008 msec$ . 

Assuming that the ACK does not provide any additional delay, the sender receives the ACK at $t = RTT + L/R = 30.008 msec$.

The formula below shows that there was very poor **utilization** of the sender as the sender was only actively sending data for a small fraction of the time:

$$ U_sender = \frac{\frac{L}{R}}{RTT + \frac{L}{R}} = \frac{.008}{30.008} = 0.00027$$
This means that the sender had an effective throughput of only 267 kbps on a 1 Gbps link!

```ad-check
title: Solution
To solve this, the sender should be allowed to send multiple packets without wating for acknowledgements
- Can triple the utilization of the sender!

![[Pasted image 20230608145746.png]]

```ad-important
This process is know as *pipelining* 
- A reliable data transfer protocol is able to send multiple packets at once and packet the connection link as much as it can
```

### Consequences of Pipelining

```ad-warning
title: Consequence 1
The range of sequence numbers must be increased as each packet needs a unique sequence number
```

```ad-warning
title: Consequence 2
color: 255, 255, 0
The sender and receiver sides of the protocols may have to buffer more than one packet
- Might have to be done by only the sender or **both**
```

```ad-warning
title: Consequence 3
color: 255 , 160, 100
The range of seqeucne numbers needed and buffering required willd epend on how the data transfer protocol responds to **lost, corrupted, or overly delayed packets.**
```ad-check
title: Solution
Two basic approaches exist for pipelined error recovery:
- **Go-Back-N**
- **Selective Repeat**
```

## 3.4.3 Go-Back-N (GBN)

The sender is allowed to transmit multiple packets without waiting for an acknowledgement
- **Constrained** to have no more than *some maximum allowed number* $N$ of unacknowledged packets in the pipeline
- Also know as the **sliding-window protocol**

![[Pasted image 20230608161416.png]]

**Base** - The sequence number of the oldest unacknowledged packet

**Nextseqnum** - The smallest unused sequence number

**Window Size $N$** - A range of sequence numbers whose packets have been transmitted, but not yet acknowledged

With these two values, **four internals** can be created:
- [0, base-1] represents the packets that have already *been transmitted and acknowledged*
- [base, nextseqnum-1] corresponds to packets that have been sent but **not yet acknowledged**
- [nextseqnum, base+N-1] can be used for packets that can be sent immediately with data from the upper layer
- **base+N** and greater **cannot** be used until an unacknowledged packet currently in the pipeline has been acknowledged

```ad-note
A packet's sequence number is a fixed-length field int he packet header and various based on *k* bits:
$$[0,2^k -1]$$
```

```ad-important
Because there is a finite range of sequence numbers, all arithmetic involving sequence numbers **must** be done using **module $2^k$ arithmetic**
- Meaning that adding $1$ to $2^k-1$ would make it roll over to $0$

```

### Extended FSM of a GBN protocol

```ad-note
This is an *extended* FSM because there are variables for both `base` and `nextseqnum`
```

#### Sender

***The GVN sender must respond to three types of events:***

```ad-summary
title: Event One: Invocation from above
color: 254, 52, 126
- A packet will only go through if:
	- `rdt_send()` is called from the application-layer
	- The window is not full
- If the window happens to be full, the transport-layer will return the packet back to the upper layer to try again after the window has an empty space
```

```ad-summary
title: Event Two: Receipt of an ACK
color: 150, 50, 170
A packet with the sequence number $n$ will be taken as a **cumulative acknowledgment**
- All the packets with a sequence number up to $n$ have been received correctly
```

```ad-summary
title: Event Three: A Timeout Event
color: 100, 100, 255
A timer, like the stop-and-wait protocol, is used to recover from lost data or acknowledgment packets.
- On timeout, the sender resends **all** packet that have been sent and *NOT* acknowledged
- When an ACK is received but there are still unacknowledged packet, the timer is restarted
- The timer stops when there are no outstanding, unacknowledged packets
```

![[Pasted image 20230608164917.png]]

#### Receiver

If a packet with the correct sequence number $n$ is received correctly and is in order (with the last approved packet being $n-1$):
- The receiver sends an ACK for packet $n$
- Delivers the data portion of the packet to the upper layer

*otherwise*:
- Discards the packet
- Sends an ACK for the most recently received in-order packet

```ad-note
If a packet $k$ has been received and delivered to the upper layer, then all packets with a sequence number lower than $k$ have also been delivered
```

```ad-important
Because the sender will always resend a packet that was sent out-of-order in the case of a packet loss, The receiver does not need to buffer **ANY** out-of-order packets
```

The receiver only has to maintain the sequence of the next in-order packet (with the variable `expectedseqnum`)

![[Pasted image 20230608165717.png]]

#### Overview and Implementation

![[Pasted image 20230608170705.png]]

The extended FSM is very close to the actual implementation

**Event-based programming** - The various procedures are called either by other procedures in the protocol stack, or as the result of an interrupt.

## 3.4.4 - Selective Repeat (SR)

```ad-warning
Even though GBN is much more efficient than stop-and-wait protocols, a single error can lead to a lot of unnecessary retransmissions as the probability of error increases with each error
```

These protocols avoid unnecessary retransmissions by having the sender retransmit only those packets that it suspects were received in error
- This means that the receiver will have to *individually* correct received packets

The window is reused from GBN, but unlike GBN, some of the sender's packets within the window will already be acknowledged

```ad-important
The SR receiver will acknowledge a correctly received packet *whether or not it is in order*
- The out-of-order packets are buffered until any missing packets are received
```



![[Pasted image 20230608172812.png]]

#### SR Sender Events

```ad-summary
title: Event One: Data Received From Above
The SR sender checks the next available sequence number for the packet.
- If it is within the window, the data is packeted and sent
- Otherwise, it is either buffered or sent back
```

```ad-summary
title: Event Two: Timeout
color: 234, 234, 234
The timers are used to protect against lost packets
- Each packet *must* have their **own logical timer**
- Can be replicated by a single hardware timer
```

```ad-summary
title: Event Three: ACK Received
color: 255, 255, 0
The SR sender marks that packet as have been received if it is in the window
- If the packet's sequence number is equal to `send_base`, thne the widnow base is moved foward to the closest unacknowledged packet
- Untrqansmitted packets that were in the buffer are now transmitted
```

#### SR Receiver Events


```ad-summary
title: Event One: Packet with Sequence number in [`rcv_base`, `rcv_base` + $N -1$] is correctly received
Recevied packets that fall within the receiver's window and a selective ACK packet is returend to the sender
- Buffered if out-of-order
- If the packet missing packet arrives with the base `rcv_base`, every packet is consecutively delivered to the upper layer
- The receive window is moved  byt eh number of packets delivered to the upper layer
```


```ad-summary
title: Event Two: Packets with Sequence Number in [`rcv_base-$N$`, `rcv_base`-1] is correctly delivered
color: 234, 234, 234
An ACK must be genreated, even though this is a packet that the receiver has previously acknowledged

```

```ad-summary
title: Event Three: Otherwise
color: 255, 255, 0
**Ignore the Packet**
```

![[Pasted image 20230608175125.png]]

#### Importance of Re-Acknowledging Previously Received Packets

By acknowledging packets outside of the receiver window, it makes sure that **the sender window moves along with the receiver window**:
- These windows do not always coincide, but the sender window could get stuck behind the receiver window without retransmission
#### Problems with Lack of Synchronization

```ad-warning
The lack of synchronization between both windows can have consequences
- Can lead to retransmission of an already received packet like GBN
- ![[Pasted image 20230608175028.png]]
- The finite amount of numbers can roll over and cause a considerably older packet a new one!
- ![[Pasted image 20230608175041.png]]
```

```ad-important
There is no way for the sender and the receiver to distinguish the retransmission of the first packet from an original transmission or the $N+1$ packet
- Because of this, the window size often has to be less than or euqal to **half** the size of the sequence nubmer space for SR Protocols
```

## Summary

| Term                    | Definition                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Mechanism               | Use, Comments                                                                                                                                                                                                                                                                                                                                              |
| Checksum                | Used to detect bit errors in a transmitted packet                                                                                                                                                                                                                                                                                                          |
| Timer                   | Used to timeout/retransmit a packet, possibly because the packet (or its ACK) was lost within the channel. Because timeout can occur when a packet is delayed but not lost (premature timeout), or when a packet has been received by the receiver but the receiver-to-sender ACK has been lost duplicate copies of a packet may be received by a receiver |
| Sequence Number         | Use for sequential numbering of packets of data flowing from sender to receiver. Gaps in the sequence numbers of received packets allow the receiver to detect a lost packet. Packets with duplicate sequence numbers allow the receiver to detect duplicate copies of a packet.                                                                           |
| Acknowledgment          | Used by the receiver to tell the sender that a packet or set of packets has been received correctly. Acknowledgments will typically carry the sequence number of the packet or packets being acknowledged. Acknowledgments may be individual or cumulative, depending on the protocol.                                                                     |
| Negative Acknowledgment | Used by the receiver to tell the sender that a packet has not been received correctly. negative acknowledgments will typically carry the sequence number of the packet that was not received correctly                                                                                                                                                     |
| Window, Pipelining      | The sender may be restricted to sending only packets within sequence numbers that fall within a given range. by allowing multiple packets to be transmitted but not yet acknowledged, sender utilization can be increased over a stop-and-water mode of operation. We'll see shortly that the window size may be set on the basis the receiver's ability to receive and buffer messages, or the level of congestion in the netowrk, or both                                                                                                                                                                                                                                                                                                                                                           |

# 3.5 - Connection-Oriented Transport: TCP

The Internet's transport-layer, connection-oriented, reliable transport protocol. Relies on:
- Error detection
- Retransmission
- Cumulative acknowledgments
- Timers
- Header fields for sequence and acknowledgment numbers

## 3.5.1 - The TCP Connection

TCP is **connection-oriented** as one application process must "handshake" with each other before data can be sent
- They must send some preliminary segments to each other to establish the parameters of the ensuing data transfer

```ad-note
TCP is not an end-to-end TDm or FDM circuit as like a circuit-switched network.
- It is a *logical* connection rather than a *physical* one
- The routers and link-layer switches are completely oblvious to TCP connections
```

TCP allows for a **full-duplex service**:
- A connection between two processes can send application-layer data in **both directions at the same time**

TCP is also always **point-to-point** meaning it only has one sender and one receiver
- Multicasting is not possible with TCP!

### TCP Connection Establishment Introduction

A client application first informs the client it wants to establish a connection with a process by doing `clientScoket.connect((serverName,serverPort))`
- `serverName` is the name of the server
- `severPort` identifies the process on the server

```ad-summary
title: TCP Connection Summary (**three-way handshake**)
- The client sends a special TCP segment
- The server responds with a second special TCP segment
- The client then responds with a third TCP segment
- Then, the TCP connection is established and the two application processes can send data to each other
```ad-note
The first two segments carry no payload, but **the third segment and beyond can have one**
```

### TCP Buffers Overview

Data passed from the process through the socket to the TCP, it is placed into the connection's **send buffer**
- TCP will grab chunks of data from time to time from the buffer and pass it to the network layer
- This time is not specified by the TCP and can be done at the convenience of the protocol

**Maximum segment size (MSS)** - The max amount of data that can be grabbed and placed in a segment
- Regulated by the the **maximum transmission unit (MTU)** 
	- The length of the largest link-layer frame that can be sent by the local sending host
- Ensures that the TCP segment plus the TCP/IP header length will fit into a **single** link-layer frame
- The maximum amount of *application-layer data in a segment*, **NOT** the max length of the segment

```ad-note
color: 255, 255, 0
Both Ethernet and PPP link-layer protocols have an MTU of 1,500 bytes.
- **MSS is typically 1460 bytes because of this**
```

**TCP segments** are a combination of a chunk of client data with a TCP header
- Passed down to the network layer
- Encapsulated within a network-layer IP datagram separately

When a segment is received, it is placed within a **receive buffer**
- Applications reads the steam of data form this buffer
- Each side of the connection has their own send and receive buffer

![[Pasted image 20230609094546.png]]

## 3.5.2 - TCP Segment Structure

TCP segments contain:
- Header fields
- Data field
	- A chunk of application data
	- Can contain data that is close to the MSS limit (image sending)
	- Can contain as little as one byte (Telnet and ssh)

### Header Field Layout

Each header contains a **source and destination port number** and a **Checksum field** like UDP. It also has the following things:

```ad-summary
title: Sequence Number Field and Acknowledgment Number Field
32-bit fields that are used by the TCP sender and receiver in implementing a reliable data transfer service
```

```ad-summary
title: Receive Window
color: 255, 255, 0
16-bit field userd for flow control. Indicates the number of bytes that **a recever is willing to accept.**
```

```ad-summary
title: Options Field
color: 234, 234, 200
Optional and variable-length that is used when a sender and receiver negotiate: 
- the MSS
- The window scaling factor
- Time-stamping option

```

```ad-summary
title: Flag Field
color: 230, 100, 100
Contains 8 bits that all have a special function:
- ACK  
	- Used to indicate that the value carried in the acknowledgment field is valid
- RST
	- Connection setup and teardown
- SYN
	- Connection setup and teardown
- FIN
	- Connection setup and teardown
- CWR
	- Congestion notification
- ECE
	- Explicit congestion notification
- PSH
	- Indicates that the receiver shoudl pass the data to the upper layer immediately
- URG
	- Used to indicate that there is data in this segment that the sendingpside upper-layer entity has marked as **"urgent"**
```

```ad-summary
title: Urgent Data Pointer Field
color: 
16-bit field used for informing the receiving-side upper-layer entity when urgent data exists and pass it a pointer to the end of the rugent data.
```ad-warning
Both this field and PSH and URG are **NOT** used in practice
```

![[Pasted image 20230609104655.png]]

### Sequence Numbers and Acknowledgment Numbers

```ad-note
These fields are a critical part of TCP's reliable data transfer service
```

#### Why Does TCP Use These Fields?

```ad-note
TCP views data as an unstructured, but ordered, steam of bytes.
- This is why Seqeunce numbers are over the stream of transmitted bytes and **not** over the sereis of transmitted segments
```

**Sequence number for a segment** is based on the byte-steam number of the first byte in the segment:
- If a file containing 500,000 bytes is divided based on a MSS of 1000 bytes, the TCP will construct 500 segments.
- Each one of these segments will be numbered with $MSS(n-1)$
	- The first sequence number is 0
	- The second sequence number is 1000
	- The third sequence number is 2000

**The acknowledgment number** is based on the sequence number of the next byte one host is expecting from the other host
- If a host got all the bytes numbered 0-535 from the other host, it puts 536 in the acknowledgment number field

![[Pasted image 20230609115655.png]]

**Cumulative acknowledgments** is a service provided by TCP where it only acknowledges bytes up to the first missing byte in the stream
- If host got all the bytes numbered 0-535 and 900-1000, it puts 536 in the acknowledgment field to to attempt to re-create the other host's data stream

```ad-note
What happens when bytes are received out of order?:
- The choice is up to the programmers implementing TCP to decide. They have two options:
1. The receiver immediately discards out-of-order segments
2. The receiver keeps the out-of-order bytes and waits for the missing bytes to fill in the gaps (==most common==)
```

```ad-important
The intial sequence number is *randomly choosen* and will not always start with 0
- to prevent confusion with a segment that is still present int he network from earlier
```

### Telnet: A Case Study for Sequence and Acknowledgment Numbers

Telnet is a popular application-layer protocol used for remote login.
- Runs over TCP
- Designed to work between a pair of hosts
- An interactive application that does not do bulk transfers of data

```ad-example
title: Telnet Overview
- Host A initiates a Telnet session wtih Host B
	- Host A is the client, Host B is the server
- Each character typed by the client willb e sent to the remote host
- The remote host will send back a copy of each character, which will be dispalyed on the user's screen
- This means that for every character that shows up on the user's screen has already traversed the network twice 
```

![[Pasted image 20230611112100.png]]

The first segment:
- Contains the 1-byte ASCII representation of the letter 'C' in its data field.
- Has a 42 in its sequence number field and a 79 as it has not sent or received any data yet
	- These two values were chosen at random

The second segment:
- Sent from the sever back to the client
- It serves two purposes:
	- provides an acknowledgment of the data the server has received
		- Done by putting a 43 in the ACK field on returning to show that byte 42 **has been received**
	- Echo back the letter 'C'
- Still has the sequence number of 79 to show that this is the first time the server sent a byte back tot he client

```ad-note
The acknowledgment for client-to-server data is carreid in a segment carrying server-to-client data is known to be **piggybacked**
```

The third segment:
- Sent from the client to the server to acknowledge the data it has received from the server
- The segment has an empty data field
	- the acknowledgment that it is not being piggybacked with any client-to-sever data
- Has 80 in the acknowledgment number field
	- The client has received the stream of bytes up through byte sequence number 79 and is now waiting for bytes 80 and onward

## 3.5.3  - Round-Trip Time Estimation and Timeout

TCP utilizes a timeout/retransmit mechanism to recover form lost segments

```ad-warning
This seems simple enough; however, when it is used in a real protocol, some questions arise:
- How should the round-trip time (RTT) should be measured?
- How much extra time should be added to the RTT?
- Should a timer be associated withe ach and everyunacknowledged segment?
```

### Estimating the Round-Trip Time

``SampleRTT`` for a segment is the amount of time between when the segment is sent and when an acknowledgment for the segment is received:
- Most TCP implementations only take one ``SampleRTT`` measurement at a time.
	- Is being estimated for only one of the transmitted but currently unacknowledged segments
- ``SampleRTT`` changes approximately once every RTT
- **NEVER** computes for a segment that has been retransmitted
- Fluctuates based on congestion on the routers and loads on the end systems

**EstimatedRTT**: A weighted combination of the previous value of **Estimated RTT** and the new value for **SampleRTT**

$$ EstimatedRTT = (1 - α)EstiamtedRTT + αSampleRTT$$

```ad-note
α is typically chosen to be $α = 0.125 = \frac{1}{8}$
```

```ad-important
Due to how the formula works, it puts **more weight** on the **recent samples**
- Known as **exponential weighted moving average (EWMA)** in statistics
```

**DevRTT**: Used to estimated the variability of the RTT between ``SampleRTT`` and the ``EstimatedRTT``

$$DevRTT = (1- β)DevRTT + β|SampleRTT - EstimatedRTT|$$

```ad-note
color: 0, 255,255
β is typically set to 0.25
```

![[Pasted image 20230611115502.png]]

### Setting and Managing the Retransmission Timeout Interval


```ad-summary
Due to the retransmission time should be greater than or equal to the ``EstimatedRTT`` while not being greater AND the variability of the ``SampleRTT`` values affecting the amount of margin given, thus `DevRTT` should be utilized

```

The formula for the timeout interval thus uses both values and is given below:

$$TimeoutInterval = EstimatedRTT + 4DevRTT$$

```ad-note
- Typically, an inital ``timeout interval`` is set to a value of 1 second
- Is doubled everytime a timeout does occur until a segment is received again
```

## 3.5.4 - Reliable Data Transfer

Due to IP services' unreliability as it does not guarantee datagram delivery in order or at all: transport-layer segments can suffer from these problems as well.

TCP utilizes a **reliable data transfer service** on top of IP's unreliable best-effort service and ensures that the data steam:
- Uncorrupted
- Without gaps
- Without duplication
- In sequence
	- The byte steam is exactly the same byte stream that was sent by the end system on the other side of the connection

```ad-important
Even though it would be better to run mutiple timers per transmitted and not yet acknoledged segment, it is commonly recommended that TCP runs off of a *single* retransmission timer due to timer management having large overhead
```

### Simplified description of a TCP sender

- Uses timeouts to recover only from lost segments
- Only sent in one direction
	- From Host A to B and A is sending a *large* file

```ad-note
There are three major events related to dtata transmission and retransmission here:
- Data received from appliaiton above
- Timer timeout
- ACK receipt
```

```c
/*Assume sender is not constrainted by TCp flow or congestion control, that data from above is less than MSS in size, and that data transfer is in one direction only.*/

NextSeqNum = Initial SeqNumber
SendBase = IntiialSeqNumber

loop (forever) {
	switch(event) {
		event: //data received from application above
			//create TCP segmetn with sequence number NextSeqNum
			if (//timer currently not running) {
				//start timer
			}
			//pass segmetn to IP
			NextSeqNum = NextSeqNum + length(data)
			break;
		event: //timer timeout
			//retransmit not-yet-acknowledged segment with smallest sequence number
			//start timer
			break;
		event: //ACK received, wth ACK field value of Y
			if (y > SendBase) {
				SendBase = y
				if (//there are currenlty any not-yetacknowledged segments) {
				//start timer
				}
			}
			break;
	}
}
```

```ad-summary
title: First Major event: Data received from application above
- TCp receives data from applciation
- ecnapsulates the data in a segment
- passes the segment to IP
```ad-note
- Every segment includes a sequence number that is the byte-stream number of the first data byte int he segment
- The timer is arleady not running for another segment, it starts the timer when the segment is passed to IP
```

```ad-summary
color: 234, 180, 234
title: Second Major Event: Timer Timeout
TCP responds to the timeotu event by retransmitting the segmetn that caused the timeout and restarts the timer
```

```ad-summary
color: 200, 200, 200
title: Third Major Event: ACK Receipt
The arrival of an ACK from the receiver
- Handled by teh TCP sender
- TCp compared the ACK value `y` with its variable `SendBase`
	- if 'y' is greater than 'SendBase', the ACK is acknowledging one or more previosly unacknowledged segments
	- Thus, the window moves to `y`
	- It restarts the timer if there are any not-yet-acknowledged segments
```

### A Few Interesting Scenarios

#### Scenario #1: Retransmission Due to Lost ACK

Host B receives the data, but the ACK gets lost

To solve this, the timeout event occurs, and Host A retransmits the same segment
- Host B recognizes that it already received this sequence number and discards the segment
- Host B retransmits the ACK back to Host A in hopes it reaches it

![[Pasted image 20230611124735.png]]

#### Scenario #2: Segment Not Retransmitted Due to ACK Arriving on Time

When two segments are sent back to back at Host B, but the ACKs do not arrive to Host A by the timeout for Seq=92:
- Host A resends the first segment and restarts the timer

```ad-important
As long as the ACk for the second segmetn arrives before the new timeout, the *second segment will not be retransmitted*
```


![[Pasted image 20230611125006.png]]

#### Scenario #3: A Cumulative ACK Avoids Retransmission of the First Segment

The same two segments are sent just as in Scenario #2, but The acknowledgment of the first segment is lost. However ACK number 120 arrives before the timeout

```ad-important
Because it received a later ACK, Host A knows that Host B has received *everything* up through byte 119, so Host A **DOES NOT** resend *either* of the two segments
```

![[Pasted image 20230611125412.png]]

### Doubling the Timeout Interval

```ad-important
The length of the timeout interval after a timer expiration will always be **twice** the previous value rather than using the formula
- Grows exponentially
- Resets back to normal once data is received from the applciation above OR an ACk is received
```

This provides a limited form of congestion control:
- Timer expiration may be caused by congestion in the network
- TCP retransmits after longer and longer intervals to prevent the congestion from getting worse

### Fast Retransmit

```ad-warning
Timeout-triggered retransmissions can become relatively long
- Increases end-to-end delay
```

The sender can detect packet loss before the timeout event by noting ***duplicate ACKs***
- An ACK that re-acknowledges a segment for which the sender has already received from an earlier acknowledgment
- This can be used due to how a TCP receiver sends duplicate ACKs

#### TCP ACK Generation Recommendation

| Event                                                                                                                   | TCP Receiver Action                                                                                                                            |
| ----------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| Arrival of in-order segment with expected sequence number. All data up to expected sequence number already acknowledged | Delay ACK. Wait up to 500 msec for arrival of another in-order segment. If next in-order segment does not arrive in this interval, send an ACK |
| Arrival of in-order segment with expected sequence number. One other in-order segment waiting for ACK transmission      | Immediately send single cumulative ack, ACKing both in-order segments.                                                                         |
| Arrival of out-of-order segment with higher-than-expected sequence number. Gap detected.                                | Immediately send duplicate ACK, indicating sequence number of next expected byte (which is lower end of the gap).                              |
| Arrival of segment that partially or completely fills in gap in received data.                                          | Immediately send ACK, provided that segments starts at the lower end of gap.                                                                                                                                               |

#### Fast Retransmit Continued

When the TCP receives gets a sequence number that is larger than expected, it detects a gap in the data steam
- It sends back the last in-order byte of the data it has received (Row 3 on the table)


```ad-important
The TCP sender will perform a **fast retransmit**, which sends the missing segmetn *before* theat segment's timer expieres **if:**
- the sender receives **three** duplicate ACKs for the same data
	- it realizes that the segment following the segment that has been ACKed three times has been lost
- ![[Pasted image 20230611132111.png]]
```



Fast retransmit is implemented by replacing the following code snippet with with the ACK received event:

```c
event: //ACk rec3eived, wtih ACK field value of y
	if (y > SendBase) {
		SendBase = y 
		if (//there are currently any not yet acknowledged segments) {
			//start timer
		}
	}
	else { 	//A duplicate ACK for already ACKed segment
		//increment number of duplicate ACKs receive for y
		if (//number of duplicate ACKs received for y == 3) {
			//TCP fsat retransmit
			//resend segmetn with sequence number y
		}
	}
	break;

```

```ad-note
This issue was found by implemtning the actual protocol and finding a solution to the problem caused
```

### Go-Back-N or Selective Repeat?

Due to the following, TCP looks a lot like a GBN-style protocol:
- TCP ACKS are cumulative
- Correctly received but out-of-order segments are *not* individually ACKed by the receiver
- TCP only has to keep track of the smallest sequence number of a transmitted but unacknowledged byte ``SendBase`` and the sequence number of the next byte to be sent (`NextSeqNum`)

However, TCP also looks like a Selective Repeat as:
- It will buffer correctly received but out-of-order segments
- Only retransmits the gap in the ACKs and not all subsequent packets
- Would not transmit a segment if a higher number ACK has already been received

**Selective Acknowledgment** - Allows a TCP receiver to acknowledge out-of-order segments *selectively* rather than just acknowledging the last correctly received, in-order segment
- This makes TCP look a lot like a generic SR protocol

```ad-important
Due to this, TCP's error-recovery mechanism is best categorized as a hybrid of GBN and SR protocols
```

## 3.5.5 - Flow Control

```ad-warning
If an application is slow at reading incoming data, the sender can easily overflow the connection's receive buffer by sending too much data too quickly
```

**Flow-control service** - A speed-matching service that matches the rate at which the sender is sending against the rate at which the receiving application is reading.
- *Not* to be confused with **congestion control**

**Receive Window** - How TCP maintains flow control by giving the sender an idea of how much free buffer space is available at the receiver.
- Because TCP is duplex, each side of the connection has their own sender with a receive window

```ad-example
title: Example: Receive Window with File Transfer (HOST B)
Host A is sending a large file to Host B over TCP:
- Host B allocate a receive buffer to the connection,denoting its size with `RcvBuffer`
- The Application then defines two more variables:
	- `LastByteRead` - the number of the last byte in the data stream *read from the buffer by the application process*
	- 'LastByteRcvd' - the number of the last byte in the data stream that has *arrived form the network* and placed int he receive buffer 
- ![[Pasted image 20230612111009.png]]
```ad-note
Because TCP is not permitted to overflow the allocated buffer:
- `LastByteRcvd` $-$ `LastByteRead` $\le$ `RcvBuffer`
```

```ad-important
The receive window **is set to the amount of spare room in the buffer**:
- `rwnd` $=$ `RcvBuffer` $-$ [`LastByteRcvd` $-$ `LastByteRead`]
- Thus, this spare room is dynamic and changes with time
```

Thus, Host B is able to tell Host A how much spare room it has in the connection buffer by placing the value of `rwnd` in the receive window field of every segment it sends to A.


```ad-example
title: Example: Receive Window with File Transfer (HOST A)
Host A keeps track of `LastByteSent` and `LastByteAcked`
- `LastByteSent` $-$ `LastByteAcked` is the amount of unacknowledged data that A has sent into the connection.

```ad-important
Keeping the maount of unacknowledged data less than the value of `rwnd` allows A to know it is ***not overflowing B's buffer***
- `LastByteSent` $-$ `LastByteAcked` $\le$ `rwnd`
```

```ad-warning
title: Problem
When Host B's receive buffer is full (`rwnd` $= 0$) and B is not sending anything to A
- B is not updating A with a new `rwnd` value as A is not sending any data for an ACK and B isn't sending any data
- Host A will never be informed that some space has opened up and will stop transmitting data
```ad-check
title: Solution
The TCP specification requires HOst A to contineu to send segmetns with one data byte:
- B will acknowledge these and send back ACKs until eventually `rwnd` $\ne 0$
```

## 3.5.6 - TCP Connection Management

Important for the following reasons:
- Can add to perceived delays
- Most common network attacks exploit vulnerabilities in TCP connection management

### Opening a Connection

When a client wants to connect to a server, the following steps happen:

```ad-summary
title: Step 1: The Client-Side TCP Sends the **SYN Segment** to the Server-Side TCP
- The special segment contians no applicaiton-layer data
- One of the flag bits **SYN** is set to 1.
- The client chooses a random intial sequence number (`client_isn`)
	- This number is put into the seqeunce number field  of the intial TCP SYN segment
```

```ad-summary
title: Step 2: The Server-Side TCP sends the SYNACK segment to the Client-Side TCP
color: 234, 180, 234
- The server receives the SYN segment
- Allocates the TCP buffers and variables for the connection
- Creates a connection-granted segment to be sent back to the client TCP
- Contains the following:
	- No Application Data
	- SYN bit is set to 1
	- The acknowledgment field is set to `client_isn` $+1$
	- A random intial sequence number (`server-isn`) into the sequence nubmer field
- This segment is going to tell the client "I received your SYN packet to start a conneciton with your intial sequence number, `client_isn`. I agree to establish this connection. My own intial sequence nubmer is `server_isn`."
```

```ad-summary
title: Step 3: The Final Segment of the Three-Way Handshake
color: 220, 220, 220
After receiving the SYNACK segment:
- The client allocates buffers and varaibles to the connection
- Creates a new segment with an ACK number of `server_isn` $+1$ 
- SYN bit is set to zero, symbolizing that the conneciton is established
- This segment *may* have a segment payload unlike the previous two segments
```

![[Pasted image 20230612115910.png]]

This procedure above is referred to as the **three-way handshake**

### Closing a Connection

When either of the two processes on either end system decide to close the connection:
- The resources allocated by the hosts are deallocated back into the resources to be used by a different connection

```ad-summary
color: 255, 255, 0
- One side of the connection sends a FIN segment (where the segmetn has the FIN bit set to 1) to the other host
- The other host returns an ACk of the FIN segment in return
- Then, the other host sends its own FIN segment to the client
- The original host sends back an ACK to the other host
- This closes both sides of the connection and all resources are reallocated
```

### TCP States

The TCP protocol running on each host transitions through different states as it goes through its life

#### Client TCP States

- Starts in the CLOSED state
- The application creates a new TCP connection and Socket to go with it
- The client sends a SYN segment tot he TCP server (SYN_SENT)
	- Waits for a segment from the server TCP that includes a SYNACK segment
- After receiving the SYNACK segment, the client moves to the ESTABLISHED state
	- It an send and receive TCP segments containing payload data
- The Client TCP sends a FIN segment to the server and moves to FIN_WAIT_1
	- It awaits the TCP FINACK segment from the server
- It moves to the FIN_WAIT_2 state after receiving the ACK
	- It awaits for a FIN segment from the server
- It then moves to the TIME_WAIT state 
	- Sends an ACK back to the server
	- Waits 30 seconds for 2 minutes and then deallocates allt he resources

![[Pasted image 20230612120537.png]]

#### Server-Side TCP

![[Pasted image 20230612121054.png]]

#### Sever-Side TCP Receiving Wrong SYN Segment

Happens when a host receives a SYN packet with an incorrect source IP address or port number

```ad-important
The host will then send a RST segment back to the source
- It tells the host that "I do not have a socket for that segment. Please do not resend the segmetn"
```

```ad-example
The three outcomes of a SYN packet
- The source host receives a TCP SYNACK segment form the target host
	- The two hosts are able to start communicating with each other
- The source host receives a TCP RST segment fromt eh target host
	- The segment reached the target host, but the target host is not running the process and tells the host to stop sending SYN packets to this address and port number
- The soruce receives nothing
	- The SYN segmetnw as blocked by an intervening firewall and never reached the target host
```

