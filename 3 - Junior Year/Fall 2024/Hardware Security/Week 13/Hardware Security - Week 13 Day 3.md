Date: 22nd November 2024
Date Modified: 22nd November 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Attacking Watermarks

## Ghost Signatures

**Intention**: To announce a watermark when there is none
- So that you may announce it contains your watermark as well

*Method*:
- Starting from solution characteristics, try to figure out the input pattern from current solution
- Try different signatures to create a collision
- Addition of a new signature
## Tampering

Altering, damaging, or removing the watermark
- Prohibitively large amount of effort required

Move backwards through design phase
- Keep going back until before the watermark was added, then remove/replace it

```ad-note
Depends heavilkiy on reverse engineering to previous design steps
```

## Forging

```ad-summary
title: Objective
To subvert proprietor's watermark by inappropriately watermarking other solutions with proprietor's watermark
```

Need the *private key* of the IP author

```ad-warning
Usually prevented by encryption. Very unlikely to happen :(
```

# Defending Watermarks

**Watermark Obfuscation**
- Against tampering
- Make watermark harder to detect

**Multiple Small Watermarks**
- Against tampering
- Make watermark harder to alter

**Parity in Watermarks**
- Against tampering
- Detect and repair tampering
- Often use XOR for parity check (whether sum is odd or even)\

## Evaluation of Watermarking Techniques

Tries to prove authorship and tries to maximize it

Error on overestimation when exact value is hard to calculate

```ad-check
title: Solution
Bascially calaculate how unlikely it is for the accused to have made the same pattern by pure change.
```

![[Pasted image 20241122142332.png]]
```ad-important
This needs to have a low probability since it can be used to differentiate between an accident and a signature in court.
```

### Boolean Satisfiability Problem (SAT)

Set of Variables: $U = \{ u_1, u_2,...,u_n\}$, $u_i = 1 \mbox{ or } 0, i \in [1, n]$

**Clauses**:
- Means logic OR; $\{ u_1, u_2 \}$ means $u_1 | u_2$

**Satisfiability**: Is there an assignment of $U$ that satisfies all clauses?

![[Pasted image 20241122143236.png]]
#### Method to Add Constraint

Assuming function to IP is described by example problem below.

![[Pasted image 20241122143324.png]]

```ad-question
title: Task
To modify this SAT problem such that:
- Any solution to modified problem satisfies old problem
- Both modified problem and solution contain information uniquely identifying author
```



