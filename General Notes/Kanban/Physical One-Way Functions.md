Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** Massachusetts Institute of Technology

**DOI**: https://cba.mit.edu/docs/theses/01.03.pappuphd.powf.pdf

**Authors**: Pappu Srinivasa Ravikanth

**Publication Year**: 2001

**Country of Study**: USA

**Tags**: #puf #cybersecurity 

```ad-abstract
title: Abstract
collapse: open
Modern cryptography relies on algorithmic one-way functions - numerical functions
which are easy to compute but very difficult to invert. This dissertation introduces
physical one-way functions and physical one-way hash functions as primitives for
physical analogs of cryptosystems.

Physical one-way functions are defined with respect to a physical probe and physical
system in some unknown state. A function is called a physical one-way function if (a)
there exists a deterministic physical interaction between the probe and the system
which produces an output in constant time (b) inverting the function using either
computational or physical means is difficult (c) simulating the physical interaction is
computationally demanding and (d) the physical system is easy to make but difficult
to clone.

Physical one-way hash functions produce fixed-length output regardless of the size of
the input. These hash functions can be obtained by sampling the output of physical
one-way functions. For the system described below, it is shown that there is a strong
correspondence between the properties of physical one-way hash functions and their
algorithmic counterparts. In particular, it is demonstrated that they are collision-
resistant and that they exhibit the avalanche effect, i.e., a small change in the physical
system causes a large change in the hash value.

An inexpensive prototype authentication system based on physical one-way hash
functions is designed, implemented, and analyzed. The prototype uses a disordered
three-dimensional microstructure as the underlying physical system and coherent
radiation as the probe. It is shown that the output of the interaction between the
physical system and the probe can be used to robustly derive a unique tamper-
resistant identifier at a very low cost per bit. The explicit use of three-dimensional
structures marks a departure from prior efforts. Two protocols, including a one-time
pad protocol, that illustrate the utility of these hash functions are presented and
potential attacks on the authentication system are considered.

Finally, the concept of fabrication complexity is introduced as a way of quantifying
the difficulty of materially cloning physical systems with arbitrary internal states.
Fabrication complexity is discussed in the context of an idealized machine - a
Universal Turing Machine augmented with a fabrication head - which transforms
algorithmically minimal descriptions of physical systems into the systems
themselves.
```


**Embed to Paper**: [[Physical One-Way Functions.pdf]]

## Summary

### Section I: Introduction

**One-Way Functions** are foundational to cryptography: easy to compute, but hard to invert. The authors propose a new physical implementation of this concept—**Physical One-Way Functions (PUFs)**—which use complex physical systems to resist duplication and prediction.

Key idea:
- Use **complex optical scattering** as a "fingerprint" that is **practically unclonable**
- Such functions are not purely mathematical but **intrinsically bound to the randomness of physical fabrication**

Applications include:
- Tamper-proof hardware authentication
- Object identity verification
- Key storage without digital memory

---

### Section II: What Is a Physical One-Way Function?

A **PUF** is defined as a system that:
1. Accepts a *challenge* input $x$ (e.g., laser wavefront)
2. Produces a *response* $y = f(x)$ (e.g., optical speckle pattern)
3. Is:
   - Easy to evaluate physically
   - Hard to predict or invert, even with access to many $(x, f(x))$ pairs

Two key properties:
- **Unclonability**: Difficult to replicate the internal structure
- **Unpredictability**: Outputs cannot be accurately simulated

This is not based on mathematical hardness (like factoring), but rather on **fabrication complexity and measurement precision**.

---

### Section III: Implementation – Optical PUFs

%3E _Figure 1: Experimental setup of optical PUF system_

![Figure 1](attachment:Pasted image 20250605174051.png)

#### Setup:
- A **Laser Beam** is modulated using a **spatial light modulator (SLM)** to produce a challenge wavefront
- The beam hits a transparent **polymer block** containing randomly dispersed micro-particles
- The scattered light forms a unique **speckle pattern** recorded by a CCD sensor

