Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Homework

## Problem 1

```ad-question
Explain the relationship between testability and security.
```

When it comes to hardware devices, the relationship between testability and security is often led with contradictions. Whenever an avenue is provided to improve the testing experience of an IC, it makes new attack surfaces on the IC and allows more parts of the chip to be exploited. For example, the JTAG allows for inter-circuit testing without the need of physical probes and makes it much easier to test a chip fast and efficiently. It also typically allows parts of a chip to be tested separately and together, allowing for a streamlined process to make sure an IC works up to specifications. However, it leaves the device open to many attacks that are specifically designed to exploit the IC. Between sniffing, modifying, and controlling the various signals going into the device, a bad actor may be able to gain information or leak sensitive information from the device that otherwise would not be available. The balance between testability and security must be considered when it comes to designing SoCs or other devices.

## Problem 2

```ad-question
List several countermeasures against JTAG hacks and explain in detail one of them.
```

To protect against JTAG exploits, researchers and designers have found many ways to protect against the various attacks created to exploit the test path. These countermeasures include: Buffers/Repeaters, Star Connections, Encryption/Authentication using PUFs or public keys, shadow chains in dynamically obfuscated infrastructure, defusing scan-related pins, and test mode protection. Specifically, the most interesting form of protection is using encryption and authentication. Typically, this type of protection would not be possible in terms of cost since it needs to have a lot of overhead to both encrypt and decrypt keys. However, by using a PUF or randomly-burned fuses, a third-party tester is able to provide the module with a challenge. This challenge is then hashed and returned to the tester with a unique value. If the response hash matches the expected hash, the tester is legitimate and it will allow the use of the JTAG port on the device. Otherwise, it will deny access and remain dormant for the rest of its life.