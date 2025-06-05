Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/ICMI60790.2024.10585820](https://doi.org/10.1109/ICMI60790.2024.10585820)

**Authors**: Tanner D. Patterson; Robert J. Hayek; Ahmed Ammar

**Publication Year**: 2024

**Country of Study**: USA

**Tags**: #TDMA #wsn #basestations #energyharvesting #energyoptimization #energyconsumption #clusteringalgorithms #packet #statemachine #networks 

```ad-abstract
title: Abstract
collapse: open
In this paper, we propose a time division multiple access (TDMA) algorithm and system for a dual-hop energy harvesting wireless sensor network. We assume that the network is divided into clusters, where each cluster has a cluster head and cluster members. A cluster head collects data from its respective cluster members and then transmits the data in one packet to the base station. The proposed algorithm first synchronizes the network and then enables each node to transmit over its designated time slot. The proposed algorithm allows each node to synchronize not only based on a synchronization packet from the base station, but also based on a data packet from another node that is within its communication range. Moreover, the proposed algorithm synchronizes clusters individually, i.e., if a cluster becomes out-of-sync, the algorithm only synchronizes that cluster while allowing the remaining clusters to continue normal operation. The proposed algorithm works also for single-hop networks, and achieves network synchronization without the need for acknowledgment packets, which reduces the average energy consumption and average delay by approximately 1.36 and 1.46 times, respectively, compared to the most recent single-hop algorithm.
```

**Embed to Paper**: [[A TDMA Algorithm for Dual-Hop Energy Harvesting Wireless Sensor Networks (1).pdf]]
## Summary

### Section I: Introduction

See [[An Energy-Efficient TDMA Algorithm for Energy Harvesting Wireless Sensor Networks]] for background

```ad-important
title: Contributions
1. Propose a TDMA algorithm and system for a dual-hop energy harvesting WSN
	- Base station + nodes
	- Broken into clusters, where each cluster has a head and members
	- Tree network based on [[A Survey of Wireless Sensor Network and Its Types]]
	- Clusters can re-sync themselves without bothering the other clusters
	- Does not need acknowledgemetn packets
2. Implemented on an Arduino-based WSN
3. Evaluate algorithm based on its average energy consumption and delay
```

### Section II: System Model
- 1 Base Station
- $N$ sensor nodes
- $M$ clusters, where $m \in \{ 1,2, \dots, M \}$
	- One node out of each acts as a cluster head
	- Rest are members

**Cluster Heads**:
- Can communicate with:
	- It’s members
	- Other cluster heads
	- the Base station
- Receives information from it’s members and sends it as a single packet to the base station

**Cluster Members**:
- Can communicate with:
	- their cluster head
	- their cluster brothers
- Can *only receive* information from the base station
- Sends information to cluster head

Still using the **Harvest-Store-Spend** Policy. See [[An Energy-Efficient TDMA Algorithm for Energy Harvesting Wireless Sensor Networks]]
- Energy availability is $E_{i}$ at node $i \in\{1,2,\dots N\}$
- Can be modeled by a binary random variable with probability $p_{i}$,
	- $E_{i}=1$ means node $i$ has sufficient energy
	- $E_{i}=0$ represents the event that node $i$ does *not*, aka in the **out-of-energy** state
	- The ratio of the energy harvesting rate to the energy depletion rate.

### Section III: Proposed TDMA System


![[Pasted image 20250605080934.png]]

![[Pasted image 20250605084611.png]]

**Three Phases**:
1. $SYNC_{1}$:
	- Imposes synchronization on the entire network
2. $ACTIVE$
	- Immediately following $SYNC_{1}$
	- Actions:
		- Nodes transmit their data packets
		- Wait for their allotted time slot
		- Synchronize when needed
	- Divided into $N$ time slots each with a length of $t_{s}$
	- Node Assignment:
		- *Cluster 1*: $1 \to N_{1}$
		- *Cluster 2*: $N_{1} \to N_{2}$
		- etc.
	- Cluster heads are assigned the *last* time slots assigned to their clusters
	- Repeats until a **network error** is detected, where it will transition to phase $SYNC_{1}$
		- Either all nodes are out-of-energy, or there is a clock drift between the cluster *heads*
3. $SYNC_{2}$:
	- Imposes sync on a *particular cluster* if a **cluster error** is detected at the base station.
	- Called when the cluster members within that cluster have become out of sync
	- The particular cluster will move to $SYNC_{2}$, while the *rest of the system* remains in $ACTIVE$

```ad-tip
Cluster head $m$ is assigned time slot:
$$
\sum^m_{i=1}N_{i}
$$
```

*New Variables*:
- $T_{n}$: the **network** synchronization interval
- $T_{c}$: the time between two $SYNC_{2}$ phases
- $t_{n}$: Length of phase $SYNC_{1}$
- $t_{c}$: Length of phase $SYNC_{2}$
- $P$: Number of $ACTIVE$ phases between network synchronizations

*New Equations*:

$$
T_{n}=t_{n} +PNt_{s}
$$
$$
T_{c}=t_{c}+PNt_{s}
$$
```ad-warning
$P$ is random due to the randomness of clock dirfts and energy availability at nodes, which leads to randomized $T_n$ and $T_c$
```

### Section IV&V: Proposed Algorithms and Implementation

#### Algorithm 1: Base Station
```pseudo
	\begin{algorithm}
	\caption{Base Station Algorithm}
	\begin{algorithmic}
	\procedure{main}{phase, error}
		\state{set phase to $SYNC_1$;}
		\if{$SYNC_1$}
			\state{broadcast $sync_1$ packet;}
			\state{set phase to $ACTIVE$;}
		\elseif{$ACTIVE$}
			\while{$no \space errors$}
				\state{receive cluster heads packets and mark their timestamps;}
				\state{extract timestamps from cluster heads packets;}
				\state{timestamp to detect errors;}
				\if{$error \space detected$}
					\if{$network \space error \space detected$}
						\state{set phase to $SYNC_1$;}
					\else
						\state{set phase to $SYNC_2$;}
					\endif
				\endif
			\endwhile
		\elseif{$SYNC_2$}
			\state{update $SYNC_2$ packet header;}
			\state{broadcast $SYNC_2$ packet;}
			\state{set phase to $ACTIVE$;}
		\endif
	\endprocedure
	\end{algorithmic}
	\end{algorithm}
```
- $A_1$: **out-of-energy** error
- $A_{2}$: transmission overlap error
- $A_{3}$: Cluster error

![[Pasted image 20250605091445.png]]

```ad-important
**Out-of-energy** error is sent when:
$$
\tau_{c}-\tau_{1} \ge(h+1)Nt_{s}
$$
- $\tau_1$: Timestamp of the latest received clsuter head packet
- $\tau_c$: Current time at hte base station
- $h$: Number of hops (either $h=1$ or $h=2$ for single/double hop)

**Transmission Overlap Error** is sent when:


$$
\tau_{1}-\tau_{p} \le M_{t}
$$
- $\tau_{p}$: Timestamp of the previous cluster head packet
- $M_{t}$: is the data packet transmission duration

**Cluster Members Overlap** error is declared when the difference between any two *consecutive* timestamps is less than $M_t$
```




#### Algorithm 2: Cluster Member Algorithm

```pseudo
	\begin{algorithm}
	\caption{Cluster Member Algorithm}
	\begin{algorithmic}
		\procedure{main}{state}
			\state{set phase to $DEAD$;}
			\if{$DEAD$}
				\state{harvest energy;}
				\if{$sufficient \space energy \space collected$}
					\state{set phase to $SYNC$;}
				\endif
			\elseif{$SYNC$}
				\state{wait for a synchronization packet;}
				\if{$syncrhonization \space packet \space received$}
					\state{synchronize using the packet;}
					\state{set phase to $WAIT$;}
				\endif
			\elseif{$WAIT$}
				\state{wait for designated time slot;}
				\state{receive packets;}
				\if{$sync_1 \space or \space sync_2 \space packet \space received$}
					\state{set phase to $SYNC$;}
				\endif
				\if{$designed \space time \space slot$}
					\state{set phase to $TRANSMIT$;}
				\endif
			\elseif{$TRANSMIT$}
				\state{send packet;}
				\if{$still \space has \space suffient \space energy$}
					\state{set phase to $WAIT$;}
				\else
					\state{set phase to $DEAD$;}
				\endif
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```

- $E_{i}$: Determines when a cluster member has harvested sufficient energy (binary value)
- $B_{i}$: was a synch packet received or not?
- $D_{i}$: was a sync1 OR a sync2 packet received?
- $C_{i}$: is the member’s designated time slot reached?

![[Pasted image 20250605092318.png]]

```ad-summary

```


$\tau_{w}$: the time a cluster member waits whenever it enters the $WAIT$ state
- Set based on the prior state of $WAIT$ and the type of synchronization packet

$$

\tau_{w} = 
\left\{ 
\begin{array}{ll} 
WAIT \&SYNC_{1} & \tau_{n}+(j-1)t_{s} \\
WAIT\&SYNC_{2} & \tau_{n}+((N+j-k)\mod N)t_{s}  \\
TRANSMIT & \tau_{n}+Nt_{s}
\end{array}
\right.
$$

$$
\tau_{w}>\tau_{c}\to \text{Transition to the  } TRANSMIT \text{ state}
$$

- $\tau_{n}$: The current time moment where cluster member $i$ enters the $WAIT$ state
- $j$: $j \in \{1, 2, \dots N\}$ and the time slot number designated to cluster member $i$
- $k$: the current running time slot included in the received packet

#### Algorithm 3: Cluster Head Algorithm

```ad-note
The FSM for the cluster head is the same as a member node, but in $SYNC$ and $WAIT$, it marks the timestamps of the member nodes and stores them. It includes this information when sending the data to the root node so it can determine any errors!
```

```pseudo
	\begin{algorithm}
	\caption{Cluster Head Algorithm}
	\begin{algorithmic}
		\procedure{main}{phase}
			\state{set phase to $DEAD$;}
			\if{$DEAD$}
				\state{harvest energy;}
				\if{$sufficient \space energy \space collected$}
					\state{set phase to $SYNC$;}
				\endif
			\elseif{$SYNC$}
				\state{wait for synchronization packet;}
				\if{$synchronization \space packet \space received$}
					\state{synchronize using the packet;}
					\if{$a \space cluster \space member \space packet$}
						\state{mark the packet timestamp;}
						\state{store the packet and its timestamp;}
					\endif
					\state{set phase to $WAIT$;}
				\endif
			\elseif{$WAIT$}
				\state{wait for designated time slot;}
				\state{receive packets;}
				\if{$sync_1 \space or \space sync_2 \space packet \space received$}
					\state{set phase to $SYNC$;}
				\endif
				\if{$a \space cluster \space member \space packet$}
					\state{mark the packet timestamp;}
					\state{store the packet and its timestamp;}
				\endif
				\if{$designated \space time \space slot$}
					\state{set phase to $TRANSMIT$;}
				\endif
			\elseif{TRANSMIT}
				\state{combine all stored data in one packet;}
				\state{transmit the packet;}
				\if{$still \space has \space sufficient \space energy$}
					\state{set phase to $WAIT$;}
				\else
					\state{set phase to $DEAD$;}
				\endif
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```

### Section VI: Experimental Results

```ad-summary
Used **three** different setups:
1. *Setup 1*: Four nodes with one being a base station and the rest being cluster heads
2. *Setup 2*: Four nodes with one head, one cluster head, and two cluster members
3. *Setup 3*: 
```