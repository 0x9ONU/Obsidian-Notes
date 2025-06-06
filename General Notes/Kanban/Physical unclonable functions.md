Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** nature electronics

**DOI**: https://doi.org/10.1038/s41928-020-0372-5

**Authors**: Yansong Gao, Said F. Al-Sarawi, Derek Abbott

**Publication Year**: 2020

**Country of Study**: Australia

**Tags**: #puf #cybersecurity  #survey

```ad-abstract
title: Abstract
collapse: open
A physical unclonable function (PUF) is a device that exploits inherent randomness introduced during manufacturing to give a physical entity a unique ‘fingerprint’ or trust anchor. These devices are of potential use in a variety of applications from anti-counterfeiting, identification, authentication and key generation to advanced protocols such as oblivious transfer, key exchange, key renovation and virtual proof of reality. Here we review the development of PUFs, including those that exploit optical, circuit time-delay and volatile/non-volatile memory characteristics. We examine the various applications of PUFs, and consider the security issues that they must confront, highlighting known attacks to date and potential countermeasures. We also consider the key areas for future development such as bit-specific reliability, reconfigurability and public key infrastructure.
```

**Embed to Paper**: [[Physically unclonable functions.pdf]]

## Summary

### Section I: Introduction

Physically Unclonable Functions (PUFs) represent a class of hardware security primitives that use intrinsic, uncontrollable manufacturing variations to produce a unique fingerprint for each physical device.

Traditional cryptography often relies on secret keys stored in non-volatile memory. However, such storage is **vulnerable to invasive attacks** or side-channel extraction. PUFs aim to:
- **Eliminate the need for key storage**
- Provide **robust, tamper-evident authentication**
- Utilize **physical complexity** instead of mathematical hardness assumptions

PUFs are especially attractive for:
- Lightweight devices (e.g., RFID, IoT nodes)
- Embedded systems
- Secure key generation and device authentication

---

### Section II: Definition and Classification

#### Definition:
A PUF is a physical entity embedded in a device that is easy to evaluate but hard to predict or replicate.

Formally, for a given PUF function $f$, it accepts a challenge $x \in \{0,1\}^n$ and produces a response $y = f(x) \in \{0,1\}^m$.

The core requirements:
- **Evaluatable**: Efficiently produces a stable response for a given challenge
- **Unpredictable**: Output $y$ should be computationally infeasible to predict without the physical device
- **Unclonable**: It should be infeasible to reproduce the exact function $f$ on another device

#### Classification:
PUFs can be broadly classified as:

1. **Arbiter PUFs**
2. **Ring Oscillator PUFs (RO-PUFs)**
3. **Optical PUFs**
4. **Coating PUFs**
5. **SRAM PUFs**
6. **Butterfly PUFs**

Each type exploits **distinct physical effects**:
- Delay variations
- Frequency variance
- Power-up states
- Interference patterns

---

### Section III: Design and Operation

A typical PUF-based system includes:
1. A **Challenge Generator**: Chooses input $x$
2. A **PUF Circuit**: Processes $x$ using its internal randomness
3. A **Response Evaluator**: Measures or decodes the physical output $y$

%3E Example: In an RO-PUF, two identically designed ring oscillators are compared. Due to manufacturing variance, one will oscillate faster, forming a 1-bit response. Repeat across many oscillator pairs to form a full response vector.

##### Reliability Mechanisms:
Because physical systems are prone to noise, PUF designs use:
- **Error correction codes (ECC)** to stabilize output
- **Fuzzy extractors** to produce consistent, reusable secret keys

---

### Section IV: Applications

#### 1. **Device Authentication**
   - Server stores a database of $(x, y)$ challenge-response pairs
   - To authenticate a device, the server issues a challenge $x$ and verifies $f(x)$

#### 2. **Key Generation**
   - Instead of storing a cryptographic key, generate it "just in time" using PUF output and fuzzy extractor

#### 3. **Hardware Intrusion Detection**
   - Physical tampering changes internal characteristics, altering PUF response
   - Thus, any tampering is inherently detectable

#### 4. **Digital Rights Management (DRM)**
   - PUFs can bind software to specific hardware devices without storing encryption keys in firmware

---

### Section V: Security Considerations

PUFs rely on **hardware entropy**, but can still face multiple threats:

#### 1. **Modeling Attacks**
   - Attacker collects many $(x, y)$ pairs and tries to learn $f$
   - Especially effective against **Arbiter PUFs** due to their linearly structured behavior
   - Defense: increase complexity (e.g., XOR PUFs, Feed-forward Arbiter PUFs)

#### 2. **Physical Attacks**
   - Probing, fault injection, or delayering can be used to recover internal configuration
   - Defense: tamper-evident packaging, detection circuits

#### 3. **Side-Channel Attacks**
   - Use power, timing, or electromagnetic leakage to infer internal state
   - Mitigation: masking, balancing, and noise injection

> **Note**: Not all PUF types are equally secure. Optical and SRAM PUFs generally resist modeling better than Arbiter-based PUFs.

---

### Section VI: Evaluation Metrics

To assess a PUF, the following characteristics are commonly measured:

| Property        | Description |
|----------------|-------------|
| **Uniqueness** | Measure of how different responses are across different PUFs |
| **Reliability** | Consistency of response over multiple trials |
| **Randomness** | Distribution of 0s and 1s should be uniform |
| **Entropy** | Bitwise entropy of the PUF output |
| **Bit Error Rate (BER)** | Measures error in repeatability under varying conditions |

Mathematical metrics include:

$$
\text{Uniqueness} = \frac{2}{N(N-1)} \sum_{i=1}^{N} \sum_{j=i+1}^{N} \frac{\text{HD}(R_i, R_j)}{m}
$$

$$
\text{Reliability} = 1 - \frac{1}{T} \sum_{t=1}^{T} \frac{\text{HD}(R_1, R_t)}{m}
$$

Where:
- $R_i$, $R_j$: Responses from different PUFs
- $\text{HD}$: Hamming distance
- $T$: Number of trials

---

### Section VII: Limitations and Challenges

- **Environmental Sensitivity**: PUF output can vary with temperature, voltage, aging
- **Noise**: Introduces bit errors unless mitigated with ECC
- **Clonability in Weak Designs**: Some PUFs (e.g., basic Arbiter) can be modeled with ML
- **Standardization**: Lack of a unified framework across vendors and PUF types

---

### Section VIII: Conclusion

Physically Unclonable Functions offer a compelling alternative to traditional key storage by binding cryptographic secrets to irreproducible physical structures.

Their strength lies in:
- Exploiting manufacturing randomness
- Being inherently tamper-evident
- Requiring no secure memory

While not universally secure, especially against machine learning-based attacks, advanced PUF architectures and hybrid methods continue to evolve the field.

PUFs are now foundational to secure embedded systems, IoT authentication, and next-generation hardware security primitives.
