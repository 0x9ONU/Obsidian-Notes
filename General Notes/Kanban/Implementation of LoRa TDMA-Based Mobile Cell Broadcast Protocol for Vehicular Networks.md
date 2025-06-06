Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** MDPI

**DOI**: [https://doi.org/10.3390/info16060447](https://doi.org/10.3390/info16060447)

**Authors**:  Modris Greitans, Gatis Gaigals, Aleksandrs Levinskis

**Publication Year**: 2025

**Country of Study**: Latvia

**Tags**: #adhocnetworks #networks #radio #multiaccess #tdma

```ad-abstract
title: Abstract
collapse: open
With increasing vehicle density and growing demands on transport infrastructure, there is a need for resilient, low-cost communication systems capable of supporting safety-critical applications, especially in situations where primary channels like Wi-Fi or LTE are unavailable. This paper proposes a novel, real-time vehicular network protocol that functions as an emergency fallback communication layer using long-range LoRa modulation and off-the-shelf hardware. The core contribution is a development of Mobile Cell Broadcast Protocol that is implemented using Long-Range modulation and time-division multiple access (TDMA)-based cell broadcast protocol (LoRA TDMA) capable of supporting up to six dynamic clients to connect and exchange lightweight cooperative awareness messages. The system achieves a sub-100 ms node notification latency, meeting key low-latency requirements for safety use cases. Unlike conventional ITS stacks, the focus here is not on full-featured data exchange but on maintaining essential communication under constrained conditions. Protocol has been tested in laboratory to check its ability to ensure real-time data exchange between dynamic network nodes having 14 bytes of payload per data packet and 100 ms network member notification latency. While focused on vehicular safety, the solution is also applicable to autonomous agents (robots, drones) operating in infrastructure-limited environments.
```


**Embed to Paper**: [[Implementation of LoRa TDMA-Based Mobile Cell Broadcast Protocol for Vehicular Networks.pdf]]

## Summary

### Section I: Introduction

In disaster scenarios, mobile base stations are critical for broadcasting emergency alerts. This paper proposes a **TDMA-based broadcast protocol using LoRa** in vehicular networks. The goal is to ensure **reliable, real-time emergency messages** from a mobile broadcaster (e.g., vehicle-mounted base station) to static or slow-moving LoRa nodes.

Key motivations:
- LoRa provides **long-range**, **low-power** communication
- TDMA ensures **collision-free** scheduling for real-time delivery
- Disaster resilience requires **mobility**, **flexibility**, and **low latency**


---

### Section II: Related Work

Several previous works addressed:
- **LoRaWAN**, which focuses on ALOHA-based access (unsuitable for real-time)
- Broadcast in WSNs but not optimized for **vehicular** mobility
- LoRaMAC implementations with **fixed** infrastructure, not suitable for dynamic disaster zones

TDMA is proposed as a superior method due to:
- **Deterministic timing**
- **Energy savings**
- Avoidance of **collisions**

---

### Section III: Proposed Protocol Design

The proposed system includes:

#### 1. Mobile Base Station (MBS)
Mounted on a vehicle. Responsible for:
- Broadcasting messages
- Managing time slots
- Synchronizing node clocks

#### 2. LoRa End Nodes
Receive emergency data using assigned time slots. Sleep when idle to conserve power.

![[Pasted image 20250606152652.png]]

---

### Section IV: Time Synchronization

#### Time Division Setup

Each node has a specific **time slot** during which it wakes up to receive messages.

Let:

- $T_f$: Frame duration  
- $T_s$: Slot duration  
- $N$: Number of nodes  
- $T_{offset}$: Start offset for synchronization  
- $t_i$: Time slot assigned to node $i$

Then:

$$
t_i = T_{offset} + i \cdot T_s \quad \text{for } i = 0, 1, \dots, N-1
$$

Synchronization is achieved by:
- Sending a **sync packet** at the start of each frame
- Nodes adjusting local clocks using sync timestamps

![[Pasted image 20250606152811.png]]

---

### Section V: Packet Format

Each LoRa packet includes:
- **Header**: Frame ID, Slot ID
- **Payload**: Emergency content
- **Timestamp**: Used for sync

---

### Section VI: Implementation Details

#### Hardware:
- **LoRa modules**: HopeRF RFM95W (Semtech SX1276)
- **Controller**: Arduino-compatible STM32
- **Mobile Base Station**: Raspberry Pi with GPS and LoRa hat

#### Software:
- TDMA protocol written in C
- Clock adjustments via GPS timestamping
- Frame broadcast cycle: every 10 seconds

![[Pasted image 20250606152848.png]]

---

### Section VII: Experimental Results

#### Setup:
- 5 LoRa end nodes placed at distances from 50 to 300 meters
- Mobile base station moves along a predetermined path
- Metrics: **Delivery ratio**, **Latency**, **Synchronization error**

#### 1. Delivery Ratio

All nodes consistently received their packets during assigned slots:
- 100% success within 200m
- ~95% at 300m due to LoRa signal attenuation

#### 2. Latency

The TDMA frame time controls delay:
$$
\text{Worst-case latency} = T_f
$$
- With $T_f = 10s$, each node experiences a max delay of 10s

![[Pasted image 20250606152915.png]]

![[Pasted image 20250606152924.png]]

![[Pasted image 20250606152933.png]]

#### 3. Synchronization Accuracy

GPS-based sync keeps all nodes within **±2 ms jitter**, sufficient for 1-second slot durations.

---

### Section VIII: Advantages of the Proposed System

- **Collision-free** delivery via TDMA
- **Power efficiency**: Nodes only wake during their slots
- **High reliability**: Deterministic behavior ensures timely alerts
- **Mobility support**: Operates even while the base station is moving

---

### Section IX: Limitations & Future Work

- **Scalability**: Frame length grows linearly with number of nodes
- **Slot reassignment**: Currently static; dynamic joining/leaving not handled
- **Time drift**: Though minimal with GPS, still needs occasional re-sync

Future improvements:
- **Dynamic slot scheduling**
- **Multi-hop relays**
- **Integration with 5G emergency services**

---

### Section X: Conclusion

This paper successfully demonstrates a working **TDMA-based LoRa broadcast protocol** designed for **vehicular deployment** in disaster zones. The system:
- Reduces collisions and latency
- Maintains energy efficiency
- Shows high packet delivery under real-world mobility

It provides a foundation for **mobile LoRa infrastructure** in emergency alert systems.

---

### Section XI: Key Equations Recap

1. **Slot Assignment:**

$$
t_i = T_{offset} + i \cdot T_s
$$

2. **Worst-Case Delay:**

$$
\text{Latency}_{\max} = T_f
$$
