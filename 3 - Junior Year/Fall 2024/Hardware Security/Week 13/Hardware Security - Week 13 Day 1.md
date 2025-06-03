Date: 18th November 2024
Date Modified: 18th November 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Presentation #2

```ad-summary
Based around **Hardware Metering**, which helps to unlock chips and prevent overproduction, recycling, etc.
```

```mermaid
flowchart TD
A[(Unlocking Mechanism)]--> B(Adaptive Inverters)
B-->C(2 Input XOR Gates)
B-->D(3-Input XOR Gates)
A-->E(Programmable Logic Barriers)
A-->F(State Machines)
F-->G(Controller)
F-->H(Datapath)
G-->I(Obsfucated SM)
G-->J(Redundent SM)
```

```mermaid
flowchart TD
H[(Obfuscated Vs. Redundant)]-->A
H-->F
A(Obfuscated)-->B(Links)
B-->C(Obs & Main)
C-->E(What set of Events will take you from Obs to Main)
F(Redudant)-->G(The Secret is the Initial State!)
F-->I(PUF XOR Key = Initial State)
```

```mermaid
flowchart TD
A[(How to Share the Key?)]-->B(Double Public Key Encryption)
B-->C(RSA)
B-->D(All chips have the same unlcoking key: m)
```

**Chip**: $B$
- Public ($e_B, n_B$)
- Private ($d_B, n_B$)

**IP**: $A$
- Public: $(e_A, n_A)$
- Private $(d_A, n_A)$

*IP Side*
$$c_1 = m^{d_A}\mod n_A$$
$$c_2 = c_1^{e_B} \mod n_B$$

*Chip Side*

$$c_1 = c_2^{d_B} \mod n_B$$
$$m = c_1^{e_A}\mod n_A$$

