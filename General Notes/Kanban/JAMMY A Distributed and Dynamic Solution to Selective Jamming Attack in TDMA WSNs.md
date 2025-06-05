Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/TDSC.2015.2467391](https://doi.org/10.1109/TDSC.2015.2467391)

**Authors**: Marco Tiloca; Domenico De Guglielmo; Gianluca Dini; Giuseppe Anastasi; Sajal K. Das

**Publication Year**: 2015

**Country of Study**: Sweden, Italy

**Tags**: #jamming #wsn #tdma #IEEE80215 #interference

```ad-abstract
title: Abstract
collapse: open
Time division multiple access (TDMA) is often used in wireless sensor networks (WSNs), especially for critical applications, as it provides high energy efficiency, guaranteed bandwidth, bounded and predictable latency, and absence of collisions. However, TDMA is vulnerable to selective jamming attacks. In TDMA transmission, slots are typically pre-allocated to sensor nodes, and each slot is used by the same node for a number of consecutive superframes. Hence, an adversary could thwart a victim node's communication by simply jamming its slot(s). Such attack turns out to be effective, energy efficient, and extremely difficult to detect. In this paper, we present JAMMY, a distributed and dynamic solution to selective jamming in TDMA-based WSNs. Unlike traditional approaches, JAMMY changes the slot utilization pattern at every superframe, thus making it unpredictable to the adversary. JAMMY is decentralized, as sensor nodes determine the next slot utilization pattern in a distributed and autonomous way. Results from performance analysis of the proposed solution show that JAMMY introduces negligible overhead yet allows multiple nodes to join the network, in a limited number of superframes.
```

**Embed to Paper**: [[JAMMY_A_Distributed_and_Dynamic_Solution_to_Selective_Jamming_Attack_in_TDMA_WSNs.pdf]]

## Summary

### I. Introduction

**TDMA** (Time Division Multiple Access) is widely adopted in WSNs due to its energy efficiency and collision-free nature. However, its **predictable slot schedule** becomes a vulnerability when facing **selective jamming attacks**.

Selective jammers:
- Monitor the channel and target specific slots (usually high-value ones).
- Operate intermittently to avoid detection.
- Are energy-efficient and stealthy, making them more dangerous than brute-force jammers.

**Motivation**:
Existing solutions like spread spectrum and frequency hopping are **too resource-intensive** for WSNs. Thus, there's a need for a **lightweight, distributed, and reactive defense**.

**Proposed Solution**:  
**JAMMY** – a fully distributed anti-jamming protocol that:
- Monitors local delivery success rates.
- Detects selective jamming based on threshold logic.
- Dynamically reassigns TDMA slots within 2-hop neighborhoods.

---

### II. Threat and Network Model

#### Threat Model

- **Selective jammer**: Listens passively and jams only chosen slots.
- **Reactive**: Does not jam unless detecting valuable transmissions.
- **Energy-aware**: Conserves power to maximize disruption over time.

#### Network Assumptions

- WSN is **multi-hop** and operates under **TDMA scheduling**.
- Nodes are **resource-constrained**, **non-malicious**, and lack GPS or global clocks.
- Only **local synchronization** and 1-hop knowledge are assumed.

---

### III. JAMMY Overview

JAMMY contains two main components:
1. **Detection module**: Locally identifies jammed slots.
2. **Reaction module**: Collaboratively reassigns slots using neighbor coordination.

![JAMMY Overview](attachment:image_1.jpg)

---

### IV. Slot Monitoring and Detection Logic

Each node keeps a sliding history of delivery outcomes for its slot. If delivery success degrades, the node suspects jamming.

Let:
- $s_i$: Time slot of node $i$
- $T_w$: Monitoring window length (e.g., 100 frames)
- $\text{PDR}_i$: Packet delivery ratio in slot $s_i$

$$
\text{PDR}_i = \frac{\text{Successful receptions}}{\text{Transmissions in } T_w}
$$

A threshold $\theta$ (e.g., 0.5) is defined. If:

$$
\text{PDR}_i %3C \theta
$$

then slot $s_i$ is **flagged as jammed**.

---

### V. Slot Switching Protocol

When a slot is detected as jammed:

1. **Node A** flags its slot $s_A$ as jammed.
2. Broadcasts a **JAMMED_SLOT** message to neighbors.
3. Selects a new slot $s_A'$ not used in its 2-hop neighborhood.
4. Broadcasts a **NEW_SLOT** message to confirm its reassignment.

#### Slot Reuse Safety Condition:

A slot $s$ is reusable if:

$$
\forall j \in \mathcal{N}_2(i): s_j \neq s
$$

where $\mathcal{N}_2(i)$ is the 2-hop neighborhood of node $i$.

![Slot Switching Example](attachment:image_2.jpg)

This ensures no two interfering nodes use the same slot.

---

### VI. Properties and Design Goals

- **Decentralized**: No sink or coordinator needed.
- **Reactive**: Slot switches only triggered upon detection.
- **Compatible**: Works with standard TDMA with no special hardware.
- **Low overhead**: Few control messages, no extra energy usage in normal operation.

---

### VII. Evaluation

**Simulation Setup**:
- Network sizes: 10–100 nodes
- Topology: Multi-hop trees
- Jammer: Selective and reactive with controllable aggressiveness

#### Metrics:
- **Packet Delivery Ratio (PDR)**
- **Energy consumption**
- **Latency of detection/reaction**
- **Control message overhead**

---

#### Key Results

**1. Packet Delivery Ratio (PDR)**

![PDR vs Time](attachment:image_3.jpg)

- JAMMY maintains $%3E85\%$ PDR under active jamming.
- Plain TDMA drops below $30\%$ under the same conditions.

**2. Reaction Time**

- Slot switches occur within **5 TDMA cycles** of detection.
- Local coordination reduces latency in dense areas.

**3. Energy Overhead**

- Less than **10% increase in energy use**, even under sustained attacks.
- Significantly better than centralized or cryptographic countermeasures.

---

### VIII. Conclusion

JAMMY is an **efficient, fully-distributed, anti-jamming protocol** for TDMA-based WSNs that:

- Detects selective jamming via local delivery statistics.
- Dynamically reassigns slots with minimal control traffic.
- Scales to large networks without centralized logic.

This makes JAMMY a **practical defense strategy** for real-world WSN deployments lacking energy or computation budget for traditional security.

---

### Key Equations

**Delivery Rate**:
$$
\text{PDR}_i = \frac{\text{Successful receptions}}{\text{Transmissions in } T_w}
$$

**Slot Jam Detection**:
$$
\text{PDR}_i < \theta
$$

**Slot Reuse Constraint**:
$$
\forall j \in \mathcal{N}_2(i): s_j \neq s_i
$$

---
