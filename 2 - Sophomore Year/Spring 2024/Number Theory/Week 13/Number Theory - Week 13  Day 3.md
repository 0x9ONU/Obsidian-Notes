Date: 26th April 2024
Date Modified: 26th April 2024
File Folder: Week 13
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

https://www.overleaf.com/project/vbwwwbjwndjc#4e2187
```

# ElGamal Public Key Encryption

```ad-summary
title: Key Generation
Let's assume that ALice is the sender and Bob is the receiver. To generate keys, Alice will have to do the foollowing:
1. First Alice and Bob must agree on a large prime number $p$ and a primative root $g \mod p$. $p$ and $g$ are public
2. Choose a secret key $a$ with a $1 \le a \le p$
3. Compute $A = g^a \mod p$
4. Publish the public key $A$
```

![[Number Theory - Week 13  Day 3 2024-04-26 09.10.04.excalidraw]]

**If Bob wants to send a message to Alice, he will do the follwoing:
1. Represent the messag e$m$ as an elmeent of $\mathbb{Z}_p$. If the message is too big, then he will break it into pieces with each piece belonging to $\mathbb{Z}_p$
2. Look up in the public directory to find Alice's public key $A$
3. Choose a random ephemeral key $k$.
4. Compute $c_1 = g^k \mod p$, and $c_2 = mA^k \mod p$
5. Send cipher text $c = (c_1, c_2)$ to Alice

**For Alice to decipher, she will do the following:**
1. Use her secret key $a$ to compute $(c_1^a)^{-1} * c_2 \mod p$
2. Recovers the original message $m$ that is equal to it.

$$(c_1^a)^{-1}*c_2\mod p = ((g^k)^a)^{-1}*mA^k \mod p$$
$$=(g^{ak})^{-1}*m(g^a)^k \mod p$$
$$(g^{ak})^{-1}*mg^{ak}\mod p$$
$$= m$$

