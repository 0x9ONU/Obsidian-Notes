Date: 2nd October 2024
Date Modified: 2nd October 2024
File Folder: Week 6
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Physical Unclonable/Random Functions (PUFs)

## Process Variation (Introduction)

Do we expect process variation (length, widths, oxide thickness) in circuit and system?
- Impact performance
- Functional failure
- Major obstacle to the continued scaling of IC technology in the sub-45 nm regime.

Process variations can be turned into a *feature* rather than a problem?
- Each IC has its own unique properties

```ad-important
We are trying to exctract key information from a complex phyiscal system
```

## PUFs Introduction

```ad-summary
Generate keys from a *complex* physical system
```

![[Pasted image 20241002140648.png]]

**Security Advantage**:
- Keys are generated on demand
- No need to program the secret
- Can generate multiple master keys

What can be *hard to predict*, but *easy to measure*?

```ad-summary
title: Definition
A PRF or PUF is a funciton that:
1. Based on a physical system
2. Easy to evaluate (using the physical system)
3. Its output looks like a random function
4. Unpredictable even for an attacker with physical access
```

### SYSINWYG

Process variations where no two transistors have the same parameters

![[Pasted image 20241002141032.png]]

### Proof of Concept

```ad-important
Because of process variations, no two integrated circuits are identical
```

Experiments in which *identical circuits with identical layouts* were placed on different FPGAs show that path delays vary enough across ICs to use them for identification.

![[Pasted image 20241002141159.png]]

## Metastability

![[Pasted image 20241002141628.png]]

## Silicon PUFs

Compares two paths with an *identical delay* in design
- Random process variation determines which path is faster
- An arbiter outputs 1-bit digital response

Path delays in an IC are **statistically distributed** due to random manufacturing variations

![[Pasted image 20241002141858.png]]

```ad-important
Takes advantage of the silicon lottery. The slower multiplexers will cause more of a delay than a better multiplexer
```

### Example Experiment

Fabricated candidate PUF on multiple ICs, 0.18um TSMC

Apply 100 random challenges and observe Reponses

- The two chips are different because of process variations
- If the distance between chip $X$ and chip $Y$ are higher then it is good to detect ICs
- Temp adds some noise
- There is also measurement noise

```ad-important
As long as around 25% of the bits are different, the chip is unique enough
```

#### Measurement Attacks and Software Attacks

```ad-question
Can an adversary create a *software clone* of a givne PUF chip
```

A software clone of PUF is impossible. Experiment shows that best model for chip $X$ has 10 errors, which is almost equal to 50%

## Physical Attacks

Make PUF delays depend on overlaid metal layers and package

**Invasive attacks** can make changes to the PUF delays and destroy PUFs.

Non-invasive attacks:
- To find wire delays, one needs to find precise relative timing to transient signals as opposed to looking for 0’s and 1’s
- Wire delay is not a number, but a function of challenge bits and adjacent wire voltages and capacitances

## Ring-Oscillator (RO) PUFs

The structure relies on delay loops and counters instead of MUX and arbiters
- Better results on FPGA - more stable

![[Pasted image 20241002143945.png]]




