Date: 3rd May 2024
Date Modified: 3rd May 2024
File Folder: Week 14
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Slides Link:

https://www.overleaf.com/read/hprhcywvbmdj#294a2e
```

# Advanced Encryption Standard

## Background

In 1997, NIST called for proposals for a new AES. The need for a new block cipher was announced on Janurary 2, 1997. A formal call for AES was announced on Septeber 12, 1997. 

AES was open-source unlike DES. NIST and the international scientific community discussed the advantages and disadvantages of the submitted ciphers and narrowed down the number of potential candidates because DES was found to be unsafe.

There were fifteen candidate algorithms that were submitted by researches to NIST:
- On August 9, 1999, five finalist algorithms were announced:
- Mars by IBM
- RC6 by RSA Labs
- Rijndael, by Joan Daemen and Vincent Rijmen
- Serpent
- Twofish

NIST ended up choosing Rijndael as the new AES. It was approved on November 26, 2001 to be the US federal standard

```ad-note
It would be allowed to encypt classified doucments up to both Secret and Top Secret.
```

```ad-note
AES cipher is nearly identical to the block cipher Rijndael. Rjindael allows for different key sizes, but the AES standard clals for only a block size of 128 bits.
```

```ad-important
AWS encrupts all 128 bits in one interation, making it have a small number of rounds. It consists of so-called layers. Each layer mainipulates all 128 bits of the data path. There are three different types of layers:
- $x$ the plaintext
- $y$ the ciphertext
- $n_r$ the number of rounds
```

## Key Addtion:

A 128-bit round key, or subkey, which is derived form the main key in the key schedule, is XORed to the state. The key schedule computes round keys, or subkeys, $(k_0, k_1,...,k_{n_r})$ from the original AES key.

## Byte-Substitution Layer (S-BOX)

Each element of the state is nonlinearly transformed using lookup tables with special mathematical properties. This introduces confusion to the data, which assures that changes in individual state bits propagate quickly across the data path.

## Diffusion Layer

Provides diffusion over all state bits. It consists of two sublayers, both of which perform linear operations.

The ShiftRows layer permutes the data on a byte level.

The MixColumn layer is a matrix operations which combines blocks of four bytes.

## Implementation in Software

The straightforward implementation is good for 8-bit processors, but not good for 32 or 64 bit.

To solve this, merge all round funcitons (except the key addtiion) into one table look-up. This reuslts in four tables with 256 entries, where each entry is 32 bits wide. One round can be computed with 16 table look-ups.

Typical SW speeds are more than 1.6 Gbit/s on modern 640bit processors

## Security

**Brute-force attack**: Due to the key length of 128, 192, or 256 bits, a brute-force attack is not possible.

**Analytical Attacks**: There is no analytical attack known that is better than brute-froce.

**Side-channel Attacks**: Several side-channel attacks have been published. Note that side-channel attacks do not attack the underlying algorithm but the implementation of it.

### Mandatory

The AES block cipher is mandatory in several industry standards and is used in many commercial systems.

