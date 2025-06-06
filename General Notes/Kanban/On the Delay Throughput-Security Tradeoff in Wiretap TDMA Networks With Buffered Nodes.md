Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/TWC.2019.2919825](https://doi.org/10.1109/TWC.2019.2919825)

**Authors**: Ahmed El Shafie; Naofal Al-Dhahir; Zhiguo Ding; Ridha Hamila

**Publication Year**: 2019

**Country of Study**: USA, UK, Qatar

**Tags**: #cybersecurity #delays #throughput #tdma #jamming #eavesdropping #receivers 

```ad-abstract
title: Abstract
collapse: open
In this paper, we investigate the tradeoff between security and throughput and between security and queuing delay in wiretap time-division multiple access (TDMA) networks. We derive a simple relationship, characterized by a single key system parameter, between the stable-throughput region, where there are no perfect secrecy constraints on the data transmissions, and the secure stable-throughput region, where there are perfect secrecy constraints. We quantify the impact of the perfect secrecy constraints on the network’s average queuing delay and propose a novel cross-layer security scheme for delay-limited applications. We establish an insightful link between computational security (i.e., upper-layer security implemented through cryptographic schemes) and physical-layer (information-theoretically proved) security. For the two-user case, we derive a closed-form expression for the network’s minimum average queuing delay under the proposed security scheme and provide a relationship between the network’s minimum queuing delay under perfect secrecy constraints and computational-only secrecy constraints. Moreover, we investigate the impact of cooperative jamming on achieving perfect secrecy, minimum network’s queuing delay, and maximum throughput. We verify our theoretical findings through simulations.
```

**Embed to Paper**: [[On_the_Delay_Throughput-Security_Tradeoff_in_Wiretap_TDMA_Networks_With_Buffered_Nodes.pdf]]

## Summary

### I. Introduction

This paper explores the **tradeoff** between **security**, **throughput**, and **delay** in **TDMA-based wireless networks** that include **buffered nodes** and are susceptible to **eavesdropping**.

It is particularly concerned with **physical layer security**, leveraging **secrecy capacity** to mitigate **wiretap attacks**.

#### Key Questions:
- How do buffering and TDMA slot assignment affect secure throughput?
- How does delay interact with achievable secrecy?
- What is the fundamental limit of throughput under perfect secrecy constraints?

%3E A **Wiretap Channel** is modeled for each source-destination-eavesdropper path.

---

### II. System Model

#### Network Setup:
- **Single-hop TDMA wireless network**
- One **destination**, one **eavesdropper**, and **$N$ sources**
- Each source has a **buffer** of size $L$
- Time is divided into **frames**, each with **$N$ time slots** (1 per node)
- Channels experience **block fading**

> **Key Assumption**: CSI of the **main channel** (source-to-destination) is available to the source; CSI of the **wiretap channel** is not known.

#### Buffer Model:
Each node can store up to $L$ packets. New packet arrivals follow a **Bernoulli process** with rate $\lambda$.

---

### III. Physical Layer Security and Secrecy Capacity

Secrecy is quantified via **secrecy capacity**, defined as the difference between the capacities of the main and eavesdropper channels:

$$
C_s = [C_m - C_e]^+ = \left[ \log_2(1 + \text{SNR}_m) - \log_2(1 + \text{SNR}_e) \right]^+
$$

Only packets transmitted at a rate less than $C_s$ can be considered **perfectly secure**.

> The transmission is **secure** iff the **channel condition to destination is significantly better** than to eavesdropper.

---

### IV. Secure TDMA Scheduling and Buffering

A **secure TDMA policy** chooses which node to transmit in each slot such that:
- Its buffer is **non-empty**
- The channel condition yields $C_s \geq R$ (target secure rate)

Let:
- $\mathcal{S}(t)$: the set of eligible sources at time $t$
- $\pi$: scheduling policy

A transmission occurs if:
1. Node $i \in \mathcal{S}(t)$
2. $C_s^{(i)}(t) \geq R$

Otherwise, the slot is **wasted**, contributing to **delay and reduced throughput**.

#### Secure Throughput Definition:

$$
T_s = \lim_{T \to \infty} \frac{1}{T} \sum_{t=1}^{T} \mathbb{E}[\mathbf{1}_{\text{secure tx}}(t)]
$$

---

### V. Delay Analysis

#### Queue Dynamics:

Let $Q_i(t)$ denote the number of packets in buffer of node $i$ at time $t$.

The buffer update rule is:

$$
Q_i(t+1) = \min \left\{ \left[ Q_i(t) - \mu_i(t) \right]^+ + A_i(t), L \right\}
$$

Where:
- $A_i(t) \sim \text{Bernoulli}(\lambda)$ (arrivals)
- $\mu_i(t)$ is 1 if node $i$ transmits securely at time $t$, 0 otherwise

#### Average Delay:

Using Little’s Law:

$$
D = \frac{\bar{Q}}{\lambda}
$$

Where $\bar{Q}$ is the average queue length.

> A high security threshold $R$ may lead to fewer transmissions, increasing queue sizes and delay.

---

### VI. Tradeoff Formulation

There exists a **tradeoff curve** between:
- **Secure throughput $T_s$**
- **Average delay $D$**
- **Target secrecy rate $R$**

As $R$ increases:
- Secure throughput $T_s$ ↓
- Delay $D$ ↑ (due to backlog and fewer usable slots)

#### Optimization Objective:

Find the scheduling policy $\pi$ that:
- Maximizes $T_s$
- Subject to: $D \leq D_{\text{max}}$, secrecy $R \geq R_{\text{min}}$

This results in a **constrained stochastic optimization** problem.

---

### VII. Numerical Results

#### Setup:
- $N = 10$ sources
- Buffer size $L = 5$
- SNR varies over time using a Rayleigh fading model
- $\lambda = 0.5$

#### Results Summary:

1. **Secure Throughput vs. Secrecy Rate**

   As $R$ increases, $T_s$ drops sharply after a threshold.
   
   ![Figure: Secure Throughput vs Secrecy Rate](attachment:image_1.jpg)

2. **Delay vs. Secure Throughput**

   Sharp increase in delay when $T_s$ is pushed toward max capacity.
   
   ![Figure: Delay vs Secure Throughput](attachment:image_2.jpg)

3. **Buffer Overflow Probability**

   Increases with both higher $\lambda$ and higher $R$.
   
   ![Figure: Overflow Probability](attachment:image_3.jpg)

---

### VIII. Conclusion

This paper rigorously explores how **delay**, **throughput**, and **security** interact in TDMA networks with buffer constraints.

#### Main Insights:
- Buffering **smooths traffic** but amplifies delay-security tension
- Higher secrecy rates require **better channels** and **sparser transmission**
- Delay becomes the main cost when **tight security** is enforced

> Optimizing secure TDMA scheduling must **balance all three factors** to sustain real-world deployment viability.

---

### Key Equations Recap

1. **Secrecy Capacity**:
   $$
   C_s = \left[ \log_2(1 + \text{SNR}_m) - \log_2(1 + \text{SNR}_e) \right]^+
   $$

2. **Queue Dynamics**:
   $$
   Q_i(t+1) = \min \left\{ \left[ Q_i(t) - \mu_i(t) \right]^+ + A_i(t), L \right\}
   $$

3. **Secure Throughput**:
   $$
   T_s = \lim_{T \to \infty} \frac{1}{T} \sum_{t=1}^{T} \mathbb{E}[\mathbf{1}_{\text{secure tx}}(t)]
   $$

4. **Average Delay**:
   $$
   D = \frac{\bar{Q}}{\lambda}
   $$
