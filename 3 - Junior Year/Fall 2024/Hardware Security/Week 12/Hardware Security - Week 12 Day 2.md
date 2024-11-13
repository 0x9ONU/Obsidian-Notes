Date: 13th November 2024
Date Modified: 13th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Hardware Metering

```ad-summary
title: Definition
Set of security protocols that enable IP owners to achieve post-fabrication contorl over their ICs. Methods attempt to **uniquely tag each chip** to facilitate tracing them
```

Includes:

![[Pasted image 20241113140311.png]]

## Passive Metering

Can be achieved by physically identifying:
- Serial numbers on chips
- Storing unique identifiers (*Nonfunctional Identification*)

Tagging an IC’s functionality: **Functional Identification**

### Nonfunctional Identification

Unique ID is separate form chip’s functionality

```ad-warning
Vulnerable to cloning and/or removal AND overpoduction.
```

#### Reproducible Identifiers

```ad-summary
Unique ID's are stored on the chip package, on die, or in a memory on-chip
```

```ad-example
- Idented serial numbers
- Digitally stored serial numbers
```

**Advantages:**
- Do not depned on randomness
- Easy to track/identify

**Disadvantages**:
- Easy to clone/modify
- Easy to overproduce

![[Pasted image 20241113140744.png]]

#### Unclonable Identifiers

```ad-summary
Uses random process variations in silicon to generate random unique numbers called *fingerprints*.
```

**Advantages**:
- Values cannot be reproduced due to randomness in process variations

**Disadvantages**:
- Foundry could overproduce ICs without knowledge of IP owner

### Functional Metering

```ad-summary
Identifiers linked to chip's internal funcitonal details during synthesis
```

- Each chip’s function gets a unique signature
- Function unchanged form input to output
- Internal transactions unique to each chip
- Challenge in fabricating ICs with different paths form same mask.

### Methods

One method is fabricating chips from same mask and maintaining one programmable path.
- Datapath could be programmed post-silicon
- IP owner prov ides correct input/key combination to foundry to program chip post-silicon

*Drawbacks*:
- Testing such circuitry provides low converage because the actual functionality of the chip is hidden
- It requires the chip to go back to a trusted facility to be activated.

## Active Metering

```ad-summary
Provides active way for designer to enable, control, or disable IC. Active metering requires **communicaiton between design house and foundry**
```

ICs are not fully functional after fabrication. A key or sequence of that only the IP owner can generate is needed to activate

Two types:
- Internal Active
- External Active

### Internal (Integrated)

Hides states and transition in the design that can only be accessed by designer
-  Locks are embedded *within* structure of computation model in hardware design in form of FSM.

#### State Space Obfuscation

```ad-summary
Locking approach where normal behavior is *enabled* only upon the appention of a key.
```

Allows for the obfuscation of state space AND the combinational logic.

![[Pasted image 20241113141245.png]]

![[Pasted image 20241113141340.png]]

##### Challenges

1. How to measure level of obfuscation?
2. How to measure the corresponding security benefit?

![[Pasted image 20241113141454.png]]

#### State Machines Continued

States and transitions for controlling chips are integrated within functional specifications

$K = \log_2(S)$ flip flops needed to implement $S$ states, where adding $S1$ states required $K1 = \log(S1+S)$ flip flops

```ad-important
A few additional flip flops can exponentially increase the number of states.
```

PUF generates random values, it sends device to random FSM state. 
- Only IP owner can find correct requence to set FSM to reset state

![[Pasted image 20241113141707.png]]

```ad-warning
Requires additional logic such as clocks and memory.
```

### External Active Metering

#### EPIC: Ending Piracy of Integrated Circuits

```ad-summary
Allows IP owner to have control over number of chips activated
```

Uses public-key encryption to lock correct functionality of chip

At the gate level, XOR gates are placed on selected non-critical paths.

![[Pasted image 20241113142251.png]]

```ad-important
Reuires that every chp has to be activated with an external key
- Only IP owner cna generate key
- The correct key is encrypted by IP owner and can only be decrypted by the RSA built into the chip
```

![[Pasted image 20241113142415.png]]

Embedded RTL is public Master Key (`MK-Pub`)

XOR gates are controlled by Common Key. Correct Common Key unlocks circuit’s correct functionality. *Needs* $k$ XOR gates for a key of length $k$.

TRNG used to generate Random Chip Keys (RCK) on start up.
- Each chip generates a pair of private and public RCKs which are **burned into programmable fuses**.

Fab sends RCK-public to IP owner.

CK is needed to activate the chips. This is the key that connects to the XOR gates and is the same key for all ICs.

IP owner generates a Master Public Key and a Master Private Key. The public key is embedded into the chip so that it is always there and does not have to be transmitted to the chip.

The chip is also designed with a TRNG to obtain a key unique to each IC.

In the fab, once the chip is ready to be tested, the chip’s TRNG generates a public and private RCK pair. RCK-public is sent to the IP owner while RCK-private is kept on the chip

The IP owner uses `MK-private` and `RCK-public` to encrypt `CK`. Also known as `IK` when encrypted.

`IK` is sent to the chip at the foundry, and is an input ot the RSA decryption lgoic. The built-in RSA uses the RICK-private and MK-public to decrypt IK and obtain CK. CK should be invisible to the foundry and only visible to the inputs of the XOR gates.

If IK is correct, the XOR gates will allow the correct functionality of the circuit.

##### Analysis of EPIC

Effective against cloned ICs

**NOT** effective against overproduced, out-of-spec, and defective ICs.