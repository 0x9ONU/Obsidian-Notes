Date: 31st March 2025
Date Modified: 31st March 2025
File Folder: Week 10
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


# Fabrication Day 2

## Design Rules

Act as the interface or even the contract between the circuit designer and the process engineer.
- Want tighter, smaller designs, which lead to higher performance and higher circuit density
- the process engineer, on the other hand, wants a reproducible and high-yield process

### Important Design Rules

Mead and Conway popularized scalable design rules based on a single parameter, $\lambda$, that characterizes the resolution of the process
- $\lambda$ is half of the minimum drawn transistor channel length
- Sets the minimum width between source and drain

Metal and Diffusion have minimum width and spacing
- Polysilicon must be 2$\lambda$
- Poly overlaps must be $2 \lambda$
- Poly space of a least $1 \lambda$ with no transistor
- Contact cuts must be $2 \lambda \times 2 \lambda$
- Polysilicon and contacts must be at least $3 \lambda$
- N-well surrounds PMOS transistors by at least $6 \lambda$

![[Pasted image 20250331114715.png]]

