Date: 6th December 2024
Date Modified: 6th December 2024
File Folder: Week 14
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Fault Injection Attacks

```ad-summary
title: Definition
Fault injeciton attakcs intentionally cause errors in a system in order to compromise the security of the system
```

## Non-Invasive 

**Glock Glitching**:
- Burst of double clock speed - timing critical
- Requires knowledge gained from side-channela ttacks
- Prevent flip-flops from latching correct data
- Prevent security fuses from setting properly
- Could cause skipping instructions

**Voltage Glitching**
- Burst of high or low voltage - timing critical
- Requires knowledge gained from side-channel attack
- Force $V_{DD} < V_{TH}$
- Prevent security fuses from setting properly
- Change control logic outputs
- Change memory amplifier outputs

## Semi-Invasive

**Local Heating**:
- High power laser is used to selectively heat small areas
- Hot enough to change $V_{TH}$ but not hot enough to damage
- Trial and error with location is used to determine glitches

**Flash Glitching**:
- Magnified camera flash can cause mass glitching
- Tinfoil masks created to cause selective glitching
- Trial and error and location and timing is used to determine glitches

**Laser Glitching**:
- Infrared laser is used to selectively glitch small areas
- Trial and error with location and timing is sued to determine glitches
- Process is more precise than *Flash Glitching*
## Invasive IC Modification

**Laser Cutting**
- Not completely destructive
- Selective exposure to lower layers
- Selectively disconnect nets

**Test Point Creation**
- Cut test points into IC
- More spots for micro probing below top layer
- See more signals on more nets

**Wire Bonding**
- Use laser cutting to expose net
- Cut test point for bonding target
- Modify circuit paths are needed

![[Pasted image 20241206142341.png]]

## Micro-Probing

**Eavesdropping**
- Listen  to control lines
- Listen to data bus
- Full bypass of all protections

**Signal Injection**
- Insert control signals
- Modify memory contents
- Forcefully bypass security controls

**Fault Injection**
- High voltage between two probes
- Destroy transistors
- Destroy traces

# Countermeasures

## Clock Glitching

1. *Internal oscillator* for bootloader code
2. *Internal oscillator* for secure functions
3. Make security fuses faster than control logic
4. Asynchronous logic

## Voltage Glitching

1. Internal brownout reset
2. Different voltage threshold for security fuses

## IC Modification

1. Metal protection layers on top
2. Critical signals routed on top of important targets
3. Tamper sensors in metal layers

## Micro probing

1. Tamper sensors in metal layers
2. Small transistor size
3. Internal shielding
4. Top level shielding
5. Security through obscurity
6. Glue logic

## Memory Attacks

1. UV Protection
2. Temperature Lockout Sensors
3. Tamper Sensors to Detect Decapsulation
4. Close proximity between security fuses and memory

## Optical Glitching

- Protective metal layers to blcok optical penetration
- Tamper sensor in metal layers
- UV Protection
- IR Protection
- Proximity of security fuses and control logic to memory



