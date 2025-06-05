Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** XIII SIGE

**DOI**: https://www.sige.ita.br/edicoes-anteriores/2011/st/VI_2.pdf

**Authors**: Eloy Martins de Oliveira Junior, Marcelo Lopes de Oliveira e Souza

**Publication Year**: 2011

**Country of Study**: Brazil

**Tags**: #synch #networks #cybersecurity 

```ad-abstract
title: Abstract
collapse: open
Current systems such as satellites, aircrafts, automobiles, traffic controls, turbines, wind power generators and smart grids are becoming increasingly complex and/or
highly integrated as prescribed by the SAE-ARP-4754 Standard. Such systems integrate computations, communications and real time controls via networks among other key architectures and technologies to form networked control systems (NCS). Such architectures and technologies usually require accurate clock synchronization among its nodes
and devices for correct operation. So, any accidental or intentional fluctuation beyond a tolerance in clock synchronization can cause faults in such systems. This paper
presents a brief discussion of security aspects of clock synchronization in networked control systems. This highlights how a networked control system using time triggered
architectures and technologies is affected by the de-synchronization of a clock caused by an External Malicious Agent (EMA); and this includes some simulations to illustrate
them. The paper concludes by suggesting some countermeasures, based on the discussions and simulations presented.
```

**Embed to Paper**: [[A Brief Discussion of Security Aspects of Clock.pdf]]
## Summary

### I. Introduction

Modern **networked control systems (NCS)**—used in satellites, aircraft, traffic control, wind turbines, and smart grids—are increasingly dependent on **time-triggered architectures**. These systems integrate **sensors, actuators, and controllers** via a shared communication network, often using **TDMA (Time Division Multiple Access)** protocols.

Accurate **clock synchronization** among nodes is essential to ensure operations proceed in both the correct **order** and **time**. Even minor desynchronizations—due to imperfections or malicious intent—can lead to **control faults**, degraded system performance, or total system failure.

### II. Abstraction Layers in Clock Synchronization

To reason about clock vulnerabilities, we must understand **three abstraction layers**:

#### Figure 1: Clock Synchronization Layers
![Clock Layers](attachment:image_1.jpg)

1. **Physical Layer**  
   - Crystal oscillators (e.g., quartz)  
   - Subject to **drift**, **temperature/voltage changes**, **aging**

2. **Hardware Layer**  
   - Oscillator mechanisms and analog circuits

3. **Software Layer** *(focus of this paper)*  
   - Logical clocks governed by synchronization algorithms  
   - Layer most vulnerable to **packet manipulation** or software exploits

The authors emphasize the **software layer**, while acknowledging it depends on lower-level physical and hardware layers.

---

### III. Clock Synchronization in Distributed Architectures

In **distributed architectures**, no central master clock exists. Instead, nodes exchange time information and **iteratively converge** to a **virtual global time**.

#### Example System:
- Nodes share a **databus**
- Each clock calculates its **own correction term**
- Goal: Clocks agree to within a **precision bound**

#### Byzantine Fault Tolerant Protocols

To tolerate faulty nodes, protocols like **FTM (Fault-Tolerant Midpoint)** must satisfy:

$$
n \geq 3f + 1
$$

Where:
- $n$ = total clocks
- $f$ = number of faulty/malicious clocks tolerated

This tolerance ensures that all clocks can **synchronize accurately**, even with up to $f$ corrupted nodes.

#### Figure 4: Distributed Clock Architecture
![Distributed Architecture](attachment:image_2.jpg)

*Benefits*:
- No single point of failure  
- Resilient to faults via **Byzantine fault-tolerant** algorithms

*Costs*:
- Higher message complexity  
- Potential precision tradeoffs  
- Vulnerable to *distributed attacks* that attempt to break the assumption $n \geq 3f + 1$

---

### IV. Security Aspects of Clock Synchronization

#### A. Attacks in Centralized Architectures

Centralized synchronization typically uses a **master clock** (e.g., IEEE 1588).

##### Table 1: Attacks on Clock Synchronization

| **Attack Type**                | **Result**                                                                 |
|-------------------------------|----------------------------------------------------------------------------|
| 1. Denial of Service           | Complete halt of service                                                  |
| 2. Byzantine Master            | Full loss of control                                                      |
| 3. Control Loop Interruption   | Drift due to open-loop behavior                                           |
| 4. Packet Removal              | Same as #3                                                                |
| 5. Packet Manipulation         | Corrupted clock state → loss of control                                   |
| 6. Packet Insertion            | Offset in synchronization cycles                                          |
| 7. Selective Packet Delay      | Offset in sync; may destabilize schedule                                  |

##### Notable Threats:
- **Byzantine Master** (2): A malicious master disrupts all slaves.
- **Packet Manipulation** (5): Alters synchronization data en route.
- **Loop Interruption** (3, 4): Loss of sync → local clocks drift.

---

#### B. Attacks in Distributed Architectures

In distributed systems, there's no master. Instead, attacks target **assumptions of the FTM theorem**.

##### Key idea:
- **If enough nodes are corrupted** ($f$ exceeded), synchronization fails.
- Targeting packets exchanged among nodes can **invalidate assumptions**.

##### Attacks:
- Byzantine behavior
- Packet injection or delay
- Clock drift induction via timestamp tampering

%3E Distributed architectures can **fail catastrophically** if $f$ is underestimated or an attacker injects faults in a coordinated way.

---

### V. Simulation Design

To **demonstrate practical vulnerabilities**, the authors simulate two networked control loops sharing a **TDMA databus**.

#### Tools:
- **TrueTime/Matlab/Simulink**
- PID controllers
- Two marginally stable second-order plants:

$$
G(s) = \frac{1}{s^2 + 2s + 1}
$$

- Each control node:
  - Periodic control task
  - Periodic synchronization task
- **Sensor 1** is compromised by an **External Malicious Agent (EMA)**

#### Figure 5: Simulated Networked Control System
![Simulation Model](attachment:image_3.jpg)

##### EMA Behavior:
- At $t = 0.1s$, **adds 0.1s** to Sensor 1's timestamp
- Mimics **packet manipulation**

> Goal: Observe how **a small time fault propagates**, even under FTM synchronization.

---

### VI. Simulation Results

#### A. Clock Timeline

- Yellow = Sensor 1 (under attack)
- Others = regular behavior
- Shows divergence due to the 0.1s offset

#### Figure 6: Clock Timeline View
![Clock Timeline](attachment:image_4.jpg)

#### Figure 7: Detail View of Divergence
![Clock Detail](attachment:image_5.jpg)

#### B. System Degradation

- **Step response** shows instability across **both control loops**
- EMA’s effect **breaks global time agreement**
- Causes desync in Controller 1 → affects entire system

> Even **one malicious node** can disrupt global behavior due to the **tight coupling in TDMA systems**

---

### VII. Conclusions

#### Key Takeaways:

- Clock synchronization is **essential** for correct behavior in NCS
- Vulnerabilities vary by **architecture** (centralized vs. distributed)
- **Software-level attacks**—like packet manipulation—are difficult to detect but devastating
- Existing fault-tolerant protocols **cannot withstand** more faults than assumed in their threshold

#### Recommendations:

- Implement **redundant sync checks**
- Use **authenticated time packets**
- Cross-validate timestamps from **multiple nodes**
- Detect and isolate **desynced nodes**

---

### Key Equations

1. **FTM Fault Tolerance Bound**  
   $$
   n \geq 3f + 1
   $$

2. **Plant Transfer Function**  
   $$
   G(s) = \frac{1}{s^2 + 2s + 1}
   $$
