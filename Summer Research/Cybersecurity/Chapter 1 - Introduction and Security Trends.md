Date: 12th June 2023
Date Modified: 12th June 2023
File Folder: Cybersecurity
#cybersecurity

# The Computer Security Problem

Even though the internet has given rise to many new innovations when it comes to performing tasks over a network at the tips of our fingers, there are bad actors how try to conduct fraud or theft that is much easier in an online environment

## Definition of Computer Security

```ad-note
Difficult to define as there are complexities associated with it
```

Can be closer to be defined as information security:
- The information being protected from unauthorized access or alteration 
- Is still available to authorized individuals when required

Make sure to consider how information dealt with as each one of these layers needs their own protection schemes:
- stored
- processed
- transferred between machines

## Historical Security Incidents

Typically electronic crime can fall into one of two categories:
- The computer was the target
- Incidents in which a computer was used to perpetrate the act

```ad-example
Morris Worm 1988 was one of the first real Internet crime cases
- Most criminal activity before this was getting unauthorized access to a computer system or netowrk that a telephone company or dial-up access companies
```

### The Morris Worm (November 1988)

Released by Robert Morris, a graduate student at Cornell University

It infect nearly 10 percent of all the machines connected tot eh Internet at the time (~6000 machines)

```ad-note
It carried no malicious payload, but caused trouble by continously reinfecting computer systems until they crashed
```

### Citibank and Vladimir Levin (June-October 1994)

Vladimir Levin was able to steal around $10 million in bank transfers from June to October. Only $400,000 was left after they caught him

He allegedly did it by dialing Citibank's cash management system

### Kevin Mitnick (February 1995)

Gained unauthorized access to computer systems that belonged to many different companies using:
- Social engineering
- Sniffers
- Cloned cellular telephones

Was charged with many crimes

### Worcester Airport and "Jester" (March 1997)

The telephone services tot he Federal Aviation Administration control towers and ES were cutoff for 6 hours due to a teenager attacking their telephone network

### The Melissa Virus (March 1999)

One of the first macro-type virus that attached to documents for programs that had macro programming capabilities. 

Infected about a million computers and caused around $80 million in damages

### The Love Letter Virus (May 2000)

Written and released by a Philippine student named Onel de Guzman. 

Spread via e-mail with the subject line "ILOVEYOU", which made it very enticing to click on

Estimated around 45 million machines were infected and cost $10 billion in damages

### The Code Red Worm (2001)

350,000 computers were infected in under 14 hours using a buffer-overflow condition vulnerability in Microsoft's IIS web servers that was patched a month earlier

Cost around $2.5 billion in damages

### The Slammer Worm (2003)

Exploited a buffer-overflow vulnerability in Microsoft SQL Server or SQL Server Desktop Engine machines.
- This weakness was not new and was discovered in patched months earlier in the July of previous year

Infected 120,000 hosts within 24 hours and caused problems in:
- Networks
- Airline Flights
- Elections
- ATMs

At the peak, Slammer infected hosts were generating around 1TB of worm-related traffic **EVERY SECOND**
- It doubled the number of hosts every 8 seconds
- Less than 10 minutes to reach global proportions and infect 90 percent of possible hosts


### Cyberwar? (2007)

Estonia was crippled by a massive DoS cyberattack that hit:
- Infrastructure
- Firms
- Government Offices

### Operation Bot Roast (2007)

The FBI identified over 1 million botnet crime victims and arrested several botnet operators in the process

### Conflicker (2008-2009)

Millions of systems attached to the Internet were infected.
- Did not damage the systems directly past turning off antivirus updates
- However, it created a botnet that could be used to make DoS attacks or forward spam e-mails to millions of users

### U.S. Electric Power Grid (2009)

The Homeland Security Secretary told reporters that both China and Russia attempted to break into the US power grid, map it out, and plant malicious programs that could be used at a later date

### Fiber Cable Cut (2009)

Someone in the San Jose area in California decided to cut in the physical cables that carried signals to many people and caused Internet, cell, and telephone outages for thousands of users


## The Current Threat Environment 

Today, more organized elements of cybercrime have entered the picture along with nation-states:
- Becomes more dangerous and affect more people

The adversaries are trying to perform one of two functions:
- Deny the use of computer systems
- Use the systems for financial gain

### Advanced Persistent Threats

A new breed of attack pattern that can be broken down into 3 words:
- *Advanced*
	- Use of advanced techniques as a vector into a target
