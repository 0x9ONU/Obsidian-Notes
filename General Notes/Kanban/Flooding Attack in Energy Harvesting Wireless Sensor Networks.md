Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** ACM

**DOI**: https://doi.org/10.1145/2448556.2448605

**Authors**: Vladimir Shakhov, Sangyep Nam, Hyunseung Choo

**Publication Year**: 2013

**Country of Study**: Russia

**Tags**: #flooding #wsn #energyharvesting #energyconsumption

```ad-abstract
title: Abstract
collapse: open
One of the most critical damaging effects on most wireless sensor networks is a flooding attack. Flooding threat occurs not only from spoofed packets generators launched by intruders but also from the inherent behavior of the network protocols. Flooding harm can be categorized into two types as follows. First, a sensor cannot provide required services when it receives a lot of packets. An essential part of packets are rejected and packets delay becomes inadmissible. And second, if a sensor transmits many packets then the sensor battery is quickly exhausted. Energy harvesting technologies offers the potential of reducing the second vulnerability. This paper explores the operation of wireless sensor networks with energy harvesting capability taking into account both flooding negative effects above. We consider the feasibility and threats of the attacks and their impacts. We then propose a theoretical analysis of the flooding attacks. The corresponding mathematical model is offered. Counteracting methods against such intrusions is discussed.
```

**Embed to Paper**: [[Flooding Attack in Energy Harvesting Wireless Sensor Networks.pdf]]

## Summary

### Attack

Flooding attacks in EH-WSNs, where attackers overwhelm sensor nodes with excessive traffic or malicious actions. This causes:
1. **Energy Depletion** (makes SNs transmit excessively)
2. **Buffer Overflow**
3. **Protocol Weaknesses** (Overwhelming the TDMA)

### Defense

1. **Point-of-Charge Detection**: Identifies abnormal traffic patterns or energy consumption spikes indicative of an attack
2. **Traffic Management**: Redirects traffic through non-compromised nodes or uses *bloom filters* to minimize packet sizes and transmissions
3. **Energy Conservation**: Implemented a low-power *sleep mode* to conserve energy
4. **Theoretical Modeling**: By using *Markov Chain Analysis*, they try to predict attack impacts based on each SN state (active, transmit, sleep, energy harvesting)
