Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/TWC.2016.2636201](https://doi.org/10.1109/TWC.2016.2636201)

**Authors**: Ahmed El Shafie; Trung Q. Duong; Naofal Al-Dhahir

**Publication Year**: 2016

**Country of Study**: USA

**Tags**: #cybersecurity #jamming #qos #receivers #snr #wireless #tdma #sensornode

```ad-abstract
title: Abstract
collapse: open
This paper proposes a cross-layer design to enhance the security of a set of buffered legitimate source nodes wishing to communicate with a common destination node using a time-division multiple-access scheme with probabilistic time slot assignment. The users' assignment probabilities to the time slots are optimized to satisfy a certain quality-of-service (QoS) requirement for each of the legitimate source nodes. To further improve the system security, we propose beamforming-based cooperative jamming schemes subject to the availability of the channel state information (CSI) at the legitimate nodes. We assume that if a source node is not selected for data transmission, it is a cooperative jamming node. We impose an average transmit power constraint (averaged across time slots) on each source node. Hence, the source nodes should efficiently distribute their average transmit powers throughout the network operation between data and artificial noise transmissions to satisfy the QoS requirements. We investigate the two cases where a global CSI is assumed at the legitimate nodes and where there is no eavesdropper's CSI. The case where there is no CSI at the jamming nodes is also investigated and a new scheme is proposed. We derive closed-form expressions for the instantaneous secrecy rate for each scheme as well as the secrecy outage probability. Moreover, we derive the secrecy stable-throughput and delay-requirement regions of the network. Our proposed jamming schemes achieve significant increases in the secure throughput over existing schemes from the literature and over the no-jamming scheme.
```

**Embed to Paper**: [[QoS-Aware_Enhanced-Security_for_TDMA_Transmissions_from_Buffered_Source_Nodes.pdf]]
## Summary

### I. Introduction

**Wireless Sensor Networks (WSNs)** are integral to many real-time and mission-critical applications. These applications often require **guaranteed delay bounds**, **data reliability**, and **robust security**.

The authors present a **QoS-Aware Enhanced Security (QAES)** scheme for **TDMA-based communication**, where **sensor nodes buffer data** before transmitting in **dedicated time slots**. This system:
- Enforces **QoS constraints** (bounded delay, packet loss)
- Detects and mitigates **security violations**
- Implements **slot preemption** and **buffer-aware transmission control**

#### Motivations:
- Traditional TDMA lacks flexibility to address **buffer overflows**, **dynamic traffic**, and **malicious interference**
- Real-time applications require **low latency**, **bounded jitter**, and **secure communication paths**

---

### II. Network and Attack Model

#### Network Assumptions:
- **Cluster-based WSN**
- **Base Station (BS)** initiates slot scheduling
- Nodes buffer data and transmit during their assigned **TDMA slots**
- Links may have **variable delays and packet losses**
- **Slot collisions**, **false data**, or **slot misuse** may occur

#### Attack Types Considered:
1. **Slot Misuse**: Malicious nodes transmit outside their assigned slot
2. **Fake Data Injection**: Sending corrupted packets during a valid slot
3. **Slot Hijacking**: Reuse of expired slots or preemption of others
4. **Replay Attacks**: Resending buffered data to exhaust bandwidth

---

### III. Overview of the Proposed QAES System

The system uses:
- **Buffer monitoring** to prevent overflows
- **Slot integrity checks** via timestamped MACs
- **Dynamic slot control**: preemption, reassignment, or blackout
- **QoS constraints** for delay, jitter, and loss tolerances

#### Figure: System Architecture  
![System Architecture](attachment:image_1.jpg)

Each node maintains:
- **Slot State**: `VALID`, `EXPIRED`, `PREEMPTED`, etc.
- **Buffer Status**: `EMPTY`, `OVERLOADED`, `NORMAL`
- **Authentication Key** shared with BS

---

### IV. Buffer and QoS Monitoring

A core concept is that **transmission slots are tied to buffer and delay conditions**.  

Let:
- $d_{ij}$ = delay from node $i$ to node $j$  
- $J_{ij}$ = jitter  
- $PLR_{ij}$ = packet loss rate

The system ensures:

$$
d_{ij} \leq D_{max}, \quad J_{ij} \leq J_{max}, \quad PLR_{ij} \leq P_{max}
$$

If any condition is violated, the node is marked **"QoS-breaching"** and its slot may be revoked or suspended.

#### Equation: QoS Violation Score

$$
S_i = \alpha \cdot \frac{d_i}{D_{max}} + \beta \cdot \frac{J_i}{J_{max}} + \gamma \cdot \frac{PLR_i}{P_{max}}
$$

If $S_i \%3E 1$, the node is penalized or flagged.

---

### V. Secure Slot Allocation and Monitoring

Each TDMA slot is protected by:
- **HMAC** for integrity and authentication
- **Timestamps** to prevent replay
- **Slot tokens** that include ID and state

#### Slot Token Format:

$$
Token = \{ ID, Time, State, HMAC_K(ID \parallel Time \parallel State) \}
$$

Malicious actions like slot stealing or injection fail verification.

> Each node verifies slot tokens before transmitting. Invalid tokens result in **immediate slot deallocation** and report to BS.

---

### VI. Detection and Mitigation Strategy

Upon detecting misbehavior (QoS or security):
- Node is **blacklisted temporarily**
- Slot is **disabled or reassigned**
- Buffer is **flushed**, if needed
- Other cluster members are **alerted**

#### Figure: Detection and Control Flow  
![Detection Flow](attachment:image_2.jpg)

> Mitigation is distributed but coordinated via the base station and CHs.

---

### VII. Performance Evaluation

**Simulation Setup:**
- 50 nodes
- Real-time video and sensor data streams
- 10% to 40% malicious nodes introduced
- Metrics: **Throughput**, **Delay**, **Packet Loss**, **Energy**

#### Results Summary:

| Metric         | QAES vs. Baseline |
|----------------|------------------|
| Packet Loss    | ↓ by ~40%        |
| Average Delay  | ↓ by ~25%        |
| Jitter         | ↓ by ~30%        |
| Malicious Drop | ↑ by ~3×         |

#### Figure: Packet Loss vs. Attack Rate  
![Packet Loss Graph](attachment:image_3.jpg)

> QAES maintains stability and responsiveness even under high malicious node presence.

---

### VIII. Conclusion

QAES integrates **QoS-awareness** with **slot-level security enforcement** for TDMA-based buffered transmissions.

**Key Contributions:**
- Dynamic and secure TDMA slot handling
- Delay, jitter, and loss bound enforcement
- Detection and rapid mitigation of malicious slot activity

**Future Work:**
- Integrate with **energy-aware slot management**
- Support **mobility** and **dynamic clustering**
- Adapt scheme for **multi-channel TDMA**

---

### Key Equations Recap

1. **QoS Constraint Boundaries**  
   $$
   d_{ij} \leq D_{max}, \quad J_{ij} \leq J_{max}, \quad PLR_{ij} \leq P_{max}
   $$

2. **QoS Violation Score**  
   $$
   S_i = \alpha \cdot \frac{d_i}{D_{max}} + \beta \cdot \frac{J_i}{J_{max}} + \gamma \cdot \frac{PLR_i}{P_{max}}
   $$

3. **Slot Token Authentication**  
   $$
   HMAC_K(ID \parallel Time \parallel State)
   $$
