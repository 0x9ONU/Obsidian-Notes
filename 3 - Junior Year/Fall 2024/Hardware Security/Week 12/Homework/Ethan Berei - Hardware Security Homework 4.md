Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Homework

## Problem 1

```ad-question
Explain the relationship between testability and security.
```

When it comes to hardware devices, the relationship between testability and security is often led with contradictions. Whenever an avenue is provided to improve the testing experience of an IC, 

## Problem 2

```ad-question
List several countermeasures against JTAG hacks and explain in detail one of them.
```

To protect against JTAG exploits, researchers and designers have found many ways to protect against the various attacks created to exploit the test path. These countermeasures include: Buffers/Repeaters, Star Connections, Encryption/Authentication using PUFs or public keys, shadow chains in dynamically obfuscated infrastructure, defusing scan-related pins, and test mode protection. Specifically, the most interesting form of protection is using encryption and authentication. Typically, this type of protection would not be possible in terms of cost since it needs to have a lot of overhead to both encrypt and decrypt keys. However, by using a PUF or randomly-burned fuses, a third-party tester is able to provide the module with a challenge. This challenge is then hashed and returned to the tester with a unique value. If the response hash matches the expected hash, the tester is legitimate and it will allow the use of the JTAG port on the device. Otherwise, it will deny access and remain dormant for the rest of its life.