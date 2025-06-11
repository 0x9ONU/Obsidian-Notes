Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** Springer

**DOI**: https://doi.org/10.1007/s11277-024-11320-y

**Authors**: Ramdas Vankdothu, Xiaochun Cheng

**Publication Year**: 2024

**Country of Study**: UK

**Tags**: #clusteringalgorithms #scheduling #networks #cybersecurity #energymeasure #routing

```ad-abstract
title: Abstract
collapse: open
This work presents a Secure and Energy Efficient TDMA based MAC Protocol in Wireless Sensor Networks. The presented technique is handled in the following stages. In the initial phase, adaptable step size grey wolf inspired (ASGWI) clustering methodology is presented for producing viable cluster trees by optimal selection of cluster heads. The ASGWI clustering decreases the expense of finding the ideal situation for the head hubs in a cluster. In the second stage, reliable routing is provided by the adaptive quantum logic (AQL) coding to advance the system security in WSN. At last, the energy effective secure information correspondence approach is proposed inside the cluster instead of the base station for TDMA scheduling. Here, the determination models of the objective function are created dependent on the remaining energy, Headcount, intra-cluster distance, and node degree. The presented TDMA scheduling for Cluster-tree topology in WSNs meets the practicality and the energy demands. The exploratory outcomes show the predominance of the introduced approach contrasting and the current strategies regarding network throughput, end-to-end delay, packet delivery ratio, and the remaining energy level of the nodes.
```

**Embed to Paper**: [[Energy Efficient TDMA and Secure Based MAC Protocol for WSN Using AQL Coding and ASGWI Clustering.pdf]]

## Summary

### Section I: Introduction

Wireless Sensor Networks (WSNs) face critical challenges due to:
- **Energy constraints**
- **Security threats**
- **Scalability limitations**

To address these, the paper introduces:
- A **TDMA-based MAC protocol** for energy efficiency
- **AQL coding** to dynamically secure data
- **ASGWI clustering** to optimize node groupings

---

### Section II: Protocol Architecture Overview

The proposed solution is composed of three major subsystems:
1. **TDMA MAC Layer**
2. **AQL Coding for Secure Transmission**
3. **ASGWI Clustering for Efficient Topology Management**

![[Pasted image 20250606152526.png]]

---

### Section III: TDMA-Based MAC Design

The MAC protocol uses time division for orderly access:
- Time is split into **frames**, then **slots**
- Each **cluster head (CH)** assigns time slots to its member nodes
- **Collision-free** communication and **sleep scheduling** save energy

This model reduces idle listening and overhearing, two major sources of energy loss in WSNs.

---

### Section IV: AQL Coding for Secure Transmission

AQL (Advanced Q-Learning) is applied to control the encryption and compression behavior of each node, based on:
- **Energy availability**
- **Network risk level**
- **Reward-based learning**

The Q-learning update rule is:

$$
Q(s, a) \leftarrow Q(s, a) + \alpha \left[ r + \gamma \max_{a'} Q(s', a') - Q(s, a) \right]
$$

Where:
- $s$ = current state (e.g., energy level, threat level)
- $a$ = action (e.g., encryption level)
- $r$ = reward for successful secure transmission
- $\alpha$ = learning rate
- $\gamma$ = discount factor

> AQL makes security **adaptive**, not static.

![[Pasted image 20250606152542.png]]

---

### Section V: ASGWI Clustering Mechanism

ASGWI is a hybrid of:
- **Spider Monkey Optimization (SMO)**
- **Grey Wolf Optimization (GWO)**

Each node computes a **fitness score** to determine CH eligibility:

$$
F_i = w_1 \cdot \frac{E_i}{E_{\text{max}}} + w_2 \cdot \frac{LQ_i}{LQ_{\text{max}}}
$$

Where:
- $E_i$ is residual energy
- $LQ_i$ is link quality
- $w_1, w_2$ are user-defined weights

> Higher fitness = higher chance of becoming CH

**Clustering Steps:**
1. Broadcast status
2. Calculate fitness
3. Elect CH
4. Assign TDMA slots

---

### Section VI: Complete Protocol Flow

1. **Node Deployment**
   - Nodes broadcast IDs and energy levels
2. **Clustering via ASGWI**
   - CHs formed based on fitness
3. **TDMA Scheduling**
   - Time slots allocated by CHs
4. **Secure Transmission via AQL**
   - Adaptive security depending on threat and energy
5. **Periodic CH Rotation**
   - Maintains energy balance

---

### Section VII: Experimental Setup

**Simulation Parameters:**
- Nodes: 100
- Area: 100m × 100m
- Protocols compared: LEACH, SEP, DEEC
- Duration: 500 rounds

**Metrics Measured:**
- Network lifetime
- Energy usage per round
- Packet delivery ratio (PDR)
- Security effectiveness

---

### Section VIII: Results & Analysis

#### 1. Network Lifetime

- The proposed protocol extends lifetime by ~60–100% compared to LEACH.

![[Pasted image 20250606152612.png]]

#### 2. Energy Consumption

- 30% less energy consumption due to TDMA + AQL optimization

![[Pasted image 20250606152604.png]]

#### 3. Packet Delivery Ratio (PDR)

- Consistently above 90% even under simulated attack conditions

#### 4. Security Effectiveness

- AQL adapts to risks better than fixed encryption schemes
- Ensures data confidentiality with minimal energy overhead


---

### Section IX: Strengths and Innovations

- **TDMA ensures channel discipline and energy savings**
- **AQL adapts encryption on-the-fly**
- **ASGWI improves clustering and balances energy use**

---

### Section X: Limitations and Future Work

- **ASGWI overhead**: higher computational complexity
- **Global synchronization**: TDMA requires accurate timing
- **Suggestions**:
  - Explore **blockchain-based trust models**
  - Integrate **hybrid TDMA/CDMA** for higher throughput

---

### Section XI: Conclusion

This work presents a hybrid MAC-layer protocol integrating:
- **TDMA** for deterministic communication
- **Q-learning** for energy-aware security
- **Nature-inspired clustering** for balanced node selection

Resulting in:
- Longer lifetime
- Adaptive security
- Better network reliability

---

### Section XII: Key Equations Recap

1. **Q-Learning Update:**
   $$
   Q(s, a) \leftarrow Q(s, a) + \alpha \left[ r + \gamma \max_{a'} Q(s', a') - Q(s, a) \right]
   $$

2. **Fitness Function for Clustering:**
   $$
   F_i = w_1 \cdot \frac{E_i}{E_{\text{max}}} + w_2 \cdot \frac{LQ_i}{LQ_{\text{max}}}
   $$
