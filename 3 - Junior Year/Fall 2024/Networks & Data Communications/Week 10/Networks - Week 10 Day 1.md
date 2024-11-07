Date: 28th October 2024
Date Modified: 28th October 2024
File Folder: Week 10
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Delay and Loss in Networks

## Delay in Packet-Switched Networks

In a packet-switch networks, a packet starts in a host (the source), passes through a series of routers, and ends its journey in another host (the destination)
- As the packet travels from one node (host or router) to the subsequent node (host or router) along this path, the packet suffers from several types of delays at each node along the path..
- The important of these delays are the processing delay, queuing delay, transmission delay, and propagation delay.
- All these delays accumulate to give a total nodal delay

## Sources of Packet Delay

![[Pasted image 20241028090647.png]]

$$d_{nodal} = d_{proc} = d_{queue} + d_{trans} + d_{prop}$$

### $d_{proc}$: Processing Delay
- Time required to examine packet’s header
- Time required to determine where to direct the packet
- Time required to check bit errors
- Typically on the order of micro-seconds

### $d_{queue}$: Queueing Delay
- Time waiting at output link for transmission
- Depends on the number of earlier-arriving packets
- Depends on congestion level of router
- Typically on the order of micro-sec

### $d_{trans}$ : Transmission Delay
- $L$ : packet length (bits)
- $R$: link *bandwidth* (bps) (transmission rate of the link)
- $d_{trans} = L/R$
- Typically in micro-seconds

```ad-warning
you must make sure that bytes and bits match!
```

### $d_{prop}$ : Propagation Delay
- Time required to propagate from the beginning of the link to the other end
- $d$: Length of physical link
- $s$: Propagation speed in medium ($\approx 2*10^8 m/sec$)
- $d_{prop} = d/s$
	- Distance between two nodes divided by the propagation speed 
- Typically in milliseconds

## How do Packet Loss and Delay occur?

At router, when packet arrival rate exceeds output link capacity. Packet queue in the router buffer and wait for their turn to leave. 

```ad-warning
When more packets arrive and buffer has become full, then the router *discards* new arriving packets
```

![[Pasted image 20241028091210.png]]

## Throughput

*Instantaneous Throughput* at any instance of time is the rate (in bits/sec) at which bits transferred between sender/receiver

*Average Throughput* of the file transfer is $F/T \space (bits/sec)$, where $F$ is the file size in bits and $T$ is the time transfer to the destination. 

![[Pasted image 20241028091537.png]]

![[Pasted image 20241028091740.png]]

```ad-check
title: Solution
They will have the *same* average throughput. It will take the the same amount time even though one of them becomes faster. However, the other will become slower, which will bottleneck the average througput.
```

```ad-summary
title: Definition
**Bottleneck Link**: Link on end-end path that constrains end-end throughput
```

## Practice Problems

### Practice Problem 1

```ad-question
How long does it take a packet of length 1,000 bytes to propagate over a link of distance 2,500 km, progation speeds $2.5*10^8 m/s$, and transmission rate of 2 Mbps. What is the total time of the pakcet to reach the destination?
```

$$d_{nodal} = \cancel{d_{proc}} + \cancel{d_{queue}} + d_{trans} + d_{prop}$$

$$d_{nodal} = (L/R) +(d/s)$$

$$L = 1000 \mbox{ bytes} = 8000 \mbox{ bits}$$
$$R = 2 \mbox{ Mbps} = 2 \times 10^6 \mbox{ bps}$$

$$d = 2500 km = 2500\times10^3 m$$
$$s = 2.5 *10^8 m/s$$

$$d_{nodal} = (8000/(2\times 10^6)) + ((2500\times 10^3)/(2.5\times 10^8))$$
$$\boxed{d_{nodal} = (4ms)+(10ms) = 14ms}$$

### Practice Problem 2

