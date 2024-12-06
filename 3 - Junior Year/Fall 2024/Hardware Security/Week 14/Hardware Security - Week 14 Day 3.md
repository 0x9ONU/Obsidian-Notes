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
- 

**Test Point Creation**
- 

**Wire Bonding**
- 


