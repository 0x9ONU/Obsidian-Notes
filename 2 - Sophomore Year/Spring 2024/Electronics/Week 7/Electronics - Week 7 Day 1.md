Date: 6th March 2024
Date Modified: 6th March 2024
File Folder: Week 7
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Semiconductors

```

# Intrinsic Semiconductor

```ad-summary
title: Definition
Semiconductor are material whose resistance can be varied over a wide range by adding controlled amounts of impurity atoms, which called **doping**.
```

```ad-note
Intrinsic semiconductors are pure, without doping.
```

**Silicon** is the most common semiconductor today. It has 4 electrons in its outermost shell, which form covalent bonds to form a crystal:

![[Electronics - Week 7 Day 1 2024-03-06 13.05.44.excalidraw]] 

```ad-note
At $300 K = 27 \degree C$
```

![[Electronics - Week 7 Day 1 2024-03-06 13.10.16.excalidraw]]

Some of the bonds break, which allows electrons to move to other bonds, creating a flow of electrons aka conductivity.

$$P = number \space of \space free \space holes$$
$$n = number \space of \space free \space electrons$$
$$P=n \space (pure)$$

### Intrinsic Carrier Concentration ($n_i$)

$$n_i = BT^{\frac{3}{2}}e^{-\frac{Eg}{2KT}}\approx 1.5 * 10^{10}/cm^3 \space at \space 300 K$$

$$B=7.3*10^{-15}$$
$$T = Temperature \space (in \space K)$$
$$E = 1.12$$
$$K = 8.62*10^{-5}$$

**For pure silicon at room temperature**
$$n_i = n = p$$
$$p*n=n^2_i$$
#### Example

```ad-question
Calculate the vlaue of $n_i$ for silicon at room temperature ($T \approxeq 300 K$)
```

$$n_i =BT^{\frac{3}{2}}e^{-\frac{Eg}{2KT}}$$
$$n_i = (7.3*10^{-15}(300)^\frac{3}{2}e^{-1.12(2*8.62*10^{-5}*300)}$$
$$n_i = 1.5 * 10^{10} / cm^3$$

```ad-note
This number might seem large, but it is still not a great conductor
```ad-example
If a crystal has $5*10^{22} \space atoms \space /cm^3$, there is only about $1$ in about $5*10^{12}$ atoms
```

# Doped Semiconductors

```ad-summary
title: Definition
Semi conductors cna be doped with different materials to add more electrons or holes.
```

## N-Type

![[Electronics - Week 7 Day 1 2024-03-06 13.21.14.excalidraw]]

Donor atoms have 5 electrons in their outermost shell, so they can be sued to "donate" an extra electron.
- Since the extra electron is not part of a covalent bond, very little energy is needed to free it so it can conduct current

```ad-note
Most popular impurities are Phosphorous or Arsenic
```

## P-Type

![[Electronics - Week 7 Day 1 2024-03-06 13.24.44.excalidraw]]

Acceptor atoms have 3 electrons in their outermost shell, so they can be added to "accept" an electron, which creates a hole.
- Very little energy is needed to free this extra hole so that it can conduct current.

## Example

```ad-question
Consider an n-type silicon for which the dopant concentration $N_D = 10^{17} / cm^3$. Find the electorn and hole concentrations at $T=300k$
```

**Concentration of the Majority Electrons**:

$$n_n = n_i + n_D$$

```ad-note
Since typically $n_D >>> n_i$, the concentration of electrons can be considered purely by doping:
$$n_n \approxeq n_D$$
```

$$n_n = 10^{17} / cm^3$$

**Concentration of Holes

$$n_i^2=pn$$
$$p = \frac{n_i^2}{n}$$
$$p \approxeq \frac{n_i^2}{n_D}$$
$$\approxeq \frac{{1.5*10^{10}}^2}{10^{17}}$$
$$p_n \approxeq 2.25 * 10^3 /cm^3$$

# Exercise

```ad-question
For a silicon crystal with phosphorus dopant concentration of $10^{17} / cm^3$. Find the electron and hole concentration at $T = 300 K$. is the result $n$ type or $p$ type silicon?
```

Because the silicon crystal is doped with phosphorus, it is an **n-type** silicon.

**Electron Concentration**

$$n_n \approxeq n_D$$
$$n_n = 10^{17} / cm^3$$

**Hole Concentration**

$$p \approxeq \frac{n_i}{n_D}$$
$$\approxeq  \frac{(1.5*10^{10})^2}{(10^{17})}$$
$$p_n \approxeq 2.25 * 10^3 / cm^3$$