```ad-question
Suppose HOst A wants to sned a large file to HOst B. The path from Host A to Host B has three links, of rates $R1 = 500 \space kbps, R2 = 2 \space Mbps, R3 = 1 \space Mbps$
1. Assuming no other traffic in the network, what is the throughput for the file transfer?
2. Suppose the file is 4 million bytes. Dividing the file size by the throughput, roughly how long will it take to transfer the file to Host B?
3. Repeat (a) and (b), but now with $R2$ reduced to $100 \space kbps$
```

#### Part 1

Throughput is limited to the slowest link in the network

$$\therefore \mbox{Throughput} = 500 kbps$$

#### Part 2

$$L = 4 Mbps = 4\times 10^6 \times 8 = 32 \times 10^6 \space \mbox{bits}$$
$$t_{trans} = \frac{L}{R} = \frac{32*10^6}{500*10^3}= 64s$$

#### Part 3

$$\mbox{Throughput = 100 kbps}$$
$$t_{trans} = \frac{L}{R} = \frac{32*10^6}{100*10^3} = 320s$$

### Practice Problem 3

```ad-question
We consider sending real-time voice from Host A to Host B over a packet-switche dnetwork. Host A converts analog voice to a digital 64 kbps bit stream on the fly. Host A then groups the bits into 56-byte packets. There is one link between Hosts A and B; its tranmission rate is 2 Mbps and its propagation delay is 10 miliseconds. As soon as Host A gathers a packet, it sends it to Host B. As soon as Host B receives an entire packet, it converts the packet's bits to an analog signal. How much time elapses from the time a bit is created (from the original analog signal at Host A) unitl the bit is decoded (as part of the analog signal at Host B)?
```

```mermaid
flowchart LR
A(Analog Signal)-->B(Host As ADC)
B-->C(Outgoing Link)
C-->D(Host Bs DAC)
```

$$L = 56 \mbox{sbytes} = 448 \mbox{ bits}$$
$$t_{proc} = \frac{448}{64*10^3} = 7 ms$$
$$t_{trans} = \frac{448\mbox{ bits}}{2*10^6 bps}= 224 \micro s$$
$$t_{prop} = 10ms$$

$$t_{total} = 7ms + 0.224ms + 10ms = 17.224 ms$$

### Practice Problem 4

```ad-question
Suppose there is a $10 Mbps$ microwave link between a geostationary satellite and its base station on Earth. Every minute the satellite takes a digital photo and sends it to the base station. Assume the propagation speed of $2.4\times 10^8 m/s$. What is the propagation delay of the link?
```

$$d_{prop} = \frac{\mbox{Distance}}{\mbox{Speed}_{prop}}$$
$$d \approxeq 3600km \quad \mbox{(Geostationary Orbit to Earth)}$$
$$d_{prop} = \frac{(3600*10^3)}{(2.4*10^8)}=150ms$$

### Practice Problem 5

```ad-question
Suppose there is exaclty one router between Host A and HOst B. Host A wants to spend a packet of length $2 \space kBytes$ to Host B. The transmissionr ates between host A and Router, and between Router and HOst B are $200 \space kbps$ and $2 \space Mbps$, respectively. Host A is located $2000km$ from the Router, while Host B is $1000km$ from the Router. The speeds of the links from host A to Rotuer and Router to Host B are $2.5*10^8 m/s$ and $1.5*10^7 m/s$ spectively. Assume the Router takes $5ms$ to decide for the packet forwarding and $1ms$ to place the packet on the outgoing port. Calcualte the total end-to-end delay from HOst A to Host B.
```

$$t_{total} = d_{proc} + d_{queue} + d_{trans} + d_{prop}$$
$$t_{total} = d_{proc} + d_{queue} + (d_{trans_A}+d_{trans_B}) + (d_{prop_A}+d_{prop_B})$$

