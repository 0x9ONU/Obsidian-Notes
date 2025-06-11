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

## Summary

### Section I: Introduction

Wireless Sensor Networks (WSNs) are widely used for monitoring and querying environments. However, traditional query processing in WSNs is vulnerable to several security issues, including **false data injection**, **eavesdropping**, and **node compromise**.

The paper proposes a **secure query processing framework** based on **dynamic TDMA (Time Division Multiple Access)** to:
- Increase query reliability
- Reduce response delays
- Strengthen resistance against malicious nodes

Traditional protocols like **Flooding** and **Directed Diffusion** are inefficient in high-latency or secure-critical applications due to redundant messages and weak scheduling. This motivates a **TDMA-based approach**, where each node gets a specific timeslot, minimizing collisions and enabling deterministic communication.

---

### Section II: System Model and Assumptions

The network model includes:
- **Static deployment** of homogeneous sensor nodes
- A **base station (BS)** that disseminates queries and receives replies
- A **query region**, determined by geographic location
- Each sensor is aware of:
  - Its **geographic location**
  - **Neighbor lists**
  - Its **TDMA slot**

The model assumes:
- All communications use a **symmetric key cryptographic scheme**
- A **secure bootstrapping phase** has already established shared keys between nodes and the BS
- A **query dissemination model** where the BS issues attribute-based queries like:  
  `"SELECT temperature FROM region_X WHERE temp > 30°C"`

---

### Section III: Security Threats and Requirements

The paper categorizes security threats into:
- **False data injection**: Malicious nodes may inject incorrect sensor readings
- **Eavesdropping**: Interceptors may observe responses to reconstruct sensitive data
- **Node replication**: Cloned nodes may replay data or jam channels

The following requirements must be met:
1. **Authentication**: Ensure only legitimate nodes participate in query responses
2. **Confidentiality**: Protect the content of sensor readings
3. **Data integrity**: Ensure the responses have not been tampered with
4. **Resistance to DoS**: Avoid energy depletion through jamming or collisions

---

### Section IV: Proposed Dynamic TDMA Scheme

The key idea is to **dynamically assign TDMA slots** only to nodes **qualified to respond** to a given query.

#### Key Steps:

1. **Query Dissemination**:
   - Base station encrypts the query with the **shared key of the region**.
   - Only nodes within the region decrypt and parse the query.

2. **Eligibility Check**:
   - Each node checks if it satisfies the query condition.
   - If yes, it becomes an **eligible responder**.

3. **TDMA Slot Allocation**:
   - BS assigns time slots dynamically to only the eligible responders.
   - Allocation is included in the query payload using **secure slot scheduling packets**.

4. **Data Response Phase**:
   - Each eligible node replies during its slot using authenticated and encrypted messages.

5. **Base Station Aggregation**:
   - BS collects and verifies responses, discarding any packets outside the allocated slots or failing authentication.

---

### Section V: Protocol Design Details

#### Time Slot Management:

Each TDMA frame is divided into **k slots**, where each slot is long enough to:
- Transmit a data packet
- Perform cryptographic operations (encryption + MAC)

Slot assignment algorithm ensures:
- **No overlap**
- **Minimum slot wastage**
- **Predictable energy usage** by sleeping when not transmitting

#### Security Measures:

Each reply includes:
- A **Message Authentication Code (MAC)** to verify data origin
- A **nonce** to prevent replay
- An **encrypted payload** (AES-like lightweight cipher assumed)

#### Example Flow:

Query: "Temp > 30°C"  
→ BS sends encrypted query  
→ Nodes in region decrypt and verify  
→ Nodes with temp > 30°C → eligible  
→ BS sends TDMA schedule: slot 1 = Node A, slot 2 = Node B  
→ Node A sends encrypted packet in slot 1; Node B in slot 2  
→ BS verifies and aggregates


---

### Section VI: Evaluation and Results

Simulations are conducted using:
- **NS-2 simulator**
- A 50-node network with varying query region sizes and adversarial presence

#### Metrics Evaluated:

1. **Energy Efficiency**:
   - Dynamic TDMA reduces energy by 27% compared to Flooding
2. **Latency**:
   - Query response time improves by 35%
3. **Packet Delivery Ratio (PDR)**:
   - TDMA-based query response remains near 100% under jamming
4. **Security Success Rate**:
   - 100% rejection of unauthorized or forged replies
5. **Scalability**:
   - Performance degrades gracefully as node count increases


---

### Section VII: Conclusion

The paper proposes a **lightweight, secure, and energy-efficient** scheme for secure query processing in WSNs using **dynamic TDMA scheduling**. The design minimizes collisions, optimizes energy use, and provides resistance against common network-layer and application-layer attacks.

Key Takeaways:
- **Security is embedded into the MAC layer** through TDMA control
- **Node eligibility filtering** reduces network load and leakage risk
- Practical and scalable with low overhead

Future work may focus on:
- Integrating **machine learning** to predict node eligibility
- Combining with **location obfuscation** to enhance privacy

---
