Date: 21st October 2024
Date Modified: 21st October 2024
File Folder: Week 9
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# True Random Number Generator

## Random Numbers in Cryptography

- The keystream in one-time pad
- The secret key in DES
- Prime numbers $p$, and $q$ in RSA
- Session keys
- The private key in DSA
- Initialization vectors (IVs) used in ciphers

## Pseudo-Random Number Generator

```ad-summary
title: Definition
A polynomial-time coputatable $f(x)$ taht expands a short random string $x$ into a long string $f(x)$ that appears random
```

*Not truely random in that*:
- Deterministic algorithm
- Dependent on initial values (seed)

*Objectives*:
- Fast
- Secure

## True Random Number Importance

```ad-important
Critical for one-way functions to work effectively:
$$c = f_{\mbox{trapdoor one-way function}} (k, m)$$
$$f_{\mbox{one-way}} [(T, p)] = k$$
```

## TRNG Sources

```ad-summary
The only TRNG souces are those related to physical phenomena such as **the rate of radioactive decay** of an element or the **thermal noise** of a semiconductor
```

![[Pasted image 20241021143009.png]]

```ad-warning
Randomness is bound to natural phenmena. It is impossible to algorithmically generate truly random numbers.
```

## Good TNRG Design

**Entropy Source**:
- Randomness present in physical processes such as thermal and shot noise in circuits, Brownian motion, or nuclear decay

```ad-note
**Shot noise**, the time-dependent fluctuations in electrical current caused by the discreteness of the electron charge, is well known to occur in solid-state devices.
```

**Harvesting Mechanism**:
- The mechanism that does not disturb the physical process but collects as much entropy as possible

**Post-Processing (optional)**:
- Applied to mask imperfections in entropy sources or harvesting mechanism or to provide tolerance in the presence of environmental changes and tampering

### Set of Requirements

1. The design should be purely digital
2. The ahrvesting mechanism should be simple
3. No correction circuits are allowed
4. Compact and efficient design (high throughput per area and energy spent)
5. The design should be sufficiently simple to allow rigorous analysis

## TRNG Structure

### Method: Clock Jitter

Variations in the significant instants of a clock. Jitter is random.

**Source of Jitter**:
- Semiconductor noise
- Cross-talk
- Power supply variations
- Electromagnetic fields

![[Pasted image 20241021143824.png]]

### LFSR

```ad-summary
title: Definition
A linear feedback shift register (LFSR) is a shift register whose input bit is a linear function of its previous state. It generates random patterns causing random switching noise. This provides environmental variations. The environmental variations and process variations make the entropy source more random.
```

![[Hardware Security - Week 9 Day 1 2024-10-21 14.40.19.excalidraw]]

### Ring Oscillators

Process variations and environmental variations to cause random phase jitter.

![[Hardware Security - Week 9 Day 1 2024-10-21 14.41.03.excalidraw]]

### Selection & Operation Unit

The random phase of ring oscillators could be translated into digital values by this unit, such as XOR operation.

![[Hardware Security - Week 9 Day 1 2024-10-21 14.42.16.excalidraw]]

### Capture Unit

Make sure the digital value is sampled with the frequency of the required true random number

![[Hardware Security - Week 9 Day 1 2024-10-21 14.43.27.excalidraw]]

### Output

![[Pasted image 20241021144831.png]]

