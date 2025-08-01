Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/UEMCON59035.2023.10316152](https://doi.org/10.1109/UEMCON59035.2023.10316152)

**Authors**: Robert J. Hayek; Ahmed Ammar

**Publication Year**: 2023

**Country of Study**: USA

**Tags**: #tdma #wsn #energyconsumption #stochastic #approximationalgorithms #energyharvesting #delays

```ad-abstract
title: Abstract
collapse: open
Recently, it has been shown that energy harvesting can be utilized to enhance the energy efficiency of wireless sensor networks. However, energy harvesting is a stochastic process, which in turn imposes an energy availability constraint on the system’s design, necessitating the demand for communication and networking protocols and algorithms that can handle this constraint. In this paper, we propose a time division multiple access (TDMA) system and algorithm for a single-hop energy harvesting wireless sensor network. Unlike the existing algorithms, the proposed algorithm synchronizes nodes not only based on the synchronization packets from the central node but also based on a data packet from another node. In addition, the proposed algorithm synchronizes nodes only when all of them are out-of-energy or when a transmission overlap occurs. We implemented the proposed algorithm on an Arduino-based network. Experimental results show that the proposed algorithm significantly reduces the average energy consumption and the average delay while handling clock drift between nodes. Compared to the most recent algorithm, the proposed algorithm reduces the average energy consumption by approximately 7 times and decreases the average delay by approximately 12 times.
```

**Embed to Paper**: [[An_Energy-Efficient_TDMA_Algorithm_for_Energy_Harvesting_Wireless_Sensor_Networks (1).pdf]]

## Summary

### Section I: Introduction

**Energy Harvesting** has been proposed to improve the energy efficiency and lifetime of WSN nodes by handling battery recharging on their own.

```ad-warning
HOWEVER, more constriants are placed on the system due to the stochastic nature of the process. MUST modify:
1. Scheduling
2. Synching
3. Communication
4. Routing
5. Tracking algorithms
```

*Previous Papers [11-12]*:
- Used CEH-TDMA and AT-MAC
- Synched only one time
- Allocated time slots for the nodes periodically 
- Would desynch bc of clock drift
- Caused overlap and network malfunction

*Other Paper [13]*
- Used EH-TDMA
- Eliminates the clock drift by synching the network **periodically**
- However, the interval is every time the time slots are allocated, which is TOOO OFTEN
- Leads to a high # of synch packets and high energy consumption and delay

```ad-summary
title: Proposed Algorithm
Increased synchronization internval which allows:
1. The sensor nodes to synchornize from the central node **AND** each other
2. Synchronizing the sensor nodes only when all nodes are out-of-energy or there is a transmission overlap, which causes the clock drift
```

#### $\star$ Contributions

1. Implemented the proposed algorithm on an Arduino-based wireless sensor network
2. Evaluate the perform based on the *average energy consumption* and the *average delay* per synch interval

```ad-note
**Average Energy** is the average energy consumed by a node *plus* the average enrgy consumed byt he central node due to synch and time slot allocation

**Average Delay** is the total time allocated for synch and time slot allocation
```

```ad-important
The new methodology shows a an approximately 7 times decrease in energy consumption and a 12 times decrease in the average delay when compared to CEH-TDMA and the AT-MAC algorithms [11-12]
```

### Section II: System Model

- Single hop
- One central node with $N$ wireless sensor nodes
- The *coordinator* handles the synch, transmissions, and data aggregation
- Give a # ($i, i \in \{1,2, \dots N \} \Rightarrow ID_{i} = i$)
- Each node is given a time slot to transmit and will *always have data* to transmit during every clock period
- **Harvest-Store-Spend** Policy [6], [16], where the energy harvested in a time slot is stored in the *battery* and used in a later time slot.
	- Each node has sufficient energy in a time slot as a Bernoulli random variable with probability $p$
	- The probability of running out of energy for every node $i$ has the probability of $1-p$
	- In the matrix $O_{i}$, where $O_{i} \in \{0, 1 \}$

### Section III: Proposed TDMA System

![[Pasted image 20250605055649.png]]

**TWO PHASES**:
1. *Active*: Immediately follows sync, where each node transmits their data packets consecutively.
	- Divided into $N$ time slots of length $t_{s}$. Each time slot is assigned to one node such that time slot $i, i \in \{1,2, \dots N\}$ 
	- Repeats as long as no error is detected (transmission overlap or all nodes are out-of-energy)
	- *Error = Nodes out of Sync*
2. *Sync*: Forces a measure of sync of the nodes

The interval between two consecutive synchronization phases is the synchronization interval:
$$
T = t_{m} +MNt_{s}
$$
- $t_{m}$: The time length of phase SYNC
- $M$: The number of active phases per sync interval. Random due to errors occurring randomly

```ad-important
Proposed algorithm is evaluted based on average energy consumption and average delay calculated due to $\bar{M}$ per $\bar{T}$
```

### Section IV: Proposed Algorithm

#### Algorithm 1: The Coordinator Algorithm

```pseudo
	\begin{algorithm}
	\caption{Cordinator Algorithm}
	\begin{algorithmic}
		\Procedure{main}{phase, errors}
			\State{set phase to $SYNC$}
			\If{SYNC}
				\State{broadcast $sync$ packet;}
				\State{set phase to $ACTIVE$}
			\ElseIf{ACTIVE}
				\While{$no \space errors$}
					\State{receive packets and check for errors;}
				\EndWhile
				\If{$out- of- energy \space error$}
					\State{set phase to SYNC;}
				\EndIf
				\If{$transmission \space overlap \space error$}
					\State{halt the network by broadcasting a $sync$ packet;}
					\State{wait for an acknowledgment;}
					\If{$acknowledgement \space received$}
						\State{set phase to $SYNC$;}
					\EndIf
			\EndIf
			\EndIf
		\EndProcedure
	\end{algorithmic}
	\end{algorithm}
```
  
*Two Operating Phases*:
1. $SYNC$:
	- Starts here where it first broadcasts a *sync* packet and then immediately transitions to phase $ACTIVE$
	- Will broadcast any further sync packets based on transmission overlap or out-of-energy errors until the system is stablized
2. $ACTIVE$:
	- If no errors, continue in $ACTIVE$
	- If errors, it will transition back to $SYNC$

![[Pasted image 20250605065117.png]]

### Algorithm 2: Sensor Node

```pseudo
	\begin{algorithm}
	\caption{Sensor Node Algorithm}
	\begin{algorithmic}
		\procedure{main}{phase}
			\state{set phase to $DEAD$}
			\if{$DEAD$}
				\state{harvest energy;}
				\if{$sufficient \space energy \space collected$}
					\state{set phase to $SYNC$}
				\endif
			\endif
			\if{$SYNC$}
				\state{wait for a synchronization packet;}
				\if{$a \space synchronization \space packet \space received$}
					\state{set phase to $ACTIVE$;}
				\endif
			\endif
			\if{$ACTIVE$}
				\state{synchronize using the synchronization packet;}
				\while{$still \space has \space sufficient \space energy$}
					\state{wait for the designated time slot;}
					\state{send packet;}
					\if{$sync \space packet \space received$}
						\state{send acknowledgement;}
						\state{set phase to $SYNC$}
					\endif
				\endwhile
				\state{set phase to $DEAD$;}
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```

*Three Operating Phases*:
1. $DEAD$
	- Starting phase
	- Continues here until it has sufficient energy to operate
	- Transition to $SYNC$ when ready
2. $SYNC$
	- Waits for a synch packet to synchronize
	- Either from coordinator’s *sync* packet or from a data packet from another node.
	- Upon that, it will immediately transition to $ACTIVE$
3. $ACTIVE$
	- Syncs using the sync packet
	- Waits for the designated time slot to transmit its data packet
	- Remains until it either runs out of sufficient energy or *sync* packet is received from the coordinator
		- Transitions to $DEAD$ or $SYNC$ based on either of these events

![[Pasted image 20250605065452.png]]

### Section IV: Algorithm Implementation

```ad-important
Uses FSM. See above
```

### Section VI: Experimental Results

```ad-summary
**Setup**:
- One coordinator node
- Three sensor nodes
- Each node has an Arduino and a Digi XBee S2C
- Separate listener node
	- Uses python script to collect time, count, and read all the data packets received
	- Used to calculate $\bar{T}$ and $\bar{M}$
- Five trails each two hours long for seven different time slot lengths and three values for $p=1, 0.8, 0.4$
```

![[Pasted image 20250605071254.png]]

![[Pasted image 20250605071344.png]]

![[Pasted image 20250605071350.png]]

#### Equations

##### Energy Consumption of Sensor
$$
\text{Energy Consumption for Proposed} = \bar{T}(\text{Receiving}+\text{Transmitting Ack.})
$$
$$
\text{Energy Consumption of EH-TDMA Sensor Nodes}=\frac{\bar{T}}{t_{m}+Nt_{s}} \times \text{*sync* packets}
$$
$$
\text{Energy Consumption of AT-MAC Sensor Nodes} = 
$$
$$
\text{Consumption of R *sync* packet}+\text{Transmission of } \frac{\bar{T}}{((N+1)t_{m}+Nt_{s})} \text{packets}
$$
$$
+ \text{Receiving } \frac{\bar{T}}{((N+1)t_{m}+Nt_{s})} \text{packets}
$$

##### Energy Consumption of Coordinator

$$
\text{Proposed}= \bar{T}(\text{Transmission of }(N+1) \text{ packets}+\text{Receiving } N \text{ Ack.})
$$

$$
\text{EH-TDMA}= \left( \frac{\bar{T}}{t_{m}+Nt_{s}} \text{sync packets} \right)
$$
$$
\text{AT-MAC}=\text{sync pkt}+\text{Rec.} \frac{\bar{N}T}{(N+1)t_{m}+Nt_{s}} \text{pkt} + \text{Trans. } \frac{\bar{T}}{(N+1)t_{m}+Nt_{s}} \text{pkt}
$$
#### Average Consumption and Delay

![[Pasted image 20250605075243.png]]

```ad-important
Proposed is 12x lower delay than EH-TDMA
```
