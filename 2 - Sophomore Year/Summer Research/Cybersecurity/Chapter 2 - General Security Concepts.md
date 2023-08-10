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

When something fails, it should do so to a safe state.
- Created as the Internet can be less friendly, so less than friendly methods are needed to protect itself for security

**Default/Implicit Deny** - **Deny access by default** and only grant access when explicit permission exists

```ad-note
The network administrators make a set of rules to determine whether or not to allow access.
- If a certain situation is not covered by the admin, it deny the access by defualt
```

On the other hand, an alternative allows access *unless a specific rule forbids it*

```ad-example
Two ways to make programs that monitor and block access to certian websites
- Provide a list of specific sites that a user is ont allowed to access (alternative approach)
- Block all access to sites that are not specifically identified as authorized (implicit deny approach)
```

### Economy of mechanism

**Always** use simple solutions when possible!
- A complex solution has many more places to fail
- A simpler solution will be robust and less likely to fail in practice

```ad-important
Always eliminate or disable all nonessential services or protocols
- the less services running, the less possible vulnerabilities will be on a system
```

The essential services are found based on what a computer system or network is being used for and only activate services and ports as needed.

```ad-warning
Finding the pervfect balance between functionality and security is difficult to get right
```

### Complete Mediation

The concept that each and every request should be **verified** AND ensuring that *all operations* go through the protection mechanism:
- Checks all requests for permission at any level
- All processes, including exceptions and out-of-band requests, should be covered by the protection and checked regardless of what happens

```ad-note
Caching permiissions for subsequent use can increase performance, BUT it opens the door to permission errors
- If a permission chagne is subsequent to the first use, the change would not be applied past the original check
```

### Open Design

The protection of an object should *not* rely upon secrecy of the protection mechanism itself
- Hiding the protection measure often ultimately fails
- This does not exclude the use of secrecy, **but the mechanism should be strong secret or not!** 

**Security Through Obscurity** - security can be effective if the environment and protection mechanisms are confusing or thought to be not generally known
- This idea goes around the fact that if it is out of sight, it is out of mind
- HOWEVER, it does not provide **actual protection** to the object
- It requires a little more effort to complete a task
- Does **NOT** prevent anyone from eventually succeeding

```ad-example
- Move a service form its default port to a different port so that others will nto know how to access it as easily
- Firewall might hide specific information about the internal network
```

```ad-important
Security through obscurity is considered a bad approach if it is **the only approach taken for secruity**
- Changing the default port of a service as well as using a firewall is way better than just changing the port number
```

### Least Common mechanism

Mechanisms used to access resources should be dedicated and not shared. 
- Shared mechanisms allows for potential crossover between channels
- A separate modulo should be employed for each similar service regardless of how close they are in scope

```ad-example
 Common forms of least common mechanism
- *Sandboxing*
	- Separting the operations of an aplciaiton fromt eh rest of the operating systems
- virtual machines
- Instantiating shard libraries
	separate instantiation of local classes for separate but equal coding
```

```ad-important
This provides isolation between processes so information cannot flwo between separate users unless specifically designed to do so
```

### Psychological Acceptability

The users' acceptance of security measures:
- Also known as *least astonishment*
- A security measure should not impede on the user
	- The user may try to bypass the security measure in order to have better performance on their device

```ad-note
Because of this, security professionals should be aware of the concept of balancing technical issues and their professional responsiblities with how the security controls will be viewed by workers int he context of *their* work responsibilities
```

### Defense in Depth/Layered Security

Use of multiple, different defense mechanisms with a goal of improving the defensive response to an attack:
- Even if a single layer of security is not 100 percent effective, the use of two or more makes it more and more difficult for an attacker

```ad-example
A bank has mutliple layers of security for the money stored within:
- Vault
- Security Guards
- Cameras
- The vault being difficult to get to
- **Access Control**
	- ensres that the people entering the vault have to be given prior authorization
- The systems are connected directly to the police station if one defense is broken
```

Every network should utilize multiple different protection mechanism, so one is not solely relied on, AND **MUST** work together and not step on each other's shoes.

```ad-example
color: 0, 255, 255
The multiple security mechanisms might include some or all of these protections:
- routers
- firewalls
- network segemtns
- IDSs
- encryption
- authenticatio software
- physical security
- traffic control
```

```ad-note
A firewall that encounters encrypted network traffic that uses Secure Sockets Layer (SSL) or Transport Layer Security (TLS), it may have a difficult time reading the payload information of each packet
```

![[Pasted image 20230614141639.png]]

Layered Protection is often described from the top down, with more general types being at the top and more specialized and specific measures
- Each layer digs deeper into the packet and looks for specific items

![[Pasted image 20230614141912.png]]

### Diversity of Defense

Makes different layers of security dissimilar 
- Even if the attackers know how to get through a system that comprises one layer, they may not know how to get through a different type of layer that employs a different security system

```ad-example
An environment may have two firewalls that has different purposes:
- Internet Firewall
	- Placed on the very outer part of the network
	- May make sure that no FTP, SNMP, or Telnet traffic enters the network
- Demilitarized Zone Firewall
	- Placed between the outer part of the network and the inner part
	- May not allow SSl or SSH through and may interrogate SMTP and HTTP traffic
```

### Encapsulation

When a higher-level protocol is used to carry a lower protocol, the lower protocol is encapsulated in the data portion of the higher protocol.
- Allows separate protocols to work with each other and without interference 

