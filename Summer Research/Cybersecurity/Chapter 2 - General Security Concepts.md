Date: 14th June 2023
Date Modified: 14th June 2023
File Folder: Cybersecurity
#cybersecurity

# Basic Security Terminology

How the term **hacking** in media today is closer to a *cracker*:
- Refers to individuals who attempt to gain unauthorized access to computer systems or networks.

```ad-note
A term related to this definition is **phreaking**:
- "hacking" of the systems and computers used by a telephone company to operate its telephone network
```

## Security Basics

*Computer Security* is a term that has many meanings and related terms:
- The methods used to ensure that a system is secure

*Network security* - The protection of the multiple computers and other devices that are connected together
- Created due to today's computer systems almost always being connected to a network with other devices

*Information Security* and *Information Assurance* - Focuses on the security process on the data that is processed by them
- Specifically with Assurance - Wants to keep the availability of the systems and information when needed.
- *Cybersecurity* -  The common overview word to describe this field

**COMSEC** aka *communications security* - Deals with the security of telecommunication systems

```ad-note
As cybersecurity has become a regular headline due to the various reports of data breaches, the general public has become more aware of its dependence on computer networks
```ad-example
The following terms have gone mainstream:
- Hacking
- Viruses
- TCP/IP
- Encryption
- Firewalls
```

Computer and networks security has become much more important as they have become part of nearly every aspect of our lives

### The "CIAAN" of Security

```ad-summary
title: "C" - Confidentiality
color: 240, 120, 240
Ensure that only those individuals who have the authority to view a piece of information may do so
- A non-authorized individual should never be able to view data they are not allowed to access
```

```ad-summary
title: "I" - Integrity
color: 240, 240, 240
The generation and modification of data
- Only those who are authorized should be allowed to create, change, or delete information
```

```ad-summary
title: "A" - Availability
color: 170, 100, 170
Ensure that data, or the system itself, is available for use whent he authorized user wants it
```

```ad-summary
title: "A" - Authentication
color: 75, 75, 75
Attempts to ensure that an individual is who they claim to be
```

```ad-summary
title: "N" - Nonrepudiation
color: 20, 50, 200
The ability to verify that a emssage has been sent and received and that the sender can be indentified and verified
```

### The Fortress Model

The original model of computer security:
- Keep the bad out, allow in the good
- Build a series of defenses and your system can be secure
- A binary yes-or-no answer was expected when someone asked if a system is secure or not

```ad-warning
This model is not realistic today as:
- It has been replaced by a term called **endpoint security**
	- securing all of the endpoints in a network from threats
- Cannot be used as a only line of defense method; however:
```ad-important
Endpoint security is still a valuable component of modern security programs
```

### The Operational Model of Computer Security

For a long time, the focus on security was on *prevention*:
- If the network was prevented from authorization from unauthorized sources, it was assumed that security was achieved
- **Protection** was then equated with *prevention*

```ad-warning
This premise is true, but it fails to recognize reality once again:
- Someone will always find a way around safeguards
- If they make it around the safeguards, the system would be *unprotected* on the inside.
```ad-important
- **MULTIPLE PROTECTION MEASURES ARE NEEDED BECAUSE OF THIS**
	- Multiple prevention techniques
	- Alerts when prevetnion has failed (Detection)
	- A way to address the problem (Response)
- These three measures combine into the following equation: $$Protection = Prevention + (Detection + Response)$$
```

### Time-Based Security

Helps us understand the relationship between prevention, detection, and response
- Created by Winn Schwartau in 1998 
- Based around how safes are rated based on how long they will resist penetration

```ad-important
The amoutn of tiem offered by a protection device, $P_t$, should be greater than the time it takes to detect the attack, $D_t$, plus the reaction time of the organization, $R_t$:
$$P_t > D_t + R_t$$
```

```ad-note
His paper outlines how computer security is done today:
- Threat Intelligence
- Kill Chains
- Incident Response
```

### Cybersecurity Framework Model

Provides a common taxonomy and mechanism to assist in aligning management practices with existing standards, guidelines, and practices
- Created in 2013 by the National Institute of Science and Technology (NIST)
- Created the *Framework for Improving Critical Infrastructure Cybersecurity*
- Adopted on a voluntary system

Complements and enhances risk management efforts through:
1. Determining the current cybersecurity posture
2. Documenting the desired target state with respect to cybersecurity
3. Determining and prioritizing improvement and corrective actions
4. Measuring and monitoring progress toward goals
5. Creating a communication mechanism for coordination among stakeholders

```ad-important
The five core functions of the framework:
1. Identify
	1. Actions before the incident
2. Protect
	1. Actions before the incident
3. Detect
	1. Associated with intrusion detection
	2. The beginning of an ncident response
4. Respond
	1. Actions taken place during the post-incident response
