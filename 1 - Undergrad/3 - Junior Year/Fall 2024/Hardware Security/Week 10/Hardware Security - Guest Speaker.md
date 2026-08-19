Date: 30th October 2024
Date Modified: 30th October 2024
File Folder: Week 10
#Electronics #special

```ad-summary
title: Speaker
*Dr. Boyang Wang*
Department of Electrical and Computer Engineering
University of Cincinnati
```

## Opportunities

### NSF CHEST IUCRC

Partners with NSF, Government, and Industry members to lead research projects across six universities:
- University of Virginia
- Northwest University
- University of Connecticut
- UCD
- UTD
- University of Cincinnati

### Positions

Multiple Fully-Funded PH.D. Positions are available at ECE@UC through NSF CHEST Center
- Hardware and embedded systems security and trust
- Interns & full-time job opportunities with our industry members and federal agencies

**RA**: Biweekly stipend: $1,077; Tuition + Insurance (Covered)

*Other Fellowships*: Herbold Fellowship ($10,000 single time); Godown Family Fellowship ($10, 000 singe time); NSF Cybercorps Scholarship for Services Scholarship ($37,000 + Tuition + more)

## Deep Learning Side-Channel Attacks

### Introduction

**Attacker** analyzes power/electromagnetic(EM) samples of a target and recovers *encryption keys.*

```ad-warning
They can gain the *correlation* between power and intermediate values of encryption. **Regardless** if the encryption standard is *mathematically* secure.
```

### Shy SCA is Critical

Encryption key theft leads to:
- Steal information on credit card
- Learn password on crypto wallet
- Reveal any *private* communication
- Counterfeit chips

### Encryption 101

```ad-summary
title: Definition
A function/algorith that can encrypt a message/plaintext and genreate a *chipertext* an attacker cannot learn the message.
```

#### With NO SCA

Alice and Bob share their key $k$ in advance and encrypts the message and sends it to Bob using the public channel. Eavesdroppers then cannot find the message from the cipher without the key *in theory*.


#### Advanced Encryption Standard

```ad-note
On basically every applicaiotn and device (WhatsAPp, Amazon, etc.)
- Mathematically secure
```

**Block Cipher**
- Divide into multiple blocks
- 1 message block: 128 bits/16 bytes
- Pad last block when necessary

##### Operations in AES

One block is encrypted by *one execution* of AES

Encryption in one block runs **multiple rounds**
- Key ahs 128 or 256 bits
- AES-128: 10 rounds
- AES-256: 14 rounds

**Steps**:
- Initialize *state** *4x4 array of byes) form 1 message block
- *AddKey*: A 128-bit subkey $\oplus$ state
- In each round:
	- *SubBytes*: substitute each bye in State (s-box)
	- *ShiftRows*: Shift bytes on each row in State
	- *MixColumns*: Operations on each column (skip if final round)
	- *AddKey:* a128-bit subkey $\oplus$ State
	- Use current State as **input** for the next round

### Side Channel Attack son AES

Due to the correlation between power and intermediate values of encryption can be used to *bypass* the mathematical security

```ad-note
In the real world, side-cahnnel information can be found everywhere
```

#### Side Channel Examples

##### Example 1

```ad-example
Assuem there are only 3 items only on Amazon:
1. An iPhone
2. 13-inch laptop
3. a 60-unch TV.

Amazon uses small, medium, and huge boex
```

Alice knows her neighbor Bob brought one item form Amazon, but *does not know* which one.

Alice then sees there is a *huge* Amazon box in front of Bobb’s door

```ad-important
Alice can assume what Bob purchased by seeing the size of the box. There is a correlation between the size of an item and the size of a shipping box
```

Alice → Side-channel attacker
Bob → User
Purchased item → Secret info
Box → Ciphertext

##### Power Example

```ad-question
Assume there is a *correlation* between power consumptiona nd the outputs of the `SubBytes` in AES. If the output has a greater number of 1s, it consumes more power.
```

| No. of 1 bits in an output | Average Power consumption |
| -------------------------- | ------------------------- |
| 5                          | 2.5                       |
| 6                          | 2.8                       |

**Question 1**:

Given `1101110x`, an output of AES `SubBytes` (last bit unknown), we know it consumes $2.49$ power.

There is a *high chance* that the last bit is `0`

**Question 2**:

Given `1101110x`, an output of AES `SubBytes`, we run 4 times, and it consumes 2.49, 2.85, 2.9, 2.83 power.

$$\bar W = \frac{2.49+2.85+2.9+2.83}{4}= 2.77$$

2.77 is *closer* to 2.8 than it is to 5

There is a *high chance* that the last bit is `1`

```ad-warning
If we know the output of `SubBytes`, we can get the hex of `0xdd`, and use the `SubBytes` in return, we are able to find the reverse of the s-box (`0xc9`)
```

As message is also known, input of `SubBytes` is known, the key can be recovered by an attacker

$$k = \mbox{0xab } \oplus \mbox{ 0xc9}$$

$$k = 0x62$$

```ad-important
One key byte is revealed!
```

### Deep Learning SCA

**Advantages**
- No (or less) preprocessing over traces
- *Defeats* countermeasures (masking & random delays)
- Recover keys within a *small* number of test traces

Focuses on *Profiling* and *Non-Profiling* attacks (test device only)

```ad-note
Focuesingo n Profiling Attacks (training device and test device)
```

#### Profiling SCA

**Steps**
1. Process training device (plaintext, key, traces)
2. Train a profile (ie. a classifer)
3. Capture plaintext and traces form test device
4. Recover the key

#### SCA on AES

```ad-summary
title: Definition
A *trace* is a sequence of samples when a device runs AES-128
```

**Leakage Step**: AES `SubTyes` (First Round)

**Intermediate Value**: Output of `SubBytes`

Attack *one key byte* each time
- 256 possible keys (`0x00`,..., `0xFF`)

```ad-important
*Point of Interest*: Smaples from **Leakage Step**
```

Use a **CNN** (5 conv, 5, pooling, 2 fully-connected, 1 output)
- Also can use ResNet, LLM

##### Example

- *Train*: 135,000; *Validation*: 5,000; *Test*: 10,000

Attack results from *3rd* key btye (an byte will be fine)

**Identify** or **Hamming Weight** model as leakage model
- Number of high bits

Train with 150 epochs on GPU machine (Nvidia RTX 4080)

Around 2~8 hours of training.


```ad-important
Accuracy of DL-SCA can by around 6%. This may be low, but it makes the key able to be much easier as long as it is higher than random guess ($1/256=0.039 \%$)
```

Aggregates multiple scores across multiple traces to find the best output.

Correct key has the *highest* aggregated score.

**MTD**: the number of test traces for key rank converging to 1
- Smaller MTD → attack is more effective.

### Limitations of Deep Learning SCA

Deep learning SCA is sensitive to domain shift, e.g., train on *dataset A* but fail to recover keys on *dataset B*



