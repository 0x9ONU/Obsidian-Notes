Date: 15th April 2024
Date Modified: 15th April 2024
File Folder: Week 12
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

https://www.overleaf.com/project/660f53b2c8602a04528bea98
```

# Encryption Schemes

## Basic Definitions

- Bit: 0 or 1
- **Bit String length $n$**: A sequence of $n$ bits
- $m$ = plaintext message (sender's intended message)
- $c=$ cipher text (concealed message)
- $k =$ key (key to conceal or reveal a message)
- $m, c, k$ are bit strings

## Definition

```ad-summary
title: Definition
An encryption scheme or cryptosystem consists of the following:
- $\mathcal{M}:$ Space of possible plaintexts
- $\mathcal{C}:$ Space of possible ciphertexts
- $\mathcal{K}:$ Space of possible keys
- $\mbox{Gen}(1^n):$ Key generation algorithm
```

![[Number Theory - Week 12 Day 1 2024-04-15 09.09.02.excalidraw]]

$$\mathcal{E}_k = \{ \mathcal{E}_k: k \in \mathcal{K}\} \space \mbox{ Enc Alg}$$
$$\mathcal{D}_k=\{\mathcal{D}_k: k \in \mathcal{K}\} \space \mbox{Dec Alg}$$
```ad-note
$\mathcal{E}_k(\cdot) = \mbox{Enc}_k(\cdot)$
```

## Symmetric Key vs. Public Key

**Symmetric-Key**: A Single Key for Encryption and Decryption

**Public-Key**: Each person has both a public key for the input of the encryption and a private key used for the input to decryption. $k = (pk, sk)$

![[Number Theory - Week 12 Day 1 2024-04-15 09.16.11.excalidraw]]


## Example: Vigenère Cipher

```ad-summary
title: Background
1. Introduced by Giovan Battista Bellaso, 1553
2. Misattributed to (19th century) Balise de Vigenere
3. Friedrich Kasiski (19th century) published a technique to break the Vigenere cipher
4. Better than "letter-by-letter", but sitll not secure.
```

Choose an Alphabet: English
Choose a key: Lemon

**Plaintext:** Wakeu pnow (Wake up now)

```ad-note
Write down the plaintext over a repeated key, then add the letters mod 26 to get the cipher text
```

| a     | 0   | **n** | 13  |
| ----- | --- | ----- | --- |
| **b** | 1   | o     | 14  |
| **c** | 2   | p     | 15  |
| d     | 3   | q     | 16  |
| e     | 4   | r     | 17  |
| f     | 5   | s     | 18  |
| g     | 6   | t     | 19  |
| h     | 7   | u     | 20  |
| i     | 8   | v     | 21  |
| j     | 9   | w     | 22  |
| k     | 10  | x     | 23  |
| l     | 11  | y     | 24  |
| m     | 12  | z     | 25  |

Wakeu Pnow
LEMON LEMO

$$\begin{bmatrix} m = & W & A & K & E & U & P &  N & O & W \\  \mbox{key} = &L & E & M & O & N & L & E & M &O\end{bmatrix} \Rightarrow \begin{bmatrix} (22) & (0) & (10) & (4) & (20) & (15) &  (13) & (14) & (22) \\ (11) & (4) & (12) & (14) & (13) & (11) & (4) & (12) &(14)\end{bmatrix}$$
$$c = [(22+11), (0+4), (10+12),(4+14), (20 + 13), (15+11), (13 +4), (14+12), (22+14)] \mod 26$$
$$c = \mbox{HEWSHARAK}$$

```ad-important
Take the key again to the cipher text to get the plaintext back (symmetric key)
```

### Generalized

$$c = \mathcal{E}(m_1 \parallel m_2 \parallel...)$$
$$=(c_1 \parallel c_2 \parallel...) \mod 26$$
$$m = \mathcal{D}(c_1 \parallel c_2 \parallel...)$$
$$= (m_1 \parallel m_2 \parallel...) \mod 26$$
## Example: One Time Pad

$$\mathcal{M} = \mathcal{C} = \mathcal{K} = \{0, 1\}^n$$

![[Number Theory - Week 12 Day 1 2024-04-15 09.37.02.excalidraw]]

```ad-note
The key is picked uniformly
```

```ad-important
This algorithm is perfectly secret
```

### Limitations

1. The key is too long (as long as the message itself)
2. Using the same key twice is a problem:
3. Perfect secrecy holds  if each key is used to encrypt a single message.
4. The limitations of the one time pad are also inherent for schemes that achieve perfect secrecy. One can prove that if an encryption scheme:
$$(\mathcal{M}, \mathcal{C}, \mathcal{K}, \mathcal{G}, enc(\cdot), dec (\cdot)$$
is perfectly secret, then:
$$|\mathcal{K} \ge \mathcal{M}|$$

### Example

```ad-question
Encrypt the following using the follwoing plaintext and key using one time pad
```

$$\begin{bmatrix}m = & 1 & 0 & 0 & 1 & 1 & 0 & 1 & 0 \\ k = & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 1 \\ -& - & -& - & -& - & -& - & - \\ c = & 0 & 0 & 1 & 1 & 1 & 1 & 1 & 1 \end{bmatrix}$$




