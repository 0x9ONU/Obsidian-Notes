---
creation_date: 2026-11-13 10:12
last_modified: 2026-11-13 10:12
folder: 7 - IoT, Blockchain and Cloud Computing
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

## Introduction

- **SHA256 Hash**: Used as a “fingerprint” 
	- Input always leads to the same output
	- You cannot reverse the output to the input due to it being a *one-way function*
	- Only can be done using something like a rainbow table.
- **Block**: The basis of a blockchain
	- Contains:
		- *Block #*: The block in the chain. Does *not* affect the hash
		- *Nonce*: The skew that allows the hash to change 
		- *Data*: The data stored in the block. Also affects the hash
	- Needs **four zeros at the front** to be signed!
	- **“Mining”**: Used to find when a block is signed. In this case, this is when it starts with four zeros.
- **Blockchain**: A combination of blocks
	- Contains a *previous* value that points back to the previous block’s hash. 
	- Acts a lot like a singly linked list
	- Anytime the data is changed in the past, it breaks all the blocks in front of it!
	- Each block starting with the changed block needs to be mined all the way forward.
	- Any changes beforehand is reflected as a cascade, where the final hash in the chain will be different if there is an error, even if they were re-mined all the way forward
	- **Ensures that all blocks are identical very quickly by just looking at the last hash**
- **Tokens**: Gives meaning to the blockchain
	- Stores transactions within the data area
	- If any of the transactions were changes,  the we would know by comparing altered blockchain’s last hash with the real last hash.
	- Ex. Darcy gives $25 to Bingle
	- However, we **do not know** if Darcy has the money to give to Bingle
- **Coinbase**: 
	- Fixes the problem with tokens
	- Blocks can provide currency to specific people, which can then be distributed and traded around afterwards
	- Allows you to trace transactions backwards to ensure:
		- The user has the proper money to give
		- Keep track of who has what funds
		- A base level amount of funds that can be distributed throughout the network

```ad-note
The first block is also known as the *genesis block*
```

```ad-important
Make sure you play around the demos for about an hour to understand how they work.
```

Blockchains create a distributed log of transactions
-  Much like the ledger at a major bank
- However, unlike a bank, no central authority is necessary!
- Major banks have begun to switch to this technology
 
 **Finding the Nonce** is like solving a puzzle
- A bunch of people try to “mine”
- The # of zeros in the hash determines the difficulty level and how big the nonces can be set 
# 3. Action Items & Follow-Up
- [ ] Review Lecture 30 for DOS 📅 2026-11-16 
- [ ] Run blockchain simulation fro DOS 📅 2026-11-16 🔼 