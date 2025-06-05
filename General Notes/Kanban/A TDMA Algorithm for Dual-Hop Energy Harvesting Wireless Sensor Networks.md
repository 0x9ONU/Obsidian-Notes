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

![[Pasted image 20250605080934.png]]

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

