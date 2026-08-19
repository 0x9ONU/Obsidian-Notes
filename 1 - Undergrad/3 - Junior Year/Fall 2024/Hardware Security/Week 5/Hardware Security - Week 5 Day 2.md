Date: 25th September 2024
Date Modified: 25th September 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Simple Power Analysis
	- Attacks
	- Countermeasures
- Timing Attacks

```

```ad-important
Even though these techniques cannot get the key directly, it can be used to make it easier and narrow the space.
```

# Simple Power Analysis (SPA)

Proposed by Paul Kocher in 1996.

```ad-summary
Monitors the device's power consumption to deduce information about data and operation
```

```ad-example
SPA on DES - smart cards
```

## SPA for Other Encryption Techniques

- AES is another private encryption technique that includes a data mixing step.
- RSA is a public key encryption technique that involves modulo exponents

```ad-example
Modular exponentiation in DES is often implemented by square and multiply algorithms
- Then, the power trace of the xponentiation can directly yeilds the corresponding value.
```

```ad-warning
ALL programs involving *conditional branching based on the key values* are at risk!
```

![[Pasted image 20240925142430.png]]

# Differential Power Analysis (DPA)

- SPA targets variable instruction flow
- *DPA* targets data-dependence
	- Different operands present different power

Difference between smart cards and FPGAs:
- One operation at a time in smart cards (SPA)
- FPGAs have parallel computations that prevent SPA inspection (DPA)

```ad-important
Can be perfromed on *any* algorithm that has the operation:

$$\beta = S(\alpha \oplus K)$$
```

![[Pasted image 20240925142708.png]]

![[Pasted image 20240925142612.png]]
# DES Basic Structure

```ad-summary
- A product cipher
- 16 round iterations
	- Substitutions (for confusion)
	- Permutations (for diffusion)
- Each round has a *round key*
	- Generated from the user-supplied key
```

![[Pasted image 20240925141503.png]]

**Input**: 64 bits (a block)

*Li/Ri*: Left/Right half (32 bits) of the input block ofr iteration $i$ -subject to substitution $S$ and permutation $P$

$K$: User-supplied key

$K_i$ - round key
- 56 bits used + 8 unused
- Used for error checking rather than encryption

**Output**: 64 bits (a block)

```ad-note
$R_i$ becomes $L(i+1)$
```

All simple logical operations
- Left shift/XOR

## SPA on DES
![[Pasted image 20240925141716.png]]

```ad-important
The power trace can reveal the instruction sequence
```

SPA can be used to beak cryptographic implementations (execution path, instruction, key change, etc.)
- **DES key schedule**: Involves rotating 28-bit key registers
- **DES permutation**: Involves conditional branching
- The DES structure and 16 rounds are known
- Instruction flow depends on the data, which creates a power signature
- **Comparison**: Involves string and memory comparison operations performing a conditional branch when a mismatch is found

*SPA Countermeasure*:
- Avoid procedures that use secret intermediates or keys for conditional branching operation

# Countermeasures

## Overview

1. Hiding – Reduce the SNR by either increasing the noise or reducing the signal
	- Noise generators, balanced logic styles, asynchronous logic, low power design and shielding

```ad-note
Aims to reduce the SNR of the side-channel information by either reducing the signal component of side- channel emissions. Common hiding methods include noise generators, balanced logic styles, asynchronous logic, low power design and shielding.
```

2. Masking/Blinding – remove the correlation between the input data and the side-channel emissions from intermediate nodes in the functional block

```ad-note
Masking or blinding seeks to remove the correlation between the input data and the side-channel emissions from intermediate nodes in the functional block.
```

3. Design Partitioning – Separate regions of the chip that operate on plaintext form regions that operate on chipertext

```ad-note
Design partitioning separates regions of the chip that operate on plaintext from regions that operate on ciphertext in order to avoid coupling of secret signal on to other nodes and information leakage that followed.
```

## Internal Clock Phase Shifts

![[Pasted image 20240925143746.png]]

# Timing Attacks

```ad-summary
Running time of a crypto processor can be used as an information channel
- Proposed by Kocher, Crypto'96
```

Running time of a crypto processor can be also used as an information channel.

```ad-example
Imagine you put $28 in one pot and $10 in the other. If there are 10 notes in the blue pot and 7 notes in the red pot, you cannot determine what is in each pot according to whether the result is odd or even.
```

HOWEVER, if you just monitor how long the time it takes to give the answer, one can tell where each amount is!


## RSA Cryptosystem

### Kocher’s Observation

![[Pasted image 20240925144211.png]]

## Outline of Kocher’s Attack

```ad-summary
title: Idea
Guess some bits of the xponent and predict how long decyrption will take
```

If correct, observe correlation; if not, then prediction will look random
- This is a signal detection problem, where signal is timing variation due to guessed exponent bits
- The more bits you already know, the stronger the signal, this easier to detect (error-correction property)

Start by guessing a few top bits, look at correlations for each guess, pick the most promising candidate and continue.





