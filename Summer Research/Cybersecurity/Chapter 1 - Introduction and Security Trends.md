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

Many different data breaches have been happening in the current 



