Date: 30th September 2024
Date Modified: 30th September 2024
File Folder: Week 6
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Chapter 8 Review

## Overview

```mermaid
flowchart LR
SCA-->Power
SCA-->Time
SCA-->EM
Power--> SPA
Power--> DPA
EM-->A(Localized in Time)
ENC-->Private
ENC-->Public
Private-->DES
DES-->Substitution
DES-->Permutation
DES-->Data_Mixing
Private-->AES
AES--> G_256
Public-->RSA
```

```ad-important
title: RSA Review
$$c = m^e \mod n$$
$$m = c^d \mod n$$
$$n=pq$$
$$\phi(n)=(p-1)(q-1)$$
$$GCD(e, \phi(n)) = 1$$
$$ed \mod \phi(n) = 1$$
```

```ad-example
title: DEA Review
![[Hardware Security - Week 6 Day 1 2024-09-30 14.13.25.excalidraw]]
```

## Questions

![[Review of chapter 8 and class discussion questions.pdf]]



