Date: 23rd September 2024
Date Modified: 23rd September 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Brute Force & Plaintext Attacks

![[Hardware Security - Week 5 Day 1 2024-09-23 14.04.59.excalidraw]]

In a plaintext attack, you know part of the message, the cipher, and the function, which can be used to reverse engineer the key
- You do NOT need to decrypt the data. 
- All you need 

In a *brute force* attack, you do *NOT* know part of the message, which means you need to guess the key/message using the cipher and the function.

```ad-important
Sources of messages have *memory*. Each letter has an entropy, which gives information about the message, where a higher entropy means a more important letter.
```ad-example
Vowels in the English language have *low* entropy because they are often not needed to learn what the word is.
```

```ad-note
This all goes back to *key sensitivity*. How close can you get to the key while the decoded message still does not make any sense.
```

## Algorithm Example

```ad-summary
This algorithm uses two substituion blocks and a permutation block with no key.
```

**S0** & **S1**

| $m$ | $m$ $\prime$ | \|  | $m$ | $m$ $\prime$ |
| --- | ------------ | --- | --- | ------------ |
| 000 | 110          | \|  | 000 | 111          |
| 001 | 101          | \|  | 001 | 011          |
| 010 | 111          | \|  | 010 | 101          |
| 011 | 100          | \|  | 011 | 110          |
| 100 | 011          | \|  | 100 | 010          |
| 101 | 010          | \|  | 101 | 000          |
| 110 | 001          | \|  | 110 | 100          |
| 111 | 000          | \|  | 111 | 001          |

**Permutation**

![[Hardware Security - Week 5 Day 1 2024-09-23 14.18.05.excalidraw]]

**Combined**

![[Hardware Security - Week 5 Day 1 2024-09-23 14.21.10.excalidraw]]

```ad-note
Creates a 30 bit key, which has $2^{30}$ combinations. 
```

# Different Types of Attacks

## Simple Power Attack (SPA)

```ad-note
Similar to brute-force attacks
- Typically only knows the function and the cipher
- Uses the power consumption to try to reduce the complexity and the amount of tries.
```

```ad-summary
Monitor the device's power consumption to deduce information about the data and operation
```

## Differential Power Attack (DPA)

```ad-note
Similar to the plain-text attack
```


