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

## Basic Static Analysis

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

## Basic Dynamic Analysis

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

### Sandboxing

An environment in which to run anything you don't trust
- Commonly used by dynamic analysis in order to not put your system and network at risk.
- Does not infect or damage the host system

```ad-note
WIll automate most of the basic adynamic analysis process
```

