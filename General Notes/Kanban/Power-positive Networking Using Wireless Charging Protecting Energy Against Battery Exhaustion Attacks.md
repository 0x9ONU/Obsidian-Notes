Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** ACM

**DOI**: https://doi.org/10.1145/3098243.3098265

**Authors**: Sang-Yoon Chang, Sristi Lakshmi Sravana Kumar, Bao Anh N. Tran, Sreejaya Viswanathan, Younghee Park, Yih-Chun Hu

**Publication Year**: 2017

**Country of Study**: 

**Tags**: USA & Singapore

```ad-abstract
title: Abstract
collapse: open
Energy is required for networking and computation and is a valuable resource for unplugged embedded systems. Energy DoS attack where a remote attacker exhausts the victim's battery by sending networking requests remains a critical challenge for the device availability. While prior literature proposes mitigation- and detection-based solutions, we propose to eliminate the vulnerability entirely by offloading the power requirements to the entity who makes the networking requests. To do so, we build communication channels using wireless charging signals, so that the communication and the power transfer are simultaneous and inseparable, and use the channels to build power-positive networking (PPN). PPN also offloads the computation-based costs to the requester, enabling authentication and other tasks considered too power-hungry for battery-operated devices. Furthermore, because we use the charging signal for bidirectional networking, the design requires no additional hardware beyond that for wireless charging. In this paper, we present PPN, implement a Qi-compatible prototype, and use the prototype to analyze the performance.
```

**Embed to Paper**: [[Power-positive Networking Using Wireless Charging.pdf]]

## Summary

The paper introduces **Power-Positive Networking (PPN)**, a novel approach to eliminate **Energy Denial-of-Service (Energy DoS)** attacks by coupling wireless power transfer with data communication. Unlike traditional methods that detect or mitigate such attacks, PPN makes the attacks infeasible by ensuring that the receiver gains energy during communication.

### Attack Model: Energy DoS 

- An external attacker repeatedly sends legitimate-looking networking requests (e.g., authentication packets, connection requests) to a victim device (e.g., IoT sensor, embedded system).
- Each request forces the victim to expend energy on:
    - **Networking operations** (receiving/processing packets).
    - **Authentication computations** (e.g., AES-CCM-128 decryption).
- Over time, the victim’s battery is drained, rendering it unavailable (a DoS attack).

```ad-warning
title: Impact
- **85.7% increase in power consumption** when receiving and authenticating malicious packets.
- For power-constrained devices (e.g., sensors), battery life could drop by **1–2 orders of magnitude**.
```

### Defense: Power-Positive Networking (PPN)

PPN defends by **eliminating the energy cost** of receiving requests and shifting all power costs to the requester.
- **Simultaneous Power + Data Transfer:**
    - Communication is embedded in **wireless charging signals** (Qi-standard inductive coupling).
    - The requester must power the receiver to initiate communication.
- **Bidirectional Communication:**
    - **Forward (Requester → Receiver):** Data modulated via **frequency-shift keying (FSK)**.
    - **Reverse (Receiver → Requester):** Feedback via **backscattering (ASK)**, requiring no extra energy.
- **Power-Aware Protocol:**
    - The receiver **only processes requests** after accumulating enough energy from the requester.
    - A malicious requester must "pay" (provide energy) to attack, making Energy DoS impractical.