### Isolation

Separating items so that they cannot interfere with each other
- Common on both the hardware and software level
- Used to prevent interference between the separate processes

```ad-example
color: 255, 255, 0
- Confinement of a program in a sandbox
- Virtual Machines
- System call interposition
- Software fault isolation
```

### Trust Relationships

**Trust** - An understanding of how a party will react to a given stimulus
- If X happens, what will the party do in response.
- Determines whether or not to share resources with another user
- The amount of access or set of resources you grant another user

**Trust boundaries** - Logical boundaries that surrounded specific levels of trust in a system
- Is where changes in trust occur
- Outside input into a program is considered crossing a trust boundary

**Attack Surface** - The boundary around a system where external inputs can interact with a system
- **Important to limit these surfaces as much as possible by limiting the amount of trusting outside information**

```ad-note
Social Engineering is a trust violation as the perpetrator is trying to take advantage of the trust given by people such as a customer service rep
```

Losing control over internal users by giving them too much access than they need can be a trust violation as well.

```ad-warning
Trust can be transitive and shared with other parties, making it even more difficult to track
```

```ad-important
Due to thenature of trust and its high-risk opporutnity, it is often best to maintain a culture of *reluctance of trust*.
```

# Formal Security Models

Choosing a security model will implement the chosen security policy and enforce those characteristics deemed most important by the system designers
- In a model where confidentiality is paramount
	- A model that allows unauthorized individuals to modify or delete data would violate the tenets outlined by the model

```ad-note
In other models, this may not be as important as it may focus more on enforcing the integrity of the data isntead of confidentiality
```

```ad-important
Choosing the model to base teh design on is critical if you want to ensure that the resultant system accurately enforces the security policy desired
```

## Confidentiality Models

**Bell-La-Padula Model**
This model is useful for designing multilevel security systems that implement the hierarchical security scheme similar to the military with *classifications*:
- Publicly Releasable
- Proprietary
- Company Confidential

**Brewer-Nash Model**
Defined by controlling read and write access based on conflict of interest rules
- Known as the Chinese Wall model
- Separates groups through he use of an "impenetrable" wall

### Bell-LaPadula Model

```ad-summary
Employs both mandatory and discretionary access control mechanisms when implementing its two basic security principles
```

**Simple Security Rule** - No subject can read information from an object with a security classification higher than that possessed by the subject itself
- The "no-read-up" rule
- Prevents those with a lower level of clearance from reading a too high level document

**\*-property*** - A subject can write to an object only if the target's security classification is greater than or equal tot he object's security classification. Also does not allow a person with a higher level security clearance edit a file with a lower level clearance
- A user with a Secret clearance can write to a file with a Secret or Top Secret classification, but cannot write to a file with only an Unclassified classification

```ad-note
Since this model is based around confidentiality rather than integrity, sometimes people at lower levels are able to delete documents at higher levels without being able to see them
```

![[Pasted image 20230614153126.png]]

### Brewer-Nash Security Model

Information flows are modeled to prevent information from flowing between subjects and objects when a conflict of interest would occur.
- Different groups within an organization will only need to access certain data based on what they are working on

![[Pasted image 20230614153327.png]]

## Integrity Models

These models were created as some instances the integrity lost from the Bell-LaPadula model was insufficient in some environments

### The Biba Security model

Created by Kenneth Biba in the late 1970s

Utilizes **integrity levels** instead of classifications. 
- The data with a higher integrity level is believed to be more accurate or reliable than data with lower integrity levels
- Indicates the amount of trust that can be placed in information at the different levels

```ad-note
Compared to security levels, they limit the modification of information as opposed to the flow of information.
```

**Low-Water-Mark policy**:
1. It prevents subjects form writing to objects of a higher integrity level 
2. The integrity level of a subject will be lowered if it reads an object of a lower integrity level. 
	1. Prevents contamination
3. A subject can execute a program only if the program's integrity level is equal to or less than the integrity level of the subject

```ad-warning
This policy does prevent unauthorized modifiaction of data, but often pushes the integry levels of all subjects to the lowest level on the system as they view and edit different files
```

**Ring Policy** - Addresses the problem with Low-Water-Mark policy by allowing *any* subject to ready any object without regard to the object's level of integrity and without lowering the subject's integrity level.
- It overrides the 2nd rule of the Low-Water-Mark policy

```ad-note
This can also lead to an issue where data created by a subject after reading data of a lower integrity level could end up havign a higher level of trust placed upon it than it should
```

```ad-important
The Biba Model utilizes **BOTH** parts of the Ring and Low-Water-Mark polices.
- ALSO implements an extra third rule that prevents subjects form executing programs of a higher level.
```

![[Pasted image 20230614155818.png]]

### The Clark-Wilson Security Model

Uses transactions as the basis for its rules and defines two levels of integrity:
- Constrained Data Items (CDIs)
	- subject to integrity controls
	- Critical Information that should not be changed easily
- Unconstrained Data Items (UDIs)
	- *not* subject to integrity controls
	- Information that is less relevant and can be changed easily

Additionally, it utilized two different processes to affect the data:
- Integrity Verification Processes (IVPs)
	- Ensured that CDI data meets integrity constraints
- Transformation Processes (TPs)
	- Changed the state of data from one valid state to another

```ad-important
Users cannot change CDI data directly. Only trusted TPs have limited access to the data.
```

