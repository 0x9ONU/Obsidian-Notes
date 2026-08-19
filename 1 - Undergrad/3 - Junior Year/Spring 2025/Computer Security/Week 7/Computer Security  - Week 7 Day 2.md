Date: 17th March 2025
Date Modified: 17th March 2025
File Folder: Week 7
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Software Security

## Software Error Categories

**Insecure Interaction Between Components
1. Improper neutralization of input during web page generation (*XSS attack*)
2. Improper Neutralization of Special Elements used in an SQL Command (*SQL Injection*)
3. Improper Input Validation
4. Improper Neutralization of Special Elements used in an OS Command (*OS Command Injection*)
5. Cross-Site Request Forgery (CSRF)
6. Unrestricted Upload of File with Dangerous Types (.exe, .sh, etc.)
7. Deserialization of Untrusted Data
8. Improper Neutralization of Special Elements used in a Command (*Command Injection*)
9. Server-Side Request Forgery (SSRF)
10. Improper Restriction of XML External Entity Reference
11. Improper Contorl of Generation of Code (*Code Injection*)

**Risky Resource Management**
1. Out of Bound Write
2. Out of Bounds Read
3. Use after free
4. Improper limitation of a pathname to restricted directory (*Path Traversal*)
5. NULL Pointer Dereference
6. Integer Overflow or Wraparound
7. Improper restriction of operations within the bounds of a memory buffer
8. Concurrent execution using shared resource with improper synchronization (*Race Condition*)
9. Uncontrolled Resource Consumption

**Porous Defenses**
1. Improper Authentication
2. Use of Hard-coded Credentials
3. Missing Authorization
4. Missing Authentication for Critical Function
5. Incorrect Default Permissions

## Security Flaws in Web Applications

**Five Main Insecure Software Code Attacks**:
- Unvalidated Input
- Cross-Site Scripting (XSS)
- Buffer Overflow
- Injection Flaws
- Improper Error Handling

```ad-important
All caused as a conseqeunce of **insuffientient checking and validation** of data and error codes in programs.
```

## Preventing Software Vulnerabilities Through Assumptions and Smart Programming
### Reducing Software Vulnerabilities

*Three* Recommendations:
1. **Stopping Vulnerabilities Before They Occur**: Using improved methods for specifying and building software that does not leave as many vulnerabilities.
2. **Finding Vulnerabilities Before They Can Be Exploited**: Using testing techniques to catch vulnerabilities before malicious actors can.
3. **Reducing the Impact of Vulnerabilities**: Using more resilient architectures can prevent lower-level vulnerabilities from being exploited

### Software Security, Quality and Reliability

```ad-summary
Concerned with the accidental failure of a program as a result of some theoretically random, unanticpated input, system interaction or use of incorrect code
- Focuses on improving strucutred design for testing and eliminating as many bugs as possible
- Concern is not how many bugs, but how often they are triggered.
```

**Software Security**:
- Attacker chooses probability distribution, specifically targeting *bugs* that can result in a failure that can be exploited by the attacker.
- Triggered by inputs that differ dramatically from what is usually expected
- Unlikely to be identified by common testing approaches

```ad-important
Nothign could be *assumed* and all potential errors must be **checked**.
```

### Defensive Programming

```ad-summary
Designing and implementing software so that it continues to funciton even when under attack
```

- Requires attention to all aspects of programming (execution, environment, types of data)
- Can be used to detect erroneous conditions before an attack happens
- Checks all assumptions and handles any possible error states

![[Pasted image 20250317102808.png]]

### Handling Program Input

![[Pasted image 20250317102841.png]]

### Input Size & Buffer Overflow

Programmers often make assumptions about the maximum expected size of input
- Allocated buffer size is not confirmed
- Resulting in buffer overflow

Testing may **not** identify vulnerability as they often fail to include a large enough amount of inputs to trigger an overflow.

```ad-important
Treat all inputs as a *dangerous* input
```

### Interpretation of Program Input Considerations

1. Program input may be binary or text
2. There is an increasing variety of character sets being used
3. Failure to validate may result in an exploitable vulnerability

```ad-example
2014 Hearbleed OpenSSL bug shows how a failure to check the validity of a binary input value can cause problems.
```