$$d_{trans_A}=\frac{L}{R_A}=\frac{((2*8)*10^3)}{(200*10^3)}=80ms$$
$$d_{trans_B} = \frac{L}{R_B}=\frac{((2*8)*10^3)}{(2*10^6)}= 8ms$$

$$t_{prop_A}=\frac{d_A}{s_A}=\frac{2000*10^3}{2.5*10^8}=$$
$$t_{prop_B} = \frac{d_B}{s_B}= \frac{1000*10^3}{1.5*10^7}=$$
$$\boxed{t_{total}= 5+1+88+74.67 = 167.67ms}$$

### Practice Problem 6

```ad-question
You are direclty connected to a rotuer (`Router-Ada`) in Ada, OH. You send a packet of length $100 \space kBytes$ to your friend in Japan. IFrst your transmitted packet is forwarded to a ROuter (`Router-San-Jose`) in San Jose, California (nearly $3500km$ from Ada) with the transmission rate $10 \space Mbps$ and link speed $2*10^7m/s$. Then, it is forwarded to a rotuer (`Router-Japan`) in Japan (nealry $8500km$ form San Jose), with double the transmission rate and ten times the link speed of link Ada-San Jose. Your friends is direclty connected to Router-Japan. Assume *each* router takes $10ms$ to decide the routing path, and $2ms$ to place the packet on the outgoing link. Calcualte the total end-to-end delay from youur amchien in Ada to your friend's machine in Japan.
```

$$t_{total} = d_{proc} + d_{queue} + d_{trans} + d_{prop}$$

$$t_{total} = 3*d_{proc} + 3*d_{queue} + (d_{trans_{Ada \rightarrow San-Jose})+d_{trans_{San-Jose \rightarrow Japan}}}) + (d_{prop_{Ada \rightarrow San-Jose})+d_{prop_{San-Jose \rightarrow Japan}}})$$

$$t_{total} = 3(10*10^{-3})+3(2*10^{-3}) +((\frac{8*10^5}{10*10^6})+(\frac{8*10^5}{20*10^6})) +((\frac{3500*10^3}{2*10^7})+(\frac{8500*10^3}{20*10^7}))$$

$$\boxed{t_{total} = 30+6+217.5+117.2 = 370.7ms}$$

### Practice Problem 7

```ad-question
You are attending an online course while living at your home in Cincinnati, OH. You can connect to the class remotely using Google Meet, access elcture material through Canvas,a nd use the ONU VPN service to access library resources and research databases. YOu use your home Internet service, where you have a negligible distance from your persoanl laptop to your ISP router in CIncinnati. The distance of the ISP Router to the ONU Router is $250 \space km$ with a speeed of $10*10^6 m/s$. For your research paper, you use the ONU VPN service to connect to the research database located in Los Angeles, California, which is direclty connected to the LA-Router. The link LA-ROuter to ONU Router has a distance of $4000 \space km$ and a speed of $5*10^7 m/s$. Assume ISP-Router, ONU-ROuter, and LA-Router take $10ms$, $5ms$, and $3ms$ to place the packet on the outgoing link, respectively. Moreover, the routers take $20ms, 10ms, 5ms$ spectively. MOreover, ISP_router, ONU-Router, and LA-Router has transmissionr ates of $100 \space Mbps, 5 \space Gbps, and 10 \space Gbps$, spectively. Calcualte teh total end-to-end delay if you have to download a research article of $100 \space MB$ from the research database.
```

$$t_{total} = d_{proc} + d_{queue} + d_{trans} + d_{prop}$$

$$d_{total} = [(20+10+5)*10^{-3}] + [(10+5+3)*10^{-3}] + [(\frac{100*8*10^6}{5*10^9})+(\frac{100*8*10^6}{10*10^9})+\frac{100*8*10^6}{100*10^6}] + [(\frac{250*10^3}{10*10^6})+(\frac{4000*10^3}{5*10^7})]$$
$$\boxed{d_{total} = 35 + 18 + 824 + 33 = 840ms}$$














