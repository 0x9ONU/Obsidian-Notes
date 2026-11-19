---
creation_date: 2026-11-09 10:11
last_modified: 2026-11-09 10:11
folder: 5 - Deadlocking in DOS
tags:
  - type/lecture
  - field/distributed-operating-systems
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Security Violations

**Based on the CIA Triangle**
1. Confidentiality: Unauthorized reading of data
2. Integrity: Unauthorized modification of data
3. Availability: Unauthorized destruction of data

```ad-example
We are sending a file from one client to the server from plaintext.
- There are multiple nodes along the way that may be used, so we must convert the plaintext into a ciphertext to encode the message
```

### Methods to Security Violations

1. **Masquerading**: Pretending to be an authorized user to escalate privileges 
	- Causes a breach of authentication
2. **Replay Attack**: Message modification where a malicious host will repeat a request  with a to escalate privilege
3. **Man-in-the-Middle**: Intruder sits in data flow, masquerading as sender to receiver and vice versa
4. **Session Hijacking**: intercept an already-establish session to bypass authentication

### Network Threats

1. **Worms**: Use *spawn* mechanism as a standalone program
	- Exploits neworking features and bugs in *finger* and *sendmail* programs

## Cryptography

**Encryption** is often done with the following:
1. Set of $K$ keys
2. Set of $M$ messages
3. Turns into a set of $C$ of ciphertexts

### Symmetric

A shared set of keys across two devices
- DES
- Triple-DES
- AES
- RC4

### Assymetric

- $k_{e}$ is the public key
- $k_{d}$ is the private key
- $N$ is the produce of two large, randomly chosen prime numbers $p$ and $q$
- Encryption algorithm is $E_{ke,N}(m)=m^{k_{e}} \mod N$, where 
# 3. Action Items & Follow-Up
- [x] Review Lecture for DOS 📅 2026-11-13 ✅ 2026-11-13