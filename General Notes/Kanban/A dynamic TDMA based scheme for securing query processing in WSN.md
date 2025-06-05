Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** Springer

**DOI**: https://link.springer.com/content/pdf/10.1007/s11276-011-0393-0.pdf

**Authors**:Amrita Ghosal, Subir Halder, Sipra DasBit

**Publication Year**: 2011

**Country of Study**: Ireland

**Tags**: #IOT #dynamicnetworks #cybersecurity #siRNA #TDMA

```ad-abstract
title: Abstract
collapse: open
Nodes in a wireless sensor network (WSN) are generally deployed in unattended environments making the nodes susceptible to attacks. Therefore, the need of defending such attacks becomes a big challenge. We propose a scheme to build a security mechanism in a query-processing paradigm within WSN. The scheme is capable of protecting replay attack while preserving essential properties of security such as authentication, data integrity and data freshness. The solution is made lightweight using symmetric key cryptography with very short-length key. Further, the key used in our scheme is neither pre-deployed nor is transmitted directly. The key information is established among nodes through an efficient use of one variant of dynamic TDMA mechanism which ensures security of key. Another variant of dynamic TDMA is used to make the scheme bandwidth saving, an essential quality of WSN. Performance of the scheme is analyzed in terms of storage, computation and communication overhead. Finally the analytical results are compared with two of the existing schemes including the previous version of the present scheme that show significant reduction of all such overheads thereby proving the suitability of the proposed scheme for a resource-constrained network like WSN.
```

**Embed to Paper**: [[A dynamic TDMA based scheme for securing query processing.pdf]]

## Summary

### I. Introduction

**Wireless Sensor Networks (WSNs)** are increasingly used in critical and sensitive applications such as **battlefields, environmental monitoring, and surveillance**. These systems often rely on **query-based data collection** (e.g., continuous, snapshot, or historical queries).

However, **query processing in WSNs** introduces serious **security vulnerabilities**, especially when the data collection is **multi-hop and collaborative**. These vulnerabilities include:
- **Data injection**
- **Packet dropping**
- **False data aggregation**
- **Replay attacks**

To mitigate these threats, the paper proposes a **TDMA-based secure communication and query scheme** designed for **cluster-based WSNs**.

%3E This paper specifically targets **multi-hop query delivery** and **cluster-based architectures**, where a base station disseminates a query and receives responses via a cluster of sensor nodes.

---

### II. Related Work

Previous work has focused on:
- **Secure query processing protocols** using key management or encryption schemes (e.g., [11], [12])
- **Secure routing mechanisms** ([13])
- **TDMA-based solutions** for energy efficiency and delay reduction ([15], [16])

> This paper fills the gap by **integrating security** with **TDMA scheduling** to simultaneously defend against malicious query manipulation and improve efficiency.

---

### III. System Model

The WSN model includes the following assumptions:

- The network is **clustered**: clusters are managed by **Cluster Heads (CHs)**.
- **Base Station (BS)** broadcasts queries to CHs, which then relay to their members.
- All communications use **TDMA slots** assigned dynamically.
- Nodes can be **malicious**: dropping, replaying, modifying, or injecting false queries.

> Security Objective: Ensure that only **authentic queries** reach sensor nodes and are processed correctly.

---

### IV. Attack Model

#### Threats Considered:

1. **Query Modification**  
   A compromised node modifies the query en route.

2. **Query Injection**  
   A malicious node generates a fake query.

3. **Query Replay**  
   Old queries are replayed to mislead the network.

4. **Packet Dropping**  
   Legitimate queries or responses are dropped.

5. **Eavesdropping**  
   Unauthorized access to query content or results.

---

### V. Proposed Scheme Overview

The core idea: use **dynamically assigned TDMA slots** that are **authenticated** and **time-bounded** to protect against attacks.

#### Scheme Highlights:
- **Base Station** assigns TDMA schedules for each cluster
- Each **slot is bound to the node’s ID and time**
- Query packets are **authenticated** using lightweight **hash-based MACs**
- CHs verify queries and disseminate only valid ones
- Replay protection via **timestamps and counters**

---

### VI. TDMA Slot Assignment Strategy

The base station assigns a **TDMA slot tuple** for each cluster member:

$$
\text{Slot} = (ID_i, T_i, HMAC_{K_i}(ID_i \parallel T_i))
$$

Where:
- $ID_i$ = sensor node ID  
- $T_i$ = slot time  
- $K_i$ = shared secret key between node and BS  
- $HMAC$ = hashed message authentication code

> This guarantees authenticity and timeliness of the slot information.

#### Figure: TDMA Slot Assignment
![TDMA Slot Assignment](attachment:image_1.jpg)

> Each sensor receives a unique, verifiable time slot for transmission.

---

### VII. Query Dissemination

Query packets from the BS include:
- Query content $Q$
- Cluster ID
- Slot tuples for CH and members
- $HMAC_{K_{CH}}(Q \parallel Slot\_Tuples)$

CH validates the packet and forwards it during its allocated slot. Leaf nodes perform a similar validation using their own keys.

---

### VIII. Secure Query Processing

Each node processes the query only if:
1. It is received **during the node’s assigned slot**
2. It passes **HMAC verification**
3. The **timestamp is fresh**

This prevents:
- Unauthorized forwarding
- Replay attacks
- Eavesdropping (partially mitigated by key secrecy)

---

### IX. Handling Attacks

| **Attack**           | **Defense Mechanism**                                |
|----------------------|-------------------------------------------------------|
| Query modification   | Fails HMAC verification                              |
| Query injection      | Node has no valid slot or key                        |
| Query replay         | Detected via stale timestamp                         |
| Packet dropping      | Mitigated via **ack-based retransmissions**          |
| Eavesdropping        | Query content protected by **keyed MACs**            |

> Dynamic TDMA and slot-specific HMACs allow detection and isolation of compromised nodes quickly.

---

### X. Performance Evaluation

#### Metrics:
- **Detection Rate** of various attacks
- **Communication Overhead**
- **Energy Consumption**

Simulation setup:
- 100 sensor nodes
- Queries from BS to 10 randomly chosen clusters
- Up to 20% malicious nodes

#### Results Summary:
- **High detection rate** (> 90%) for all considered attacks
- Minimal communication overhead (~5%)
- Slight increase in energy use due to HMAC verification, but acceptable for typical WSNs

#### Figure: Detection Rate vs. Malicious Node Count
![Detection Rate Graph](attachment:image_2.jpg)

> Detection remains robust even as attacker presence increases.

---

### XI. Conclusion

The authors propose a **lightweight, scalable, and effective** TDMA-based solution for secure query processing in WSNs.

#### Key Benefits:
- Combines **time-slot scheduling** with **per-slot authentication**
- Resists query modification, injection, and replay
- Requires only **symmetric key cryptography** (low overhead)

#### Future Work:
- Apply scheme to **data aggregation**
- Extend to **mobile sensor nodes**
- Integrate with **public key infrastructure** for scalable key management

---

### Key Equations

1. **TDMA Slot Authentication**
   $$
   HMAC_{K_i}(ID_i \parallel T_i)
   $$

2. **Query Packet Authentication**
   $$
   HMAC_{K_{CH}}(Q \parallel Slot\_Tuples)
   $$

---
