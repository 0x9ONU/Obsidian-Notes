Date: 7th October 2024
Date Modified: 7th October 2024
File Folder: Week 7
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Single-Cycle Control Unit
## High Level View & Low Level View

![[Pasted image 20241007110754.png]]

## Main Decoder

![[Pasted image 20241007111212.png]]

![[Pasted image 20241007111517.png]]

## ALU

![[Pasted image 20241007111342.png]]

```ad-note
title: Remember: `slt`
1. Subtract $A$ from $B$
2. IF the MSB is 1 ($A < B$), then set it to the LSB in the output
3. IF the MSB is 0 ($A \ge B$), then set it to the LSB in the output
```

![[Pasted image 20241007111359.png]]

## ALU Decoder

![[Pasted image 20241007111437.png]]

![[Pasted image 20241007111457.png]]

## Example: `and`

![[Pasted image 20241007113418.png]]