- *Persistent*
	- The attacker's goal of establishing a long-term, hidden position on the system
- *Threat*
	- Exploitation of the users' systems

Often backed up by highly resourced adversaries that target specific systems

### GhostNet (2009)

A group of security experts revealed that there was a spy ring that was shown to be spying on over 100 countries' sensitive missions worldwide.

### Operation Aurora (2009)

An APT attack that targeted many US financial and industrial firms including:
- Google
- Adobe
- Yahoo
- Juniper Networks
- Rackspace
- Symantec

Research analysis pointed to the People's Liberation Army of China, who used hundreds of hackers working together to attack victim firms


### Stuxnet, Duqu, and Flame (2009-2012)

All state-sponsored malware

##### Stuxnet

A worm designed to infiltrate the Iranian uranium enrichment program:
- Caused equipment systems to fail or even break equipment entirely
- Targeted a specific Siemens PLC which was responsible for the modification of the uranium centrifuges

##### Duqu

A piece of malware that, like Stuxnet, had the same target but wanted to steal information rather than being destructive:
- Used Command-and-Control servers across the globe to collect elements like keystrokes and system information

##### Flame

Information collection threat that collected:
- Keystrokes
- Screenshots
- Network Traffic
- Skype Calls
- Audio Signals

```ad-note
Flame also had a universal kill switch as well as antivirus evasion
```

Because Stuxnet was open-source, it is impossible to know who is behind Duqu and Flame

### Sony (2011)

LulzSec hacked Sony and had devastating effects on the company:
- 70 million user accounts were stolen
	- Everything but the credit card information was **NOT** encrypted
- Caused an outage that lasted 23 days
- Cost Sony an excess of $170 million

```ad-warning
The biggest issue realted tot he attack was Sony's poor response as it took them more than a week to notify people of the intial attack 
```

### Saudi Aramco (Shamoon, 2012)

Over 30,000 computers were shut down due to a malware attack at an oil firm in Saudi Arabia
- AFfected three out of four machines
- Data wiped machines
- Uploaded sensitive information to Pastebin
- 10 days to fix the problem and go back online

### Data Breaches (2013-Present)

Many different data breaches have been happening in the current security landscape:
- Target had a breach in mid-December 2013 that captured names, addresses, and debit and credit card details of 70 million users
- Home Depot had a breach of 50 million shortly afterwards
- JPMorgan Chase had a breach of 77 million account holders' information
	- Did not lose account numbers this time fortunately
- Sony Pictures Entertainment got breached in 2014, loosing 100 terabytes of data 
	- Assigned to North Korean's APT team called the Lazarus Group
- Yahoo! lost 3 billion users accounts representing 500 million users which included many private details of the customers
	- There evaluation dropped from $4.4 billion to only $400 million after the breach

### Nation-State Hacking (2013-Present)

The concern from large countries attacking each other has become real since firms such as CrowdStrike exposed hacking actors in China, Russia, and other countries

```ad-note 
Attribution for certain hacks is often diffciult and comes down to only small clues like the timelines of command-and-control servers
- This is how Energetic Bear was attributed
```

The Regin platform has been known to be in operation for over a decade and has attacked many different government bodies
- Strong as its stealth, complexity, and ability to hide its command-and-control networks

Sandworm, a Russian hacking group, has been attributed to launching attacks against Ukrainian's electrical grid

NotPetya, another Russian group, did the same to Europe, the US, and many other countries

The US Office of Personal Management lost over 20 millions sensitive files in 2015
- Supposedly to China
- The data included complete background investigations on peoples who had submitted security clearances

The Department of State, the Department of Defense, and the White House had their emails completely compromised by bad hackers
- Included nuclear negotiations in Switzerland between the U.S, its allies, and Iran

## Infrastructure Attacks

In general, the issue of infrastructures controlled by computer systems is that they are vulnerable to attack 

### Ukraine Electric Grid

On December 23, 2015, Ukraine was the target of the first known successful cyberattack against an electric grid that caused:
- Temporary disruption to customers of three energy distribution companies
	- Manual operation of the grid helped the electricity get back faster
- Damaged equipment and operations
	- Took over a year to fully replace

The attack took over 9 months from the initial phishing attack to the shut down
- Attributed to Russia due to it using the BlackEnergy3 malware created by the Sandworm group