The mapping:
- Challenge $x$: configuration of the SLM
- Response $f(x)$: resulting intensity distribution on the CCD

This process is governed by **wave interference**, making it highly sensitive to internal structure

---

### Section IV: Formal Properties of PUFs

Let the function implemented by the physical system be $f: \{0,1\}^n \rightarrow \{0,1\}^m$.

Requirements:
- **One-wayness**: Given $(x, f(x))$ pairs, it should be hard to compute $f(x')$ for new $x'$
- **Unclonability**: It should be infeasible to create a second system $f'$ such that $f'(x) = f(x)$ for many $x$
- **Noise Tolerance**: System should produce repeatable results under environmental variation

To model this:
$$
y = Hx + \eta
$$

Where:
- $H$: transformation matrix of the optical system
- $\eta$: measurement noise (small and bounded)

---

### Section V: Security Model and Threats

PUFs are considered secure under the following assumptions:
1. **Physical Access** does not reveal internal configuration
2. **Mathematical Modeling** is infeasible due to:
   - High dimensionality of input/output space
   - Nonlinear optical interactions
3. **Replay attacks** are ineffective if challenges are randomly sampled

> _Figure 2: Challenge-response security diagram_

![Figure 2](attachment:Pasted image 20250605174245.png)

Adversarial models:
- **Clone attacker**: Attempts to physically replicate the PUF
- **Learning attacker**: Tries to learn $f(x)$ from a large set of observed responses

PUF's security arises from **physical entropy** and the **infeasibility of precise optical duplication**.

---

### Section VI: Experimental Results

#### Challenge Space:
- The SLM has a resolution of $32 \times 32$ binary pixels $\Rightarrow 2^{1024}$ possible challenges
- Only a tiny subset is used in practice (e.g., $10^6$), still infeasible to brute force

#### Repeatability:
- Responses are highly stable over time
- Noise correction via **error correction codes (ECC)**

#### Uniqueness:
- Different PUFs produce statistically uncorrelated responses
- **Hamming distance** between outputs from different PUFs approaches 50%, as expected

> _Figure 3: Stability and uniqueness over time_

![Figure 3](attachment:Pasted image 20250605174432.png)

---

### Section VII: Applications and Use Cases

1. **Hardware Authentication**:
   - Device contains a PUF
   - Remote server sends challenge
   - Device returns response (validated via pre-collected database)

2. **Key Generation**:
   - Use PUF to generate cryptographic keys "on demand"
   - No key is stored in memory—resistant to physical extraction

3. **Tamper Evidence**:
   - Tampering changes internal structure $\Rightarrow$ response changes
   - Passive security feature

---

### Section VIII: Limitations and Future Work

- Environmental stability must be maintained (e.g., temperature, vibration)
- Current implementations are relatively large and optically bulky
- Miniaturization and **integration into ICs** remains a challenge

Future directions include:
- **Electronic PUFs** (e.g., SRAM-based)
- **Statistical modeling resistance** improvements
- Use of **machine learning** to test robustness

---

### Section IX: Conclusion

This paper introduces **Physical One-Way Functions (PUFs)** as a fundamentally new way to implement cryptographic primitives using physical, rather than mathematical, complexity.

Key advantages:
- Extremely high entropy and unclonability
- Resistant to digital extraction and simulation
- Suited for low-cost, secure authentication

> This work laid the groundwork for **PUF research in hardware security**, which has since expanded into CMOS, FPGA, and even biometric applications.

---

### Section X: Notable Equations

**Optical System Transfer Function**:
$$
y = Hx + \eta
$$

**Hamming Distance** (used to compare response uniqueness):
$$
HD(x_1, x_2) = \frac{1}{n} \sum_{i=1}^{n} x_1^{(i)} \oplus x_2^{(i)}
$$
