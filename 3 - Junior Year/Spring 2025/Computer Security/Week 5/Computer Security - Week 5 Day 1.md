Date: 17th February 2025
Date Modified: 17th February 2025
File Folder: Week 5
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Message Authentication

```
# Message Authentication

Messages can be encrypted to improve the confidentiality of messages
- Protects against active attacks
- Verifies received message is **authentic**
- Can use conventional encryption

##  Authentication with No Confidentiality

```ad-warning
Message encryption by itself DOES NOT provide a secure form of authentication
```

You can combine both authentication and confidentiality into a single algorithm by *encrypting a message plus its authentication tag*. HOWEVER it is typically performed as a separate function from the message encryption.

Message authentication WITHOUT confidentiality
- There are a number of applications in which the same message is broadcast to a number of destinations
- An exchange in which one side ahs a heavy load and cannot afford the time to decrypt all incoming messages
- Authentication of a computer program in plaintext is an attractive service

```ad-important
There is a place for both autehtnication and encryption in meeting security requirements
```

## Example: Message Authentication using MAC

![[Message-Authentication-Code-MAC.png]]

## Example: Message Authentication using One-Way Hash

![[Pasted image 20250212144530.png]]

**Necessities of a Hash Function**
1. It should take in value of *any size*
2. Generate an output of *fixed size*
3. Must be a *one-to-one* function (Unique for *EVERY MESSAGE*)
4. $H(x)$ is relatively easy to compute for any given $x$
5. Computationally infeasible to find $x$ such that $H(x) = h$

![[Cryptographic_Hash_Function.svg.png]]

```ad-important
The input cannot be generated from the digest (one-way)
```

### Secuirty of Hash Functions

Two Approaches to **Attacking** a Secure Hash Function:
- *Cryptanalysis*: Exploit logical weaknesses in the algoirthm
- *Brute Force Attack* Strength of has function depends solely on the length of the has code produced by the algorithm

**SHA most widley used**:
- SHA1 - Hash value 160 bits
- SHA2 - Has value, 256, 384, and 512 bits
- SHA3/SHAC - Variable

**Additional Secure Hash Functions**:
- *Passwords:* Hash of a password is stored by an operating system
- *Intrusion Detection*: Store $H(F)$ for each file on a system and secure the hash values

### Hash-Function Scenario

```ad-question
Alice wants to send a large file to Bob and ensure its integrity. What would be the best way to achieve this? Analyze each possibility.
1. Encrypt the entire file wiht a symmetric key
2. Send the file as plain text and include the hash of the file
3. Uses assymetric encryption to send a file
4. Uses hash functions
```


#### Scenario 1

There is *no way* for data integrity to be established. The message OR ciphertext can be tampered with, which will lead to a different file

#### Scenario 2

Eve can read the plaintext file, and is a loss of integrity. Eve can change the message, add a new hash, and then send it to Bob, which means that the file was tampered and has a matching hash to go with it.

#### Scenario 3

Eve can use Bob’s public key and encrypt her own message and send it to Bob

#### Scenario 4

Ensures true authenticity

