Date: 15th November 2024
Date Modified: 15th November 2024
File Folder: Week 12
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Reconfigurable Logic Barriers

Used to split a circuit into two parts
- Inserts logic barrier so that every path coming from input must go through a barrier to go to the output
- Different types of gates, use lookup tables, etc.
- These barriers need a key to configure the correct paths to make the circuit functional
- On a wrong key, the barrier will go the wrong path configuration and would make the circuit not work correctly.

![[Pasted image 20241115140436.png]]

Splits the circuit’s functionality into $F_{fixed}$ and $F{reconfig}$

$F_{fixed}$ is a physical circuit with reconfigurable logic inserted and is sent ot the foundry to be fabricated

$F_{reconfig}$ refers to the locations of the insert reconfigurable logic which only the IP owner knows. With knowledge of the location and logic barriers, the IP owner can generate the key to activate chips.

```ad-warning
NOT *physically* split into two parts, its functionality is, meaning part of the circuit's funcitonality if fixed and the other part will change according to the key given reconfigurable logic.
```

## Public Key Cryptography for Logic Barriers

All chips are identical and contain logic barriers on the same location, therefore all require the same key.

LB uses a PUF or TRNG to generate random public and private keys to make each key unique.

## Partitioning of Design

![[Pasted image 20241115141122.png]]

## Logic Barriers Analysis

**Effective Against Cloned ICs**: Chips are only functional if correct key is entered which only IP Owner can provide

**Ineffective Against Over-Produced, Defective, and Out-Of-Spec ICs**

*Disadvantages*: Look up tables require significant area overhead - 5x more than using XOR gates, and has timing overhead

# Testing

## Testing as a Challenge

```ad-important
Most techniques do not take into account the role "test" plays in the decision making process
```

In the modern day:
1. Chipo designer provides the foundry and assembly with their chip design and all the test patterns and responses needed to test the chip.
2. After this, it is up to the foundry and assembly to fabricate and test the chips.
3. An untrusted foundry can easily overproduce chips without knowledge of the designer, it can also mark defective and out-of-spec chips as good chips to increase yield, or send those defective chips to the market to make up for a loss due to low yield.

## Secure Split-Test

Aims to add more layer of communication between foundry and IP Owner.
- IP owner is placed into the testing and verification process of fabricated chips so that the IP owner will know which chips have passed and which have failed.
- Makes sure that the IP owner will know exactly how many chips have passed or failed the test
- Only chips that IP Owner has deemed functional will be given a functional key.

![[Pasted image 20241115141557.png]]

![[Pasted image 20241115141739.png]]

```ad-important
Desinged to make all overproduce, defective, and out-of-spec chips no funcitonal. Thus, even if these chips are sent to the market, they will fail *as soon as* they are sued for the first time because they will not fucniton correclty at all. Avoids chips failing after years of use in critical applications
```

### XOR Mask

Three-input XOR logic added to non-critical paths.

![[Pasted image 20241115142557.png]]

### Analysis

Effective against overproduced, cloned, and defective ICs. 

```ad-important
Can even prvent out-of-spec ICs if you add more sensors!
```

# Remote Activation of ICs Through FSM Modification

Use PUFs or TRNGs to activate ICs *without* the need of any encryption logic.
- Correct transitions give functional output

![[Pasted image 20241115142842.png]]

![[Pasted image 20241115143008.png]]

## Boosted FSM (BFSM)

On startup, inputs cause chip to go to one of the added states
- IP owner is the only one with knowledge of the FSM
- Only IP Owner knows the right sequence to bring FSM back to functional states.

![[Pasted image 20241115143107.png]]

## Remote Activation of ICs

- Redundant states are added
- Far less states needed than BFSM
- PUF response will send FSM to one of redundant stats.

![[Pasted image 20241115143344.png]]

```ad-warning
title: Challenge
PUF is still not reliable yet
```

## RUB: Random Unique Block

Must be stable, but not change over time. 
- PUF (RUB) response is sent to IP Owner to generate key
- Key is then used to send FSM to correct state

![[Pasted image 20241115143454.png]]

## Differences

| *Feature*                | Boosted FSM                    | Remote Activation FSM             |
| ------------------------ | ------------------------------ | --------------------------------- |
| **Activation Method**    | Internal key or seuqence       | External remote key or signal     |
| **Focus**                | Enhancing FSM complexity       | Enabling remote control           |
| **Dependence**           | Depends on an internal FSM key | Depends on external communicaiton |
| **Security Application** | Prevents reverse engineering   | Ensures supply chain control      |
| **Common Use**           | Cloning Prevention             | Supply Chain Security             |

## Analysis

- BFSM requires many additional FSM states
- Remote activation only uses a few redundant states
- Both use PUF which is affected by age, temperature noise, etc.
- Both effective against cloned ICs, but not against defective, overproduced, or out-of-spec ICs

