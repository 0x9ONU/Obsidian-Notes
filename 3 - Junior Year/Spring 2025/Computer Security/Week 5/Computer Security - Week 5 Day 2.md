Date: 19th February 2025
Date Modified: 19th February 2025
File Folder: Week 5
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


# Public Key Infrastructure

## Introduction Scenario

```ad-summary
title: Description
You are aobut to send an email to your bank. In this emial, you need to provide your accoutn number, your social security number, and instructions to transfer a large sum of moeny to a new account.

Now, think about all the places this emial travels thorugh before it reaches your bank: your computer, your institution/home Wi-Fi network, your internet service provider, various servers and routers across the internet, and finally, the bank's network.
```

*Concerns*:
- Eavesdropping at multiple parts of the network
- Malware or keylogger on host computer
- ISP can impersonate you
- Can tamper the data to commit fraud (replace account number for example)

### PKI as a Solution

This is where PKI comes in. By using digital certificates and encryption keys, PKI provides the tools to achieve these security goals. It allows you to:
1. Encrypt your email with the bank’s public key
2. Digitally sign the email with your private key, so the bank can verify that it came from you

## Public-Key Encryption Structure

Publicly proposed by Diffie and Hellman in 1976
- Based on mathematical functions
- Some form of protocol is needed for distribution

Asymmetric
- Uses two separate keys
- Public key and private key
- Public key is made public for others to use


![[Pasted image 20250219142710.png]]

If the user encrypts data using his or her private key, anyone who knows the corresponding public key will be able to decrypt the message.

## Requirements for Public-Key Cryptosystems

1. Computationally easy to create key pairs
2. Computationally easy for sender knowing public key to encrypt message
3. Computationally easy for receiver knowing private key to decrypt ciphertext
4. Computationally infeasible for opponent to determine private key from public key
5. Computationally infeasible for opponent to otherwise recover original message
6. Useful if either key can be used for encryption/decryption

## Asymmetric Encryption Algorithms

1. RSA
2. Diffie-Hellman
3. DDS
4. ECC


| Algorithm      | Digital Signature | Symmetric Key Distribution | Encyrption of Secret Keys |
| -------------- | ----------------- | -------------------------- | ------------------------- |
| RSA            | Yes               | Yes                        | Yes                       |
| Diffie-Hellman | No                | Yes                        | No                        |
| DDS            | Yes               | No                         | No                        |
| Eliptic-Curve  | Yes               | Yes                        | Yes                       |

## RSA (Rivest, Shamir, Adleman)

Exponentiation Cipher: Difficult to determine the number of numbers relatively prime to a large integer $n$

Totient function $\phi (n)$:
- Number of positive integers less than $n$ and relatively prime to $n$

Algorithm:
- Choose two large prime numbers $p, q$ such that:
	- $n=p\times q$, then $\phi(n) = (p-1)(n-1)$
	- Choose $e < \phi(n)$ and $e$ is co-prime to $\phi(n)$
	- Compute $d$ such that $e \times d \mod \phi(n) = 1$
- Public key: $(e, n)$; private key $d$
- $c = m^e \mod n$
- $m = c^d \mod n$

### Applications

**Secure Communication**: TLS/SSL, the protocol that secures web browsing (HTTPS), uses RSA for key exchange and digital signatures.

**Digital Signatures**: RSA can be used to create digital signatures, which verify the authenticity and integrity of digital documents.

**Encryption of Sensitive Data**: RSA can be used to encrypt sensitive data, such as credit card numbers or personal information, to protect it from unauthorized access.
## Digital Signatures

```ad-summary
The result fo a crytographic transofmraiton of data that, when properly implemtned provides a mechanism for verifying origin authentication,d ata integrity and signatory non-repudiation
```

A data-dependent bit pattern, gnerated by an agent as a fucniton of a file, message, or other form of data block

**Must** use one of the three algorithms for digital signatures:
- Digital Signature Algorithm (DSA)
- RSA Digital Signature Algorithm
- Elliptic Curve Digital Signature Algorithm (ECDSA)

### Digital Signature Example

![[Figure+2.7+is+a+generic+model+of+the+process+of+making+and+using+digital+signatures..jpg]]

### Public-Key Certificate

![[Pasted image 20250224142654.png]]

### Digital Envelope Example

![[Pasted image 20250224142746.png]]

### SSL/TLS Example

![[Computer Security - Week 5 Day 2 2025-02-24 14.28.15.excalidraw]]

```ad-important
- Uses a digital certificate to verify if their 
- Uses asymmetric keys to exchange the symmetric key so that they can communicate with each other.
```

## Summary

**Confidentiality with Symmetric Encryption**
- Symmetric encryption
- Symmetric block encryption algorithms
- Stream ciphers

**Message Authentication and Hash Functions**:
- Authentication using symmetric encryption
- Message authentication without message encryption
- Secure hash function
- Other applications of hash functions

**Public-Key Encryption**
- Strucutre
- Applications for pulbic-key cryptosystems
- Requirements for public-key cryptography
- Asymmetric encryption algorithms

**Digital Signatures and Key Management**
- Digital signature
- Public-key certificates
- Symmetric key exchange using public-key encryption
- Digital envelopes

## Stuff on Exam

- Lecture Notes 
- Quizzes
- Lab Basics (what tools we used)
- All types of examples!