### Safety Instrumentation System Attack (TRITON)

A new form of malware that attacked a Saudi Arabian petrochemcial plant:
- Targeted the plant's safety instrumentation systems, which did nothing until something goes wrong and lives and property may be at stake
- Showed that certain groups of people are willing to break property and hurt people through cyberattacks

## Ransomware

```ad-note
Ransomware has been in existence during the mid-to-late 1990s, but did not become relevant until recently
```

Today, it is one of the greatest threats in the cybersecurity world:
- Steals around $1 billion a year in criminal enterprise

Utilizes a hybrid encrypting scheme that locks a victim's computer files until a ransom is paid

### WannaCry

Was an encryption worm that hit Windows systems that had not been patched against a Server Message Block vulnerability in 2017:
- Hit the British Nation Health Service
	- more than 150 hospitals and 70,000 medical devices were affected for over 4 days
- Cost nearly $4 billion in damages 

### NotPetya

Petya was a strain of WannaCry that utilizes some oft he same vulnerabilities that WannaCry:
- Often used the same structures as WannaCry 

NotPetya was *different* as there was **no recovery option** and the user could not pay to get their equipment back:
- Deployed on Ukraine by Sandstorm
- Hit other people in the wild due to it spreading like wildfire

### SolarWinds Attack

In late 2020, FireEye discovered that SolarWinds' product Orion had been completely compromised by an attack:
- Passed to over 18,000 customers including those in departments of the federal government
- Was meant to be a supply chain attack that gave backdoors to these systems

```ad-note
Utilizes AWS cloud hosting to disguise their intrusions as benign netowrk traffic.
```

Utilized other hacking techniques other than malware to get into these hosts' computers that are still being understood today.

# Threats to Security

Organizations now how to face new network threats that they did not have to worry about 50 years ago

These threats can be broken down into multiple categories:
- Outside or Internal Threats
- Level of Experience
	- Script kiddies to elite hackers
- Level of organization
	- Unstructured threats to highly structured threats

## Viruses and Worms

An organization is often exposed to viruses and worms as a result of employees not following certain practices or procedures rather then them writing or releasing them.

```ad-important
*Writing* and *releasing* viruses are **different** ethically. Writing a virus is not considered criminal activity and only becomes illegal when released
```

```ad-note
Viruses and Worms are just two types of threats that fall underneath the *malware* umbrella. 
- Malware is software that has a nefarious nprupose that is designed to cause problems to a person or a system.
```

They are the most common problem faced by organizations because of the thousands that have been created and released.
- A good antivirus software and consistent system patching can eliminate a large portion of these threats.

Viruses and worms are *nondiscriminating threats*
- Released on the Internet in a general fashion and aren't targeted at a specific organization
- Highly visible when released, so they are not good for highly structured attacks

## Intruders

**Hacking** - The act of deliberately accessing computer systems and networks without authorization or exceeding one's authority in the system
- A patient game as the process to gain access to a system takes persistence and dogged determination
- Often does many pre-attack activities to determine enough information to know whether or not the attack will be successful or not.

```ad-summary
###### Unstructured Threats:
- Attacks by a single individual or a small group of attackers
- Conducted over a short period of time
- Do not have large number of individuals
- Have little financial backing
- Accomplished by insiders or outsiders who do ont seek collusion with insiders
```

### Levels of Computer Intruders

```ad-note
title: The Low End: **Script Kiddies**
Individuals who do not have the technical expertise to develop scripts or discover new vulnerabilites, but do have enough comptuer system understanding to utilized scripts that others have made
- Not interested in attacking specific targets
- Want to find any organization that may not have patched a newly discovered vulnerability and exploit it
- The most common type of hacker
```

```ad-note
color: 255, 255, 0
title: The Middle: Script Writers
The individuals who are capable of writing scripts to exploit known vulnerabilites
- Much more technically competent that script kiddies
- Directly cause around 8 to 12 percent of malcious Internet activity
```

```ad-note
title: The top 1%: Elite Hackers
Have the ability to wite scripts as well as **discovering new vulnerabilities**
- Smallest of all the groups
- Responsible for only 1 to 2 percent of intrusive activity
```

![[Pasted image 20230613113259.png]]

## Insiders

