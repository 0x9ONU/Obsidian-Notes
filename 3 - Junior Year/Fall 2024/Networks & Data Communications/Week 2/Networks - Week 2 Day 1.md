Date: 4th September 2024
Date Modified: 4th September 2024
File Folder: Week 2
#networks

```ad-summary
title: Today's Topics
- Subnetting
```

# Classless InterDomain Routing (CIDR)

## IP Addressing: CIDR

Subnet portion of address of arbitrary length

```ad-note
Address Format:
`a.b.c.d/x` where $x$ is the \# of bits in the subnet portion of address
```


![[Pasted image 20240904093627.png]]

![[Networks - Week 2 Day 1 2024-09-04 09.36.34.excalidraw]]

```ad-important
This will change the subnet mask from 24 bits to **26 bits**:
`255.255.255.192`
```

### Testing Subnet Mask

**Network A**

Host: $\Rightarrow$ `200.10.1.10/26`
Host in Binary $\Rightarrow$ $11001000.00001010.00000001.00001010$

Subnet $\Rightarrow$ `255.255.255.192`
Subnet in Binary $\Rightarrow$ $11111111.11111111.11111111.11000000$

Masked in Binary: $\Rightarrow$ $11001000.00001010.00000001.00000000$
Masked IP $\Rightarrow$ $200.10.1.10.0$


