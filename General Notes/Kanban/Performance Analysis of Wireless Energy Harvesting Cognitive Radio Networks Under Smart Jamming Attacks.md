Date: 1st August 2025
Date Modified: 1st August 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE

**DOI**: https://doi.org/10.1109/TCCN.2015.2488620

**Authors**: Dinh Thai Hoang; Dusit Niyato; Ping Wang; Dong In Kim

**Publication Year**: 2015

**Country of Study**: Singapore

**Tags**: #cognitiveradio #wsn #jamming #deception

```ad-abstract
title: Abstract
collapse: open
In cognitive radio networks with wireless energy harvesting, secondary users are able to harvest energy from a wireless power source and then use the harvested energy to transmit data opportunistically on an idle channel allocated to primary users. Such networks have become more common due to pervasiveness of wireless charging, improving the performance of the secondary users. However, in such networks, the secondary users can be vulnerable to jamming attacks by malicious users who can also harvest wireless energy to launch the attacks. In this paper, we first formulate the throughput optimization problem for a secondary user under the attacks by jammers as a Markov decision process (MDP). We then introduce a new solution based on the deception tactic to deal with smart jamming attacks. Furthermore, we propose a learning algorithm for the secondary user to find an optimal transmission policy and extend to the case with multiple secondary users in the same environment. Through the simulations, we demonstrate that the proposed learning algorithms can effectively reduce adverse effects from smart jammers even when they use different attack strategies.
```

**Embed to Paper**: [[Performance Analysis of Wireless Energy Harvesting Congnitive Radio Networks Under Smart Jamming Attacks.pdf]]

## Summary

The paper addresses the vulnerability of secondary users (SUs) in cognitive radio networks (CRNs) equipped with wireless energy harvesting (WEH) capabilities to smart jamming attacks. The authors propose a novel defense mechanism based on deception tactics to mitigate these attacks and optimize the throughput of SUs.

### System Model

- **Secondary Users (SUs):**
    - Harvest energy from wireless power sources (e.g., RF energy harvesting or wireless chargers).
    - Opportunistically access idle channels licensed to primary users (PUs) for data transmission.
    - Maintain a data buffer and energy storage (battery).
- **Jammers:**
    - Malicious users that also harvest energy to launch jamming attacks.
    - Can distinguish between PU and SU signals using techniques like matched filter detection.
    - Attack strategies:
        - **Independent Attacks:** Multiple jammers attack the channel simultaneously.
        - **Coordinated Attacks:** Jammers communicate and take turns attacking to conserve energy.

#### Smart Jammers

- **Objective:** Disrupt SU transmissions by jamming the target channel when SUs are active.
- **Capabilities:**
    - Energy-limited (rely on harvested energy).
    - Smart sensing to differentiate PU and SU signals.
- **Impact:** Degrades SU throughput by causing collisions or forcing SUs to waste energy.

### Defense: Deception

- **Concept:**
    - SUs transmit **fake packets** (deception) to trick jammers into attacking unnecessarily, wasting their energy.
    - When jammers exhaust their energy on fake transmissions, SUs can transmit real data without interference.
- **Actions for SUs:**
    1. **Do nothing** (conserve energy).
    2. **Perform deception** (transmit fake packets).
    3. **Transmit actual data** (if the channel is safe).