5. Recover
	1. Actions taken during the post-incident reponse
```

![[Pasted image 20230614105320.png]]

### Active Defense Model

Hunters intruders inside the enterprise
- Contrasts with "static" defenses that are enacted to act as barriers 
- Capitalizes on the elements of the operation model and the time-based model
- Static defenses are not sufficient and intruders will inevitably get into an enterprise

Built around the actions necessary to actively seek out attackers that make it past defenses
- Hunters use their knowledge of systems to find abnormal behavior 
- Chase the start of these abnormalities to the where the intruder is
- Actively closes the holes they used to gain entry

## Security Tenets

The three operation tenets found in secure deployments are:
- Session Management
- Exception Management
- Configuration Management

### Session Management

The set of activities employed to establish a communication channel between two parties to authenticate once and have subsequent activities happen by the user 
- Used to allow future activity without renewed authentication
- Web applications use this to preserve the state and user information between different parts of the website

```ad-note
Sessions are typically idnetified by an ID that is known by both sides of the conversation and used ask  a token for future identification
```

Session management includes management at each step of the way:
- Establishment
- During use
- Completion

These sessions should offer the level of protection should match with the level of security initially established through the session ID

### Exception Management

The invocation of conditions that fall outside the normal sequence of operation
- Exceptions happen when there are changes to normal processing and are needed to be managed
- Can happen in error causes locally or in follow-on processes in a system

```ad-note
Exception management is **Different** from *exception handling* that is handled during software development
```

The system must handle exceptions regardless of their origin:
- person
- process
- technology

```ad-important
Either the system must handle the condition and recover *OR* it must fail and be recovered by a separate action
```

Exception management in a system makes it more resilient as it can help them hop back from failure


### Configuration Management

The proper configuration and provisioning of all the components in a system
- At the heart of the proper operation of IT systems
	- Groups of elements that work together to achieve a desired resultant process

## Security Approaches

An organization can take multiple approaches to address the protection of a network:
- Either ignore security issues
- Provide host security
- Provide network-level security
- Provide a combination of the latter two.
	- Both have prevention as well as detection and response components

```ad-note
If a host chooses to avoid security issues, it only uses the minimal amount of security that comes "out-of-the-box" witht heh servers and devices they have.
- An actual protected network needs to configure these built-in measures as well as provide additional measures
```

### Host Security

Takes a granular view of security by focusing on protecting each computer and device individually
- Each computer relies on itself for protection
- Each host system may run a different type or version of operating system that will need a different security configuration

```ad-warning
Use only host security can lead to a high probability of overlooking vulnerabilities
```

```ad-important
Host security is important, but should not stop there and is complementary with network security
- It helps further prevent any vulnerabilities within a host system even with host security
```

### Network Security

An emphasis is applied on controlling access to internal computers form external entities

```ad-example
Can be accomplished thorugh hardware or software:
- Routers
- Firewalls
- Authentication hardware and software
- Encyption
- Intrusion dectcion systems (IDSs)
```

```ad-note
Not two networks' layouts will be the same, thus there are many different ways in which they can be protected and configured
```

## Security Principles

Jerome Saltzer and Michael Schroeder published a paper on the design principles for a secure computer system called "The Protection of Information in Computer Systems":
- Published in the mid-1970s
- Has **eight design principles** that that are useful in secure system deign and operation
- Combined with **five additional principles**, it outlines the field up to this day

### Least Privilege

A subject should have only the necessary rights and privileges to perform its task, **with no additional permissions**
- This limits the amount of harm that can be caused and limits the organization's exposure to damage.
- Helps an organization protect its most sensitive resources and helps ensure that whoever is interacting with these resources has a valid reason to do so.

```ad-note
Trust relationships should **never** be implemented in a way that everyone trusts each other because it is easier
- A implementer should have full understanding of what the relationship does
- Should question what exactly will be shared with each other
```

Also deals with what applications are allowed to run based on the user level

```ad-example
A standard user will have only access to surface level programs like Microsoft Word, but an administrator will **also** have access to diagnostic programs that ened accesst o mroe sensitive system files. 
- However, a program that uses backup software should further be exculsive to a backup operator
```

```ad-important
A program should only execute int eh security context that is needed for that program to perform its duties successfully
```

```ad-warning
Providing a single admin account that has access to everything is easy, but is also dangerous if someone gets into it, causing more damage
```

### Separation Privilege

The protection mechanism should be constructed so that it uses *more than one piece of information* to make access decisions

This principle *on the people side* of the security function results in the **separation of duties**
- For any given task, more than one individual needs to be involved
- Each task is broken into different duties which needs to be accomplished by a different individual for each task

```ad-warning
The cost required to accomplish the task in both time and money increases as more individuals need to spend a longer combined total of time on a project
- If one individual experiences a delay, another task can be halted
```

### Fail-Safe Defaults








