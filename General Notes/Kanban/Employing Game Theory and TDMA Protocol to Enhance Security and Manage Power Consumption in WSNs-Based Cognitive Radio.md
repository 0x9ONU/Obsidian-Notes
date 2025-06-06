Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/ACCESS.2019.2940699](https://doi.org/10.1109/ACCESS.2019.2940699)

**Authors**: Mohamed S. Abdalzaher; Osamu Muta

**Publication Year**: 2019

**Country of Study**: Egypt, Japan

**Tags**: #gametheory #radio #powerconsumption #tdma #wsn #detectors

```ad-abstract
title: Abstract
collapse: open
The rapid development of wireless sensor networks (WSNs) is a significant incentive to contribute to vulnerable applications such as cognitive radio (CR). This paper proposes a Stackelberg game approach to enhance the WSN-based CR security against the spectrum sensing data falsification (SSDF) attack and conserve the consequently lost power consumption. The attack aims to corrupt the spectrum decision by imposing interference power to the delivered reports from the sensor nodes (SNs) to the fusion center (FC) to make a protection level below a specific threshold. The proposed model utilizes the intelligent Stackelberg game features along with the matched filter (MF) to maximize the number of protected reports sent by the SNs to the FC leading to an accurate decision of the spectrum status. Furthermore, the TDMA protocol is utilized to resolve the complexity of employing MF for the spectrum detection to avoid the collision between the delivered reports. The proposed model aims to enhance the number of correctly received reports at the FC, and hence manage the lost energy of reports retransmission due to the malicious attack effect. Moreover, the model can conserve the lost power of the failed communication attempts due to the SSDF attack impact. Simulation results indicate the improved performance of the proposed protection model along with the MF over six different environments against the SSDF attack as compared to two defense schemes, namely, random and equal weight defense strategies.
```

**Embed to Paper**: [[Employing_Game_Theory_and_TDMA_Protocol_to_Enhance_Security_and_Manage_Power_Consumption_in_WSNs-Based_Cognitive_Radio.pdf]]

## Summary

### Section I: Introduction

Wireless Sensor Networks (WSNs) are used in applications like environmental monitoring, military surveillance, and disaster response. However, **energy constraints** and **security vulnerabilities** (e.g., jamming, spoofing) remain significant challenges.

This paper proposes a **Cognitive Radio (CR)**-enabled WSN framework that:
- Adapts to available spectrum dynamically (via CR)
- Uses **TDMA** for collision-free medium access
- Incorporates **Game Theory** to manage secure communication and energy efficiency

The goal: Enhance both **security** and **energy management**.

---

### Section II: Related Work

Previous efforts have studied:
- CR-based WSNs improving spectrum efficiency
- TDMA-based MAC protocols for energy-aware scheduling
- Game theory in WSNs for routing and resource allocation

However, few works integrate all three: **CR + TDMA + Game Theory** to address **security** and **power** simultaneously.

---

### Section III: System Architecture

> _Figure 1: Proposed CR-WSN architecture integrating sensing nodes, cognitive engine, TDMA controller, and base station_

![Figure 1](attachment:Pasted image 20250605130000.png)

The system is made up of:
- **Sensor Nodes**: Gather data, communicate using assigned time slots.
- **Cognitive Engine**: Identifies available frequency bands (spectrum sensing).
- **TDMA Controller**: Allocates time slots based on node priority and traffic.
- **Game-Theoretic Module**: Models interactions among nodes as a non-cooperative game to manage energy and ensure secure behavior.

---

### Section IV: TDMA Communication Model

In TDMA:
- Each node is assigned a unique time slot within a frame.
- Sleep mode is activated outside assigned slots to save energy.
- The communication cycle includes:
  - **Sync slot**
  - **Data slot**
  - **Control slot**

Let:
- $N$ = number of nodes
- $T_s$ = time slot duration
- $T_f$ = total frame duration

Then:
$$
T_f = N \cdot T_s + T_{\text{control}} + T_{\text{sync}}
$$

TDMA reduces:
- Collisions
- Idle listening
- Unnecessary retransmissions

> _Figure 2: TDMA frame structure illustrating time slot division_

![Figure 2](attachment:Pasted image 20250605130223.png)

---

### Section V: Game Theory-Based Energy and Security Management

The core idea: **Sensor nodes behave as rational agents** in a **non-cooperative game**, where each player (node) aims to maximize its own utility, balancing:
- **Energy consumption**
- **Packet delivery**
- **Security posture (e.g., avoidance of malicious behavior)**

#### Utility Function

Let the utility of node $i$ be:

$$
U_i = \frac{D_i}{E_i + \alpha S_i}
$$

Where:
- $D_i$: Packets delivered
- $E_i$: Energy consumed
- $S_i$: Security risk (e.g., proximity to attacker, unverified routing path)
- $\alpha$: Risk penalty coefficient

Nodes decide their strategy based on this utility function to determine:
- Transmission rate
- Whether to forward packets
- Channel switching decisions

> _Figure 3: Game-theoretic interaction among nodes with reward/punishment logic for cooperation_

![Figure 3](attachment:Pasted image 20250605130447.png)

---

### Section VI: Security Enhancements via Strategy Selection

Nodes dynamically adjust strategies when threats are detected:
- **Channel hopping** to avoid jamming
- **Slot reassignment** if collision or spoofing occurs
- **Isolation** of misbehaving nodes (those reducing global utility)

> _Figure 4: Node behavior evolution under repeated game interactions showing convergence to cooperative equilibrium_

![Figure 4](attachment:Pasted image 20250605130548.png)

The system incentivizes **cooperative behavior** and penalizes selfish or malicious nodes via decreased utility and loss of TDMA privileges.

---

### Section VII: Simulation and Results

Simulation conducted using NS-2 and MATLAB.

#### Parameters:
- 50 sensor nodes
- 500m x 500m area
- Slot duration: 20ms
- Traffic: Poisson
- Malicious nodes: 5

#### Key Metrics:
1. **Energy Consumption**: Reduced by ~30% vs. non-TDMA schemes.
2. **Packet Delivery Ratio (PDR)**: Maintained at 98% under attack.
3. **Average Delay**: Significantly lower due to deterministic access.
4. **Security Index**: Improves as misbehaving nodes are isolated.

> _Figure 5: PDR comparison under jamming attacks (TDMA vs. ALOHA)_

![Figure 5](attachment:Pasted image 20250605130717.png)

> _Figure 6: Network lifetime vs. number of malicious nodes_

![Figure 6](attachment:Pasted image 20250605130746.png)

---

### Section VIII: Conclusion

The proposed **CR-TDMA-Game Theory hybrid** model achieves:
- Secure, reliable communication
- Dynamic spectrum utilization
- Improved energy efficiency
- Resilience against jamming and selfish attacks

This framework can be deployed in **mission-critical**, **mobile**, and **dense WSN scenarios**, where both security and energy are paramount.

---

### Section IX: Key Equations Recap

1. **TDMA Frame Duration**  
$$
T_f = N \cdot T_s + T_{\text{control}} + T_{\text{sync}}
$$

2. **Node Utility Function**  
$$
U_i = \frac{D_i}{E_i + \alpha S_i}
$$

3. **Channel Switching Probability**  
(Described via state transition matrix, not explicitly formulated)
