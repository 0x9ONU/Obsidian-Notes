Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#networks

```ad-summary
title: Today's Topics
- Pipelined RDT
- TCP, COngestion, Flow Control
```

# UDP Day 2

## Pipeline Protocol

```ad-summary
title: Definition
Sender allows multiple, "in-flight", yet-to-be-acknowledged packets
- range of squence numbers must be increased
- BUffering at sender and/or receiver
```

Includes *go-Back-N*, and *selective repeat*

The sender is allowed to send multiple packets without waiting for acknowledgments. Since the many in-transit sender-to-receiver packets can be visualized as filling a pipeline, this technique is known as pipelining. Pipelining has the following consequences for reliable data transfer protocols:
1. The range of sequence numbers must be increased, since each in-transit packet (not counting retransmissions) must have a unique sequence number and there may be multiple, in-transit, unacknowledged packets.
2. The sender and receiver sides of the protocols may have to buffer more than one packet. Minimally, the sender will have to buffer packets that have been transmitted but not yet acknowledged. Buffering of correctly received packets may also be needed at the receiver.
3. The range of sequence numbers needed and the buffering requirements will depend on the manner in which a data transfer protocol responds to lost, corrupted, and overly delayed packets
4. Two basic approaches toward pipelined error recovery can be identified: Go-Back-N and selective repeat.

![[Pasted image 20241111091155.png]]

### Seq # and Ack \#

**Sequence Number**: The byte number of the first byte of data in the TCP packet sent (also called a TCP segment)

**Acknowledgement Number**: The sequence number of the next byte the receiver expects to receive.
- Receiver acknowledging sequence number $x$ acknowledges receipt of all data bytes less than byte number $x$
- ACK flag makes acknowledgment packets valid
- Only not set during the first packet of connection setup

### Overview

#### Go-Back-N

*Sender* is allowed to transmit multiple packets without waiting for an acknowledgement.

*Receiver* only sends cumulative acknowledgement, indicating that all packets with a sequence number up to and including $n$ have been correctly received.

Timer:
- Sender has timer for oldest unacked packet
- When timer expires, retransmit all unacked packets

![[Pasted image 20241111091349.png]]

#### Selective Repeat

*Sender* is allowed to transmit up to $N$ unacked packets in the pipeline

*Receiver* sends individual ack for each packet.

Timer:
- Sender maintains timer for *each* unacked packet
- When timer expires, retransmit only that unacked packet.

![[Pasted image 20241111091507.png]]

## Practice Problems

### Practice Problem 1

```ad-question
Host A and B are communciaitng over a TCP connection, and Host B has already received form A all bytes up thorugh byte 100. SUppose HOst A then sends two segments to Host B back-to-back. The first and second segmetns contian 70 and 50 byres of data, respectively. In the first segment, the sequence number 101, the source port number is 225, and the destination port number is 80. Host B sends an acknowledgement whenever it receives a segment from Host A.
1. In the second segment from Host A to B, what are the sequence number, soruce port number, and destination port number?
2. If the first segment arrives before the second segment, in the acknowledgment of the first arriving segment, what is the acknowledgment number, the source port number, and the destination port number?
3. If the second segment arrives before the first segment, in the acknowledgment of the first arriving segment, what is the acknowledgment number?
4. Suppose the two segments sent by A arrive in order at B. The first acknowledgment is lost and the second acknowledgment arrives after the first timeout interval. Draw a timing diagram, showing these segments and all other segments and acknowledgments sent. (Assume there is no additional packet loss.) For each segment in your figure, provide the sequence number and the number of bytes of data; for each acknowledgment that you add, provide the acknowledgment number.
```

#### Part 1

In the second segments sent form Host A to B: The sequence number is 171, the source port number is 225 and the destination port number is 80.

#### Part 2

If the first segment arrives before the second segment, in the acknowledgement of the first arriving segment, the acknowledgement number is 171, the source port number is 80, and the destination port number is 225.

