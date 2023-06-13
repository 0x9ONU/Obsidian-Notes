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