These people have the access and knowledge necessary to cause immediate damage to an organization
- More dangerous than outside intruders
- Most security is designed around to stop outside intruders and often cannot detect insiders
- Often have enough access to commit fraud
- Also know about the security systems in place and can avoid detection easier because of this
- Can be done on purpose or on accident
	- An employee might become angry at their employer and want to cause mayhem
	- An employee unknowingly might delete a critical file without realizing their actions

```ad-example
U.S Army soldier Chelsea Manning funneled classifeid documents to WikiLeaks in 2010
- Included over a quarter of a million diplomatic cables
- Was arrested and convicted
- This damage is still on going with international relations today
```

Custodial crews of have physical unescorted access to facilities when no one else is around and can often be insiders.

Contractors and partners might have direct access to computer systems and networks.

```ad-example
Edward Snowden was charged with espionage in 2013
- Released a wide range of data illustrating the technical capabilities of U.S. Intellgience surveillance systems.
- One of the greatest insiders of all time
```

## Criminal Organizations

Due to the amount of financial traffic that was moved to the Internet, criminal organizations have turned to doing their business online, which includes:
- Fraud
- Extortion
- Theft
- Embezzlement
- Forgery

Criminals utilize the following to their advantage over average hackers:
- More money to spend on accomplishing their goals
- Spend extra time accomplishing the task
- The level of reward of a successful attack is much higher

**Structured Threat** - Characterized by a greater amount of planning, a longer period of time to conduct the activity, more financial backing to accomplish it, and possible corruption of, or collusion with, insiders.
- Criminal Organizations fall under this tier
- 

## Nation-States, Terrorists, and Information Warfare

Essential elements of society have become targeted by other organizations or nations as computer systems are needed to run info structure today.

**Information Warfare** - Warfare conducted against the information and information processing equipment used by an adversary.
- Many nations have developed some capability to do so
- The information gained from the target may also be used as a weapon against them
- Often backed by nation-states

```ad-summary
##### Highly Structured Threat
Characterized the following:
- Much longer period of prepartion (up to many years)
- Temendous financial backing
- A large and organized group of attackers
- May include attempts to subvert or plant individuals to create insiders
- Information warfare falls into this category
```

```ad-note
Unlike actual warfare, **critical infostructure** that is needed for daily life is also targeted:
- Water
- Electrcity
- Oil and Gas refineries
- Banking and finance
- Telecommunications
```

## Brand-Name Attacks

Numerous firms that sells exploits, kits, vulnerabilities, and other malicious items online.
- They sell these smaller level exploits to make money and for branding just like making products.

```ad-note
Often, there are multiple names given to an exploit initially as multiple firms might give a single exploit the same name. This often settles in due time
```

```ad-example
title: Names of Different Important Malware Brands
- **Energetic Bear**
	- A group of Russian ahckers who used Havex malware in critical infrastructures
	- Also known as Dragonfly
- **Sandworm**
	- A gropu of Russian hackers who have brought major issues to Ukraine via numerous attacks
	- Also known as Electrum
- **Shadow Brokers**
	- A team that leaked NSA hacking tools to the public domain
	- Released the EternalBlue vulnerability
- **Equation Group**
	- A team of hackers allegedly linked ot the U.S. government
- **Regin**
	- A team of hackers allegedly associated with the UK's GCHQ
- **Cozy Bear and Fancy Bear**
	- Hacker groups tied to Russia and the hacking of the Democratic National Committee
	- Fancy Bear is connected to Russia's GRU
	- Cozy Bear is connected to the Federal Security Service of the Russian Federation (FSB)
- **Vault 7**
	- A group of hackers linked to North Korea
	- Includes a $81 million bank robbery
	- WannaCry randsomware attacks
- **Comment Crew**
	- A gorup of hackers associated with China
	- Also known as APT1
- **Anonymous**
	- A group of hackers that use their skills to expose perceived injustices
```

# Attributes of Actors

Actors can be divided using more than just abilities as they can be divided based on:
- Location
- Level of sophistication
- Level of resources
- Intent

## Internal/External

Internal actors have direct access to the system that provides the threat actor the ability to pursue their attack
- External actors have to establish the access to a system through an attack

## Level of Sophistication

Can be broken down into even smaller categories:

```ad-summary
title: Category 1: The individual Skills of Members
A higher skilled individual is expected to lead and design attacks and move a larger number of less-skilled participants
- As skill level goes up, they use more minimal methods
- They save zero-days only when absolutely necessary
- Often Relies on older attacks and vulnerabilities
```

## Resources/Funding

