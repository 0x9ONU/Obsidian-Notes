Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** LAB-GE

**DOI**: https://www.sige.ita.br/edicoes-anteriores/2012/st/X_1.pdf

**Authors**: Eloy Martins de Oliveira Junior, Marcelo Lopes de Oliveira e Souza

**Publication Year**: 2012

**Country of Study**: Brazil

**Tags**: #tdma #csma #csma/cd #synch

```ad-abstract
title: Abstract
collapse: open
Current systems such as satellites, aircrafts, traffic controls, military systems and smart grids are becoming increasingly complex and/or highly integrated as prescribed by the SAE-ARP-4754 Standard. The severe constraints,
complexity and/or high integration make the security of these systems itself a challenge. Such systems, usually in a form of networked control systems (NCS), require accurate time synchronization among its nodes and devices for correct
operation. So, any accidental or intentional fluctuation beyond a tolerance in time synchronization can cause faults in communication and hence in the control systems. This paper presents a brief comparison of security aspects of time
synchronization in NCS using CSMA/CD (Carrier Sense Multiple Access - Collision Detection) and TDMA (Time Division Multiple Access) protocols. This highlights how the NCS using CSMA/CD and TDMA networks is affected by the malicious clock de-synchronization; and this includes some simulations to illustrate them. The paper concludes by the comparison of networks and suggests some countermeasures, based on the comparisons and simulations presented.
```

**Embed to Paper**: [[A Brief Comparison of Security Aspects of Time.pdf]]
## Summary

### I. Introduction

Modern control systems—found in satellites, aircraft, smart grids, turbines, and automotive systems—are increasingly reliant on **networked control system (NCS)** architectures. These systems often adopt **time-triggered designs** and require **accurate, secure clock synchronization** to coordinate sensors, actuators, and controllers.

Any **deviation or attack** on the synchronization process can:
- Cause **loss of control**
- Trigger **system failure**
- Open **cybersecurity vulnerabilities**

The paper emphasizes that even **small disruptions**, whether natural or malicious, can lead to **major operational failures** in time-triggered systems.

---

### II. Abstraction Layers in Clock Synchronization

Clock systems can be understood across **three abstraction layers**:

![Figure 1: Clock Synchronization Abstraction Layers](attachment:image_1.jpg)

1. **Physical Layer**: Quartz crystals, oscillator circuits.
2. **Hardware Layer**: Oscillator mechanisms and analog-to-digital hardware.
3. **Software Layer**: Logical clocks and synchronization algorithms.

%3E This paper focuses on **software-layer vulnerabilities**, particularly in distributed and time-triggered networks.

---

### III. Clock Synchronization in Distributed Architectures

Clock synchronization ensures all nodes act on **a shared notion of global time**, critical in TDMA or other time-triggered protocols.

#### Example: Distributed Architecture (Figure 4)

![Figure 4: Distributed Clock Synchronization Model](attachment:image_2.jpg)

- Each node computes its own correction term based on local and received timestamps.
- Over time, all nodes converge to a **virtual global clock**.

This model supports **Byzantine fault tolerance**, such as through the **FTM (Fault-Tolerant Midpoint)** algorithm, which operates under:

$$
n \geq 3f + 1
$$

Where:
- $n$ is the number of clocks (nodes)
- $f$ is the number of faulty nodes the system can tolerate

---

### IV. Security Aspects of Clock Synchronization

Attacks on clock synchronization can be **classified based on system architecture**:

#### A. Attacks in Centralized Architectures

In centralized systems, one **master clock** broadcasts time. The vulnerabilities include:

| **Attack** | **Result** |
|-----------|------------|
| Denial of Service | System halt |
| Byzantine Master | Loss of control |
| Control Loop Interruption | Drift due to open-loop clocks |
| Packet Removal | Similar to control loop interruption |
| Packet Manipulation | Deviation or desync |
| Packet Insertion | Offset in sync cycle |
| Selective Delay | Temporal offset |

> Critical Threats: **Byzantine Master**, **Packet Manipulation**, and **Control Loop Interruption**

#### B. Attacks in Distributed Architectures

Distributed architectures avoid a single point of failure but are still vulnerable:

- Manipulation of synchronization messages can **invalidate the Byzantine fault tolerance assumption**.
- Attack focus shifts from the master clock to **any subset** of nodes, aiming to breach the $f$-tolerant bound.

> Even one tampered node can degrade consensus if not accounted for in the fault threshold.

---

### V. Simulation Design

To demonstrate a **practical consequence of synchronization attack**, the authors simulate two control loops over a **TDMA-based NCS** using:

- **TrueTime/Matlab/Simulink**
- **PID controllers**
- **Second-order marginally stable plants**:
  
  $$
  G(s) = \frac{1}{s^2 + 2s + 1}
  $$

- Clock sync via **FTM algorithm**
- **External Malicious Agent (EMA)** manipulates **Sensor 1's clock** by adding a 0.1s offset at 0.1s

![Figure 5: NCS Model in TrueTime](attachment:image_3.jpg)

**Roles**:
- Sensors send periodic measurements
- Controllers use PID logic
- Actuators respond to control commands
- EMA injects a timestamp fault into Sensor 1

---

### VI. Simulation Results

**Objective**: Assess how a **0.1s time fault** in Sensor 1 affects the global system behavior, even with FTM synchronization.

#### A. Clock Timeline

- Shows divergence in Sensor 1 (yellow line)
- Other clocks remain aligned
- Confirms EMA successfully injected fault

![Figure 6: Global Clock Timeline](attachment:image_4.jpg)

#### B. Step Response Degradation

- Desynchronization impacts **control timing**
- Introduces phase shift and instability in **both loops**, despite only attacking Sensor 1

![Figure 7: Step Response Impact](attachment:image_5.jpg)

**Conclusion**: Even **localized desync** in a single node can **propagate instability** across the system due to TDMA and global scheduling.

---

### VII. Conclusions

**Key Takeaways**:
- Time-triggered NCS architectures are **highly vulnerable** to desynchronization.
- Attacks at the **software layer** (e.g., packet manipulation) are subtle but dangerous.
- Even fault-tolerant protocols like FTM can't prevent degradation if attacker violates trust assumptions.

**Recommendations**:
- Incorporate **redundancy** in time validation
- Use **clock voting** or **cross-validation** across nodes
- Investigate **secure timestamp protocols** with authentication

---

### Key Equations

**FTM Tolerance**:
$$
n \geq 3f + 1
$$

**Plant Transfer Function**:
$$
G(s) = \frac{1}{s^2 + 2s + 1}
$$

**Step Response Comparison**: Visual only (see Figure 7)
