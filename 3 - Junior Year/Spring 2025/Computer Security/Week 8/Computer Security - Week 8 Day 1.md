Date: 17th March 2025
Date Modified: 17th March 2025
File Folder: Week 8
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Software Security Day 2

## Injection Attacks

```ad-summary
title: Definition
Flaws relating to invalid handling of input data, specifically when program input data can accidentally or deliberately influence the flow of execution of the program.
```

**Most often occurs in scripting languages**
- Encourage reuse of other programs and system utilities where possible to save coding effort
- Often used as Web CGI scripts

```ad-example
*Types of Injection Attacks*:
1. SQL Injection
2. Command Injection
3. Code Injection
```

### Web CGI Injection Example

**User Input**: `lqb`
User Input: `xxx; echo atack success; ls - finger`

![[Pasted image 20250317143524.png]]

### SQL Injection Example

**User Input**: `Bob` → `name = 'Bob'`;
**User Input**: `Bob'; drop table suppliers` → `name = 'Bob'; drop table suppliers;`

![[Pasted image 20250317143935.png]]

### PHP Code Injection Example

![[Pasted image 20250317144626.png]]


