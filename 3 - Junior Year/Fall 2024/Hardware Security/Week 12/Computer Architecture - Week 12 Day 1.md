Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Counterfeit Testing

## Testing Taxonomy

![[Pasted image 20241111140152.png]]

## Detection Method Taxonomy

![[Pasted image 20241111140351.png]]

## Physical Methods

### External Visual Inspection (EVI)

All devices shall be optically examined at a suitable magnification with suitable lighting.
- Performed between 3X to 100X
- Based on the IDEA-STD-1010-A reference

```ad-summary
title: What does it cover?
**Test for Remarking**

**Test for Resurfacing**
```

### X-Ray Fluorescence

XRF Spectroscopy
- Tool for material composition detection
- Can be handheld or a whole lab
- Can be on external surfaces or de-lidded
- Non destructive
- *Sampling Required*

**Lead Finish Examination**
- Examined for remarking and resurfacing, to verify that lead finish/solder ball & column composition of the device matches specification

**Plating Material(s) identification**
- Makes sure that plating and the presence of materials are the same

### Delid Physical Analysis

```ad-summary
title: The Inspection
- Component's internal structure
- The top surface of a microelectronic die
- Metallizaiton traces of a thin-film resistor
```

### Level of Each Inspection Test

| Test                         | Critical Risk | High Risk | Moderate Risk | Low Risk |
| ---------------------------- | ------------- | --------- | ------------- | -------- |
| Optical                      | X             | X         | X             | X        |
| Wire Pull                    | X             | X         | X             |          |
| Die Shear                    | X             | X         |               |          |
| Ball Shear                   | X             | X         |               |          |
| SEM Inspection               | X             |           |               |          |
| Perform EDX                  | X             |           |               |          |
| Inspect Metalization         | X             |           |               |          |
| Glassivation Layer Integrity | X             |           |               |          |
## Electrical Tests

### Automated Test Equipment

Find if the correct specifications are correct
- Speed
- Timing accuracy
- Number of input/output pins

**Limited by:**
- HDL description of test module must be available to test the ICs
- No definite methodology to detect counterfeit ICs

### Recycled Parts: Aging

Try to use the following to test the age of a die:
- Negative bias temperature instability (NBTI)
- Hot carrier injection (HCI)
- Time-dependent dielectric breakdown (TDDB)
- Electromigration

### Parametric Test

DC Tests:
- Contact test
- power consumption test
- leakage test
- output short current test
- output drive current test
- threshold test

AC Tests:
- Propagation delay test
- Setup/hold time test
- Access time test
- Rise and fall time test

### Functional Test

```ad-important
THe most efficient way of verifying the functionality of component.
```

Includes:
- Function Verification of a Component
- Memory Tests
- Microprocessor Tests

### Temperature Cycling/Burn-In

Tests the chip at extreme operating range

Burn-in
- The device is operated at an elevated temperature
- To find infant mortality failures and unexpected failures to assure reliability.
- Very useful as it can easily weed out the commerical grade components are marked as military grade
- Can remove defective components or those components that were not designed to perform over the stressful conditions.

### Structural Tests

At-speed tests
- to detect gross and spot delay defects

Stuck-at Tests

Bridging Tests

# Hardware Metering

```ad-summary
A set of security protocols that enable the design house to achieve post-fabricaiton contorl over their ICs.
```

Provides a way to uniquely fingerprint or tag each chip and/or each chip’s functionality
- Makes it possible to distinguish between the different chips manufactured by the same mask.

## Passive Metering

Provides a way of unique identification of a chip, or for specifically tagging an IC’s functionality so that it can be passively monitored.
- IDs on the package
- IDs sorted in memory
- Unclonable identifiers

## Active Metering

Provides additional methods for designers to enable, control, and disable the device
- Uniquely and unclonably identifies each chip
- Provides an active mechanism to control, monitor, lock, or unlock the ICs after post fabrication.

### IC Enabling by Active Metering

Allows for a design house to lock their high level description
- Fab scans the unique identifier infomraiton out of each IC and sends the contnet to the desing house
- Design house compute the unlocking sequence depending on the cryptographic protocol.
- The designer compute the ECC to correct for any further changes to the unclonable digital identifiers
- The un-locking sequence is sent to the fab for unlocking the ICs

![[Pasted image 20241111144606.png]]

## CDIR (Combating Die/IC Recovery) Sensor

**Contains**:
- Ref. RO and Stressed RO
- Test Mode: Ref RO and Stressed RO are both off
- Funciton Mode: Ref. RO is off while stressed is ON
- Measurement Mode: Both RO are on

![[Pasted image 20241111144742.png]]
