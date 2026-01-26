Date: 22nd January 2026
Date Modified: 22nd January 2026
File Folder: Module 1
#pentesting 

```ad-abstract
title: Today's Topics
collapse: open

# Introduction to Penetration Testing

```

# What, Why When, How, and Who?

```ad-summary
title: Definition
**Penetration Testing**:
- Commonly called "pen testing" or "ethical hacking"
- Authorized secuirty test on targets to discover vulnerabilites
```

```ad-example
- **Targets**: COmputing devices, applciations, physical resources and personnel
- **Vulnerabiliteis**: flaws in software, hardware, operational procedure
```

**Exploit**: Software, data, or commands taking advantage of vulnerabilities to cause unintended behavior in target system
- Ex. Could try to get a higher permission within an operational procedure

**Metaspolitable Virtual Machines**: A Windows or Linux-based virtual machine that has built-in vulnerabilties

**Metaspoitable Framework**: A software that comes with Kali Linux that can be used to test vulnerable machines

## Why Do Security Professionals Pen Test?

To discover vulnerabilities in targets before  a threat actor does
- Vulnerabilities can then be eliminated or mitigated
- Finding and eliminating vulnerabilities improves overall security

*Compliance Regulation*: Enforced by the government or organization you are working for.
- Ex. Defense contractors must follow the DoD’s CCMC protocol.

## When Do Security Professionals Conduct Pen Tests?

1. When a major change in the computing enviornment occurs
2. According to the schedule for *compliance requirements*
	- Payment Card Industry Data Security Standard (PCI DSS)
	- PCI DSS v4.0 Requirement 11
	- “Test security systems and processes regularly”
3. At other strategic times and as necessary, determined by the organization


## How Do Security Professionals Pen Test?

Penetration methodologies:
- Provide a standardized guidance and process to conduct a pen test
- Chosen based on type of target or compliance requirement 

## Who Performs Pen Tests?

**Authorized attackers**:
- Known trusted entity
- Member of organization IT Department
- Outside third party hired to perform test

# Security Models

## CIA Triad - Confidentiality, Integrity, Availability

One of the most well-known concepts and models in cyber security:
1. **Confidentiality**: achieved using technology such as authentication, access control, and encryption
2. **Integrity**: achieved using authentication, access control, and digital signatures
3. **Availaiblity**: objects and services are accessible when required by those authorized.

![[Pasted image 20260126113456.png]]

## DAD Triad: Disclosure, Alteration, Destruction

```ad-note
The opposite of the CIA triad
```

Represents the hacker’s ultimate goals:
1. **Disclosure** of confidential information
2. **Alteration** or corruption of integrity of information
3. **Destruction** or denial of availability of access to resources

![[Pasted image 20260126113837.png]]

## Ethical Hacking Guidelines for Pen Testers

- Background checks for pen testers to ensure no unethical behavior
- Pen testers must:
	1. adhere to specific scope of the engagement
	2. report evidence of criminal activity or breaches immediately
	3. choose and limit tools and use wisely
	4. limit invasiveness to meet the scope of engagement

```ad-important
Confidentiality must always be maintained
```

# Pen-Test Teams and Other Stakeholders

**Team Members**:
1. Red Team: performs the security and pen testing
2. Blue Team: attempts to detect or prevent red team activities
3. Purple Team: data collection, analytics, facilitation of teams

*Other Stakeholders*:
- IT department
- Management
- Legal department

## Red Team

- Consists of the pen-test members
- May include IT department members

Each members often has their own skill:
- Team leaders
- Programmers
- Social engineers
- Network and wireless engineers
- Server and operating system admins

## Blue Team

```ad-warning
May only exist depending on the needs of the pen-test
```

May consist of IT team members or contracted security servies

*Responsibilities*:
- Preparation
- Detection
- Identifiction
- Containment
- Recovery
- Lessons learned
- Implementation

## Purple Team

Observes red and blue teams and guides them to a more effective test

**Understands the “big picture” and provides oversight**
- Gathers results
- Performs analysis
- Reports results

## Other Stakeholders

1. *Management*: Provides authorization and permissions for pen tests
2. *Development*:
	- Guides and oversees tests on custom software and applications
	- May provide attack guidance to red team
3. *Legal*:
	- Creates necessary documents to assure safe pen tests
	- Create legal documents such as NDAs

# Pen-Test Process

![[Pasted image 20260126114727.png]]

## Step 1: Planning and Scope

- Specifies which computers, applications, and network devices are targeted
- Identifies logistics, teams, stakeholders, and expectations
- Defines **roles of engagement (ROE)**

**ROE**: defines the following information
- How is sensitive information?
- How will project updates be communicated?
- Who are the emergency contacts?
- Which targets are in the scope?
- Are target personnel aware of the test activities?
- What should be done if previous compromises are discovered?

## Step 2: Information Gathering and Vulnerability Scanning

Red team goal is finding useful information about the target
- Initial goal is broad discovery and narrowing the focus as the test continues

*Other Goals*:
- Active reconnaissance
- Vulnerability scanning and analysis
- Social engineering

## Step 3: Attacking and Exploiting

Details from the previous phase are used to drive the attacks
- Target configuration and status determine which attacks are used

```ad-example
- Passsword cracking
- SQL injection
- Circumventing secuirty settings
- Physical attacks
- Many other attacks, dependent on information gathered on targets
```

## Step 4: Reporting and Communicating Results

- Information gathered up to this point is organized
- All pen test damage is cleaned up
- Proper reporting and communication

**Report Written with**:
- Vulnerabilities uncovered
- Successful attacks identified
- Fixes and/or remediation steps for vulnerabilities are outlined

