Date: 4th November 2024
Date Modified: 4th November 2024
File Folder: Week 11
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# JTAG Introduction

![[lecture 17(1).pdf]]

# JTAG Exploits

## Sniff TDI/TDO Signals

Insert of an attacker TTAG module. Used to reveal secrets, test vectors, and test responses

A module in the JTAG chain will intercept the data being sent or coming from the victim module. The attack module acts differently to the bypass mode. It seems like the data is bypassing data from TDI to TDO, but it is actually storing the data for the attacker to look at.

![[Pasted image 20241104140911.png]]

## Modify TDI/TDO

Modifies Test Vectors and Test Responses
- Used to fake correct or false tests
- Can either be upstream *or downstream* of victim

![[Pasted image 20241104140951.png]]

## Control TMS and TCK Signals

Attacker needs to be able to overpower the TMS and TCK signals sent by the TAP
- Needs to force TMS and TCK above or below their logic threshold voltages

## Examples

Very common and can be done with little technological equipment and knowledge.

```ad-note
title: List of Equipment
1. Resistors
2. Wire
3. Serial port
4. Female connection
5. Soldering iron
6. Few diodes
```

## Security Options

```ad-summary
title: Options
1. Buffers/Repeaters in the JTAG Chain
2. JTAG system connected in "Star" pattern instead of being chained (Separate TMS and TCK)
3. Encryption/Authentication for JTAG use
	- PUFs
	- 3rd Party Public Key
```

Buffers and star patterns provide minimal security, but make many attacks impossible to do if they are being too cheap
- Prevent the TMS and TCK signals from being tampered with. Although many attacks require that these signals be controlled, this minimal security does not prevent all attacks

### Star Connections

**Central Control Point**: All JTAG devices are connected to a central hub. This setup allows the controller to manage and control access to each device individually, making it easier to monitor and restrict access to sensitive device

**Isolation**: Prevents an attacker form accessing other devices on the JTAG chain by compromising a single device. One device does not lead to the whole device being compromised.

### Buffers

**Signal Integrity and Isolation**: Act as intermediary circuits that maintain signal strength and integrity across longer distances. Good for securing JTAG connections, as weaker signals can introduce noise and make tampering harder to detect.

**Controlled Access**: Enable or disable signals selectively, controlling when and which parts of the JTAG connections are active.

**Tamper Detection and Response**: Can detect signal anomalies that might indicate tampering. It can alert a central controller and disconnect the JTAG interface

### Encryption/Authentication

JTAGs secured by public/private key encryption methods are used to limit the JTAG by permission levels. Increase the overhead of the device and complexity of the JTAG port.

#### Challenge, Response

The tester provides a module with a challenge. The module will then hash the challenge with a unique value inside the module and provide a response.
- Used to determine if the module is legitimate or not.

```ad-note
Requires PUF or randomly burned fuses
```

#### Public/Private Key Authentication

Used to secure a JTAG while reducing the number of keys the JTAG itself has to save.

Uses a third party to sign authentication certificates for updaters or testers of modules.
- Checks authenticity using a single key on the JTAG

```ad-important
The goal is to make sure that any tester or updater that is using the JTAG port is trusted
```

It is possible to use, but it does still have a large area overhead

It is possible because only a single key would have to be stored to decrypt any certificates, but the extra hardware to do the decryption ay add more area overhead than a designer wants.

### User Permissions

Allows for different levels of control through the JTAG port
- May only allow testing for one type of suer and updating to another
- Can be combined with other authentication processes.

Would still requires *some* sort of authentication hardware to be added to the JTAG system.
- Leaves the port open and functional, but limits what can be done through the JTAG port

```ad-warning
Reuqries extra hardware to authetnicate user and set permission level, and to save settings for what each permission level can and cannot do.
```

```ad-example
In memory, a permission level is saved for each module in the JTAG ssytem. When that module is accessed, the saved level is compared to the current permission level.
```

### Removal/Destruction of JTAG

It is the *only* way to guarantee that JTAG exploits cannot be developed. 

It is also difficult to not build chips without JTAG support. Designers can include a BIST routine to check for errors. However, they do not often have enough test coverage and lack the ability to isolate the problem.

Found a way to disable the functionality of the JTAG hardware after it has been used for testing.
- Blows security fuses once the chip has been determined as working.
- Can be used to disable *part* or *all* of the functionality