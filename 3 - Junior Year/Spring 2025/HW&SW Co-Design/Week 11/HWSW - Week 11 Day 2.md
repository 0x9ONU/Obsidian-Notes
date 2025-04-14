Date: 9th April 2025
Date Modified: 9th April 2025
File Folder: Week 11
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Capacitance

## Diffusion Capacitance

Undesirable, called *parasitic* capacitance
- $C_{sb}, C_{db}$
- Capacitance depends on area and perimeter
	- Use small diffusion nodes
	- Comparable to $C_g$ for contacted diff
	- 1/2 $C_g$ for uncontacted
	- Varies with process


| Feature                            | Uncontacted Diffusion | Contacted Diffusion |
| ---------------------------------- | --------------------- | ------------------- |
| *Junction Capactiance*             | $\checkmark$          | $\checkmark$        |
| *Contact-to-Substrate Capacitance* | X                     | $\checkmark$        |
| *Metal Coupling*                   | Minimal               | Significant         |
| *Total Parasitic Capacitance*      | Lower                 | Higher              |


![[Pasted image 20250409110313.png]]

# DC Response

$V_{out}$ vs. the $V_{in}$ for a gate

```ad-example
The Inverter
- When $V_{in} = 0 \rightarrow V_out = V_{DD}$
- When $V_{in} = V_{DD} \rightarrow V_{out} = 0$
- Inb etween, $V_{out}$ depends on transistor size and current
- By KCL, must settle such that $I_{dsn} = \mid I_{dsp} \mid$
- We could solve equations
- But graphical solution gives more insight

![[Pasted image 20250409111230.png | center]]
```

```ad-important
This lecture focuses on the transition between different states to find the non-ideal characteristics of the transistors when they are between their values.
```

## nMOS Operation


| Cutoff                                  | Linear                                             | Saturated                                          |
| --------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| $V_{gsn} < V_{tn}$<br>$V_{in} < V_{tn}$ | $V_{gsn} > V_{tn}$<br>$V_{dsn} < V_{gsn} - V_{tn}$ | $V_{gsn} > V_{tn}$<br>$V_{dsn} > V_{gsn} - V_{tn}$ |
## pMOS Operation


| Cutoff                                          | Linear                                                                                                          | Saturated                                                                                                       |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| $V_{gsp} > V_{tp}$<br>$V_{in} > V_{DD}+ V_{tp}$ | $V_{gsp} < V_{tp}$<br>$V_{in} < V_{DD} + V_{tp}$<br>$V_{dsp} > V_{gsp } - V_{tp}$<br>$V_{out} > V_{in} -V_{tp}$ | $V_{gsp} < V_{tp}$<br>$V_{in} < V_{DD} + V_{tp}$<br>$V_{dsp} < V_{gsp} - V_{tp}$<br>$V_{out} < V_{in} - V_{tp}$ |
## I-V Characteristics

Make pMOS wider than nMOS such that $\beta_n = \beta_p$

![[Pasted image 20250409112051.png]]

### Current vs. $V_{out}$, $V_{in}$

![[Pasted image 20250409112312.png]]

### Load Line Analysis

For a given $V_{in}$:
- Plot $I_{dsn}, I_{dsp}$ vs. $V_{out}$
- $V_{out}$ must be where the currents are equal

![[Pasted image 20250409112414.png | center]]

### DC Transfer Curve

Transcribe points onto $V_{in}$ vs. $V_{out}$ plot

![[Pasted image 20250409112756.png | center]]

## Operating Regions


| Region | nMOS       | pMOS       |
| ------ | ---------- | ---------- |
| A      | Cutoff     | Linear     |
| B      | Saturation | Linear     |
| C      | Saturation | Saturation |
| D      | Linear     | Saturation |
| E      | Linear     | Cutoff     |
## Beta Ratio

If $\beta_p / \beta_n \ne 1$, it’s witching point will move from $V_{DD}/2$
- Called a *skewed gate*
- Other gates: collapse into equivalent inverter

![[Pasted image 20250409113604.png | center]]

## Noise Margins

- Closely related to the DC voltage characteristics
- This parameter allows you to determine the allowable noise voltage on the inpu of a gate so taht the ouptut will not be corrupted

```ad-important
Noise margin (or noise immunity) uses two parameter: the *low* noise margin, $NM_L$ and the *high* noise margin, $NM_H$
```

$$NM_L = V_{IL}-V_{OL}$$
$$NM_H=V_{OH}-V_{IH}$$

![[Pasted image 20250409114021.png | center]]


To maximize noise margins, select logic levels at the unity gain point of DC transfer characteristic

![[Pasted image 20250409114536.png | center]]






