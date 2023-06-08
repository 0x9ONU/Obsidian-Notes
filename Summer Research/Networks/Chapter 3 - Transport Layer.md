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