Often, criminal organizations and nation-states have larger budgets, bigger teams, and the ability to pursue a single campaign for a longer period of time

```ad-important
The expenses associated with cybersecuirty is for the need of maintaining teams and tools used as threat actors against a system.
```

APTs are allowed to focus on a single attack for many years as they are backed by major organizations or governments who can fund these long-term resources

## Intent/Motivation

Intent and motivation are often connected to the level of ability and size of the organization.
- This can change their motivation from being simple to complex

```ad-example
title: Script Kiddies
1. Just trying to make a technique work
```

```ad-example
color: 255, 255, 0
title: Skilled Threat Actor
1. Persuing a specific objective
```

```ad-example
color: 234, 180, 234
title: APT Threat Actor
1. The drive to maintain persistent access mechanism so that the threat actor has continued access
2. The drive to remain undetected
3. The network must have some very valuable to be stolen within
```

# Security Trends

In the last 30 years, computer security has been affected from the transition from large mainframes into a highly interconnected network of smaller systems.
- This is known as the Internet and is often connected to virtually all systems
- This has greatly complicated the jobs of security professionals

```ad-important
Electric crimes have become more focused and gained more notoriety due to there being larger and greater rewards because many financial firms are now online
```

A wide range of comptuer industry firms have begun issuing annual security reports

```ad-example
title: Verizon's Data Breach Investigations Report
- Identifies comon detials taht reuslt in a data breach
- Also confirms as the cybersecurity world has become more unsafe as in just 3 years, the amount of confirmed breaches increased by nearly 2000 (2017-2020)
```

# Targets and Attacks

A particular system is attacked as it is either a specific target, or it is an opportunistic target

## Specific Target

When a target is not chosen for the hardware or software the organization is running on it, but for another reason such as a:
- **Political Reason**

```ad-example
An individual in one country might attack a government system in another.
```

- **Hacktivist Attack**

```ad-example
color: 0, 255, 255

An attacker may deface the website of a comapny that sells fur coats because the attacker feesl that using aniamls in this way is unethical
``` 

- **Electronic Fraud**

```ad-important
The software or hardware exploits that the organization might have are not choosen until one of these targets are chosen
```


## Opportunistic Target

Choosing a target based on a site that has a software that is vulnerable to a specific exploit

```ad-note
An attacker may be given a specific sector that the exploit has to be used in

```ad-example
A hacker may want to get the credit card details, so they will use this exploit they found on different firms until one works
```

These attacks take less time as it relies on a widely distributed software that almost every computer system might have


## Minimizing Possible Avenues of Attack

Understading the steps an attacker will take helps an administrator know to limit the exposure of the systems and minimize the avenues an attack can take. Can be broken down into two main groups:
- Patching
- Hardening

```ad-summary
title: Patching
color: 0, 255, 255

Ensure that all patches for the operating systema nd applications are installed
- Often, security exploits are based on known vulnerabilites for which patches exist
- In the past, malware caused so much damage as administrators did not update their systems enough

```

```ad-summary
title: Hardening
color: 255, 255, 0

Limtiing the services that are running on the system which allows a server to:
- Limit the possible avenues of attack by reducing the number of services that may have vulnerabilities
- It reduces the numbe rof services the administrator has to worry about patching
```

# Approaches to Computer Security

There are three major considerations when securing a system:

```ad-summary
title: Consideration 1: Correctness
color: 0, 234, 234
Ensuring that a system is fully up to date, with all patches installed and proper security controls in place. 
- Starts with a secure development lifecycle
- Contineus through patching and hardening
- Culminates in operations
```

```ad-summary
title: Consideration 2: Isolation
color: 240, 240, 240
Protecting a system from unauthorized use, by means of access control and physical security.
- Begins with infrastructure
- Continues with access control
- Includes use of cryptography

```

```ad-summary
title: Consideration 3: Obfuscation
color: 234, 180, 234
Making it difficult for an adversary to know when they have succeeded. It makes it more difficult for them to succeed in their attack
```

## Cybersecurity Kill Chain

A step-by-step process that attacks follow to target and achieve results on victim systems.
- Gives the typical steps an adversary must complete in order to achieve their objective

![[Pasted image 20230613164357.png]]

```ad-important
In many cases, the detection of an adversary on your netowrk will be earlier in the kill chian process, giving a firm **an opporutnity to break the attack pattern before it is too late**
```

## Threat Intelligence



