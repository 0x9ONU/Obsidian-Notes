Date: 13th July 2023
Date Modified: 13th July 2023
File Folder: Images
#cybersecurity

# Introduction

```ad-note
When analyzing viruses, the only thing that we have is the binary file.
```

By using different techniques, the puzzle around what an executable does can be revealed like pieces of a puzzle

**Basic Analysis** - Analyzing the malware without actually running it.

**Dynamic Analysis** - Runs the malware to check for suspicious behavior

```ad-important
Both of these forms of analysis can be further broken down into their *basic* and *advanced* variations
```

# Basic Static Analysis

Analyzes malware without looking at any instructions in the binary
- Fast and Direct
- First step
- Gives a generalization whether the file may be malicious or not
- Clues on:
	- Where the malware goes
	- What it does

```ad-note
It utilizes anti-malware with pre-determined hashes to identify specific specimens
```

```ad-warning
Malware authors know about this and will have viruses that either manually or automatically change their signature to hide from static techniques

```ad-note
color: 255, 255, 0
Accomplished through:
- Obfucation
- Packing
- Encryption
```

# Basic Dynamic Analysis

Executes the malware and tracking the artifacts it made on system which include:
- folders
- files
- services
- registry keys

```ad-note
The malware may not actually execute as it needs certain instructions
```

```ad-important
This level of analysis STILL does niot analyze the insturctions in the binary
```

## Sandboxing

An environment in which to run anything you don't trust
- Commonly used by dynamic analysis in order to not put your system and network at risk.
- Does not infect or damage the host system

```ad-note
WIll automate most of the basic adynamic analysis process
- Provides the necessary logs automatically
```

```ad-warning
Will **NOT** identify or cateogrize the malware
- Can also miss some malware specimens depending on the register keys that they need
```

## Virtual Machine

Another option over a sandbox that can be used to detect the same things and needs to have:
- Host-only networking
- disabled shared folders
- clean snapshot to revert to

```ad-warning
Malware can often detect if it is being ran in a VM or not and terminate the program if that is the case to avoid detection through:
- MAC addresses
- Background processes
- Registry keys
- RAM strucutres
- Hardware Parameters
- CPU registers
```

# Advanced Static Analysis

Uses a disassembler to turns the binary into assembly language.
- Analyzes the assembly code for malicious instructions

# Advanced Dynamic Analysis

Runs the malware through a debugger
- Analyzes the RAM and CPU registers as the program executes
- Always for analyzing single instructions one at a time

```ad-warning
When analyzing assembly code, it may be difficult to know what every single line does
- Also, malware authors often put in bogus lines to make it more diffiuclt to decypher 
```

## Rules of Dynamic Analysis

```ad-summary
title: Rule 1
Focus on certian specifics of the binary and look for interesting areas to focus on
```

```ad-summary
color: 234, 234, 100
title: Rule 2
Use different tools and strategies
- DONT spend too much time on one area with the same tool
- Think outside of the box
```

```ad-summary
title: Rule 3
color: 234, 100, 234

Cyberseuciryt and malware alanysis is a cat-and-mouse game
- Anti-analysis is always an issue and makes it difficult to always find a way to analyize the files
```

# Lab Exercise 15.01: Strings

## DLL Table

| DLL Name                   | Usage                                                                                               | Functions/Files to Look For                                    |
| -------------------------- | --------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| **kernel32.dll**           | Memory management, input/output operatrions, Hardware Interrupts                                    | OpenProcess, CreateFileW, WriteFile, FindNextFileW             |
| **user32.dll**             | Creates and controls elements in Windows UI                                                         | SetWidnowTextW, ShowWindow                                     |
| **advapi32.dll**           | Advanced Window 32 API. Supports security, service manager, the registry                            | RegSetValueExW, Software\Microsoft\Widnows\CurrentVersion\Run\ |
| shell32.dll                | Windows shell functions                                                                             | ---                                                            |
| gdi32.dll                  | Controls graphics device interface drawing and output sent to video displays and printers           | ---                                                            |
| urlmon.dill                | Functions that incorporate hyperlinks and other objects into programs.                              | URLDownloadToFile                                              |
| ntdll.dll                  | Functions related to the Windows kernel. Allows programs to hide functionality                      | ---                                                            |
| wsock32.dll and ws2_32.dll | Functions that connect programs and endpoints over a network and allow for networking related tasks | ---                                                            |
| wininet.dll                | Functions for implementing network protocols such as FTP, HTTP, and NTP                             | ---                                                            |

## Strings of Interest

- URLs/FQDNs
- IP addresses
- Messages that may indicate malicious intent
- 