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

