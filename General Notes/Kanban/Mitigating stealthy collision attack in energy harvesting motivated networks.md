Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/MILCOM.2017.8170779

**Authors**: Cong Pu; Sunho Lim; Byungkwan Jung; Manki Min

**Publication Year**: 2017

**Country of Study**: USA

**Tags**: #detection #collision #energyharvesting 

```ad-abstract
title: Abstract
collapse: open
Energy harvesting motivated networks (EHNets) are rapidly emerging as a major part of ubiquitous computing and communication infrastructure in the presence of Internet-of-Things (IoT). A set of self-sustainable nodes equipped with energy harvesting capabilities can effectively exploit ambient energy and convert it into electric energy, but it is admittedly vulnerable to a Denial-of-Service (DoS) attack that primarily targets service availability, often witnessed in wireless multi-hop networks. In this paper, we propose an adaptive acknowledgment-based approach, called AAA, to detect the stealthy collision attack caused by multiple malicious nodes in the realm of EHNets, where two malicious nodes coordinate their packet transmissions simultaneously to create the packet collision at a legitimate node. In the AAA, each node forwards a Data packet, monitors the subsequent packet transmission of its one-hop downstream node and waits for an explicit acknowledgment (Ack) packet from its two-hop downstream node, and then detects the stealthy collision attack in EHNets. We conduct extensive simulation experiments using OMNeT++ for performance evaluation and comparison. The simulation results indicate that the proposed countermeasure can provide higher detection rate and packet delivery ratio but lower detection latency compared to the existing scheme, MCC.
```

**Embed to Paper**: [[Mitigating stealthy collision attack in energy harvesting motivated networks.pdf]]

## Summary

### Attack: Stealthy Collision Attack

The paper focuses on a **stealthy collision attack** in Energy Harvesting Motivated Networks (EHNets), where multiple malicious nodes collude to disrupt communication. The attack works as follows:
1. **Coordinated Packet Collisions:** Two or more malicious nodes synchronize their transmissions to intentionally cause packet collisions at a legitimate node. This results in packet drops without being detected as malicious behavior.
2. **Exploiting Energy Harvesting States:** Malicious nodes exploit the intermittent active/harvest states of EHNet nodes. For example, one malicious node forwards a data packet while another broadcasts a "State" packet simultaneously, causing collisions at the receiver.
3. **Evasion of Detection:** Since the collisions appear accidental, traditional monitoring techniques (e.g., watchdog) fail to distinguish intentional drops from natural packet losses.

### Defense: Adaptive Acknowledgment-Based Approach (AAA)

1. **Two-Hop Acknowledgment:**
    - Each node forwards a data packet and monitors its one-hop downstream node.
    - It then waits for an explicit acknowledgment (Ack) from the two-hop downstream node to confirm successful forwarding.
2. **Timeout-Based Detection:**
    - If the sender does not overhear the forwarded packet or receive the Ack within a timeout period, it suspects malicious behavior.
    - Timeout values adapt dynamically based on network conditions.
3. **Probabilistic Ack Requests:**
    - Nodes probabilistically request Acks to balance overhead and detection accuracy. The acknowledgment probability (PackPack) increases if misbehavior is suspected.
4. **Isolation of Malicious Nodes:**
    - Repeated misbehavior triggers the broadcast of an "Isolate" packet to blacklist malicious nodes.

