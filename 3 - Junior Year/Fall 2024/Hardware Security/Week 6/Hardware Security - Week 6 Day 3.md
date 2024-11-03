Date: 4th October 2024
Date Modified: 4th October 2024
File Folder: Week 6
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Silicon PUFs as an Unclonable Key

```ad-summary
- The lock has a database of challenge-response pairs.
- To open the lock, the key has to show that it knows the response to one or more challenges.
```

## Applications

**Anonymous Computation**:
- Alice wants to run computations on Bob’s computer, and wants to make sure that she is getting correct results.
- *A certificate is returned with her results to show that they were correctly executed*

**Software Licensing**:
- Alice wants to sell Bob a program which will only run on Bob’s chip suing a PUF
- *The program is copy-protected so it will not run on any other chip*

```ad-important
We can enable the above applications by trusting only a single-chip processor that contains a silicon PUF
```

## Sharing a Secret with Silicon PUF

Alice has CRPs of different PUFs. At first, the PUF will send its identification to Alice.

Suppose Alice wishes to share a secret with the Silicon PUF. She has a challenge response pair that no one else knows, which can authenticate the PUF

She asks the PUF for the response to a challenge

![[Pasted image 20241004142947.png]]

## Controlled Physical Random Functions (CPUFs)

```ad-warning
Normal PUFs are very susceptible to MIM attacks
```

So, an extra layer to the PUFs so that the attacker does not get any information. (Hash Function)

```ad-summary
CPUFs can be used to establish a secret between a physical device and remote user. So, CPUFs are PUFs that only can be accessed via an algorithm.
```

```ad-note
title: Remember
A **hash function** is any algorihtm ro subroutine that maps large data sets of variable length, called *keys*, to smaller data sets of a fixed length
- Regardless of how large the data is, it gets *hashed* into a single integer
```

### Cryptographic Hash Function

They *must* provide:
- **Compression**: output length is small
- **Efficiency**: $h(x)$ easy to compute for any $x$
- **One-way** - given a value $y$, it is infeasible to find an $x$ such that $h(x) = y$
- **Weak collision resistance**: given $x$ and $h(x)$, infeasible to find $y \ne x$ such that $h(y)=h(x)$
- **Strong collision resistance:** impossible to find any $x$ and $y$, with $x \ne$ such that $h(x)=h(y)$

### Implementation

![[Pasted image 20241004143621.png]]

$$\mbox{Secret} = \mbox{Hash}(\mbox{Hash}(\mbox{Program}, \mbox{Reponse})$$

## Summary

PUFs provide secret “key” and CPUFs enable sharing a secret with a hardware device