#### Part 3

If the second segment arrives before the first segment, in the acknowledgement of the first arriving segment, the acknowledgement number is 101, indicating that it is still waiting for bytes 101 and onwards.

#### Part 4

![[Pasted image 20241111092211.png]]

### Practice Problem 2

```ad-question
Host A and B are communicating over a TCP connection, and Host B has already received from A all bytes up thorugh byte 250. Suppose Host A then sends three semgents to HOst B back-to-back. The first, second and third segments contian 90, 70, and 50 bytes of data, respectively. Suppose all three semgents sent by A arrive in order at B. The first acknowledement arrives in time, while the second acknowledgement is lost and the third acknowledgment arrives after the second timeout interval.

Draw a timing diagram, showing these segments and all other segments and acknowledgments sent. (Assume there is no additional packet loss.) For each segment in your figure, provide the sequence number and the number of bytes of data; for each acknowledgment that you add, provide the acknowledgment number.

Draw the same timing diagram if the *third* packet is also lost
```

![[Networks - Week 12 Day 1 2024-11-11 09.34.49.excalidraw]]

![[Networks - Week 12 Day 1 2024-11-11 09.38.02.excalidraw]]

![[Networks - Week 12 Day 1 2024-11-11 09.42.16.excalidraw]]

# TCP, Congestion, and Flow Control

## Transmission Control Protocol (TCP)

1. *Point-to-point*: One sender, one receiver
2. *Reliable, in-order byte stream*: Sequence number for a segment is the byte-stream number of the first byte in the segment
	- If file size to forward is 2000 bytes and MSS is 100, then first segment gets assigned sequence number $0$, the second $100$, the third $200$, and so on. 
	- $\mbox{Total Segments} = 2000/100=20$
3. *Pipelined:* TCP congestion and flow control set with window size
4. *Full Duplex Data*: Bi-directional data flow in same direction

```ad-note
**MSS**: Maximum segment size. THe maximum amount of data that can be grabbed and placed in a segment.
```

5. *Connection Oriented*: Handshaking (exchange of control messages) between sender and receiver before data exchange
6. *Flow Controlled*: Sender will not overwhelm the receiver

## TCP Segment Structure

![[Pasted image 20241113090942.png]]

### `FIN` Packet Header Example

![[Networks - Week 12 Day 1 2024-11-13 09.14.16.excalidraw]]

## Transmission Scenarios

![[Pasted image 20241113091627.png]]

![[Pasted image 20241113091639.png]]

## Connection Management

```ad-summary
Before exchanged data, sender/ receiver "handshake":
- Agree to establish connection
- Agree on connection parameters
```

### Two-Way Handshake

![[Networks - Week 12 Day 1 2024-11-13 09.19.12.excalidraw]]

### TCP Three-Way Handshake

![[Networks - Week 12 Day 1 2024-11-13 09.20.28.excalidraw]]

![[Pasted image 20241113092218.png]]

## Congestion Control

```ad-summary
title: Definition
**Congestion Control**: Too many soruces sending too much data too fast for *network* to handle. Caused by:
- Lost Packets (buffer overflow)
- Long delays (Queueing in router buffers)
```

### TCP Congestion Control

**Additive-Increase, Multiplicative-Decrease (AIMD)**
- Sender increases transmission rate (window size), probing for usable bandwidth, until loss occurs
- *Additive Increase*: Increase congestion windows by 1 MSS every RTT until loss detected
- *Multiplicative Decrease*: Cut congestion window in half after loss

![[Pasted image 20241113092637.png]]

### TCP Slow Start

When connection begins, increase rate exponentially until first loss event:
- Initially `cwnd` = 1 MSS
- Doubles `cwnd` every RTT
- Done by incrementing `cwnd` for every ACK received

```ad-summary
Initial rate is slow, but ramps up exponentially fast
```

![[Pasted image 20241113093244.png]]


