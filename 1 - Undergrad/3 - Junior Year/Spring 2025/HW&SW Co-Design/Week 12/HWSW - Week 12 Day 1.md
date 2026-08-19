Date: 14th April 2025
Date Modified: 14th April 2025
File Folder: Week 12
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Delay in Logic Gates

Express delays in process-independent unit. Has *two components*: $d = f + p$
- $f$: *effort delay* = $gh$ 
	- $g$: *logical effort*
		- Measures relative ability of gate to deliver current
		- $g = 1$ for inverter
	- $h$: *electrical effort* $= C_{out}/C_{in}$
		- Ratio of output to input capacitance
		- Sometimes called fanout
- $p$: *parasitic delay*
	- Represents delay of gate driving no load
	- Set by internal parasitic capacitance
$$\boxed{d = gh + p}$$
$$d = \frac{d_{abs}}{\tau} \Rightarrow \tau = 3RC$$
![[Pasted image 20250414110706.png | center]]


## Computing Logical Effort

**DEF**: Logical effort is the ratio of the input capacitance of a gate to the input capacitance of inverter delivering the same output current

Measure from delay vs. fanout plots OR estimate by counting transistor widths

![[Pasted image 20250414111151.png | center]]

## Catalog of Gates

### Logical Effort

![[Pasted image 20250414111400.png | center]]

### Parasitic Capacitance

![[Pasted image 20250414111552.png | center]]

## Examples

### Ring Oscillators

![[Pasted image 20250414111711.png]]

Logical Effort: $g =1$
Electrical Effort $h = 1$
Parasitic Delay: $p = 1$
Stage Delay: $d =2$
Frequency: $f_{osc} = 1/(2*N*d) = 1/4N\tau$

### FO4 Inverter

![[Pasted image 20250414112107.png]]

Logical Effort: $g=1$
Electrical Effort: $h = 4$
Parasitic Delay: $p = 1$
Stage Delay: $d = 5$

```ad-note
F04 Delay is about $300ps$ in a $0.6 \micro m$ process. $15ps$ in a $65nm$ process
```

## Multistage Logic Networks

Logical effort generalizes to multistage networks

**Path Logical Effort**: $G = \prod g_i$

**Path Electrical Effort**: $H = \frac{C_{out-path}}{C_{in-path}}$

**Path Effort** = $F = \prod f_i = \prod g_i h_i$

![[Pasted image 20250414112702.png | center]]


### Branching Effort


![[Pasted image 20250414113108.png]]

Accounts for branching between stages in path:

$$b = \frac{C_{on-path}+C_{off-path}}{C_{on-path}}$$
$$B = \prod b_i$$
$$\prod h_i = BH$$

$$F = GBH$$

### Multistage Delays

Path Effort Delay: $$D_F = \sum f_i$$
Path Parasitic Delay:
$$P = \sum p_i$$
Path Delay:

$$D = \sum d_i = D_F + P$$


### Designing Fast Circuits

Delay is the smallest when each stage bears the same effort:

$$\hat f= g_i h_i = F^\frac{1}{N}$$

```ad-important
The minimum delay of $n$ stage path is:

$$D = NF^\frac{1}{N} + P$$
```

This is a **key** result of logical effort
- Find fastest possible delay
- Does not require calculating gate sizes

### Gate Sizes

$$\hat f = gh = g \frac{C_{out}}{C_{in}} \Rightarrow \boxed{C_{in_i}= \frac{g_iC_{out_i}}{\hat f}}$$


## Example: 3 Stage Path

![[Pasted image 20250414114312.png | center]]


![[Pasted image 20250414114321.png | center]]

![[Pasted image 20250414114554.png | center]]





