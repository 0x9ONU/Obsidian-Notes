Date: 14th June 2023
Date Modified: 14th June 2023
File Folder: Cybersecurity
#cybersecurity

# People - A Security Problem

The operational model of computer security understands that preventative technologies are not perfect. 

Humans are one of the biggest reasons why preventative technologies are not sufficient:
- Causes errors
- Make mistakes
- Are easily misled or fooled.

## Social Engineering

The process of an unauthorized individual convincing an authorized individual to provide them with a confidential information or access to something that they should not have.
- Utilizes various deceptive practices

It is very successful due to:
- The basic desire of most people to be helpful
	- We will answer a question they have rather than try to be suspicious 
	- This information that they will ask could be enough to help the attacker out

```ad-example
An attacker who is attempting to exploit the natural tendency of people to be helpful may take one of several approaches:
- Ask a qustion, hoping to immediately obtain the desired information. 
	- Works for basic information
- Attempt to engage the target in conversation to envoke sympathy to give up more sensitive information
- Appeal to the individual's ego
	- Talk them up saying how well they did to solve a non-existant problem
	- Proceed to ask them for information
```

- Individuals normally seek to avoid confrontation and trouble
	- The attacker may intimidate and threaten to tell someone higher than them that they provided a bad service
	- Really strong in companies that have a *strict hierarchical structure* like the military

```ad-note
Can also be done thourgh non-direct means such as fake e-mails, fake paperwork, and more
```

# Tools

Social Engineering tools rely on psychology rather than knowledge on software and hardware of a computer.
- Used to exploit people's own biases and beliefs to prevent them from using standard procedures or good judgement
- Social engineers switch these tools in and out when necessary

## Principles (Reasons for Effectiveness)

```ad-note
title: First Reason Snowballing
The more infomration an individual has about an organization, the easier it is to confince others that they are part of the organization as well
```

### Authority

Leads to an environment where one party feels at risk in challenging another over an issue.
- Can be used to entice the target to act in a particular manner or get punished

```ad-important
The best defense to this is to have a strong set of policies that has no exceptions. 
```

### Intimidation

Can either be subtle, through perceived power, or more direct, through the use of communications that build an expectation of superiority

### Consensus

A group-wide decision done through rounds of group negotiations.
- Can be manipulated by the attacker to get the desired outcome

### Scarcity

Implied scarcity can create a perception of scarcity, and the attacker can use this motivation to help the target make a decision quickly without deliberation

### Familiarity

Based around the fact that people do things for others they feel connected to. Social engineers exploit this by making misplaced trust.
- Focuses the conversation on familiar items rather than differences

### Trust

Having an understanding of how something will act under specific conditions
- An attacker can shape the perceptions of a target so that they will apply judgements and come to the false conclusion that they can be trusted

### Urgency

When time is manipulated to prompt shortcuts that can lead to opportunities for interjections in the process.
- Limited time offers or sudden opportunities

```ad-important
Perception is key
- CGiving a target a reasont o believe that they can take advantage of this time-based opportunity can cause them to act in a certain manner
```

## Defenses

For impersonation, **always** make employees to ask to see a person's ID before engaging with them.
- Also challenge people such as delivery drives and contract workers

```ad-note
If this becomes standard process, no one becomes offended AND if they do, they come off suspicous
```

**Create periodic training periods that are tailored to what is currently being expected** 

# Attacks

Social Engineers use many different psychological and technical means to get a user to perform actions on a machine that they would normally not do such as:
- Clicking a link to a web page
- Running a program
- Saving information
- Opening a file

## Impersonation

The attacker assumes a role that is recognized by the person being attacked, and in assuming that role, uses the victim's own biases against their better judgment to follow procedures

Can occur in many different ways in many different places
- in person
- over a phone
- online

### Third-Party Authorization

Uses previously obtained information about a project, deadline, or boss to:
1. Arrive with something the victim is expecting or would seem normal
2. Uses the guise of a project in trouble or some other situation where the attacker will be viewed as helpful or not upset
3. Name drops "Mr. Big" who is unreachable at that moment to avoid a reference check

```ad-note
The attacker seldom asks for anything that would be unreasonable or unlikelyt o be shared based on the circumstances
```

### Contractors/Outside Parties

Attackers take advantage of the fact that organizations hire outside workers to do various tasks around it. 
- Could dress up in a uniform that matches the contractor
- If challenged, they can use the sympathy card saying they are filing in for another person

They are able to roam the halls unnoticed without suspicion and take as much information as they can

### Help Desk/Tech Support

A social engineer can pose as an employee and get:
- a password reset
- Details about some system

Can also pose *as* the help desk employee to get:
- System status

### Online Attacks

Technology plays an intermediary role in communication chains

```ad-note
Some older forms of online attacks have become less effective today because people have become wary of them
![[Pasted image 20230615110716.png]]
```

Phishing attempts via e-mail and social media, however, are still very prevalent today.

## Phishing

A type of social engineering in which an attacker attempts to obtain sensitive information from users masquerading as a trusted entity in an e-mail or instant message sent to large group of often random users.

Attempts to obtain:
- usernames
- passwords
- credit card numbers
- details about the users' bank accounts

```ad-note
Utilizes fake websites that appear to be their reputable counterparts, but actually takes the user's information when it is supplied
```

## Smishing

A form of phishing that uses Short Message Service (SMS) on different victim's phones.
- Sends a link that directs the user to a website where the attacker can do various attacks
- Often done through urgency and intimidation
	- "You have been subscribed to this service, please click this link to unsubscribe or billing will start"

## Vishing
A variation of phishing that utilizes voice communication technology to obtain the information the attacker is seeking.
- Uses the trust people place on telephone networks
	- They are unaware that phone calls can be *spoofed* from real entities using Voice over IP technology
- Phone number may be placed in an email that could be compromised
- Asked to respond quickly and provide sensitive information

Attackers try to obtain information that can be used in identity theft

```ad-important
If a user receives a message that claism to be form a reputable entity and asks for sensitve information, the user should *not* provide the information and do research on the Interent to examine the legitamacy
```

## Spam

Bulk unsolicited e-mail that can still causes security concerns:
- It can be from a company advertising a product or service OR
- It could be malicious and include attachments with malicious software or links to malicious websites

```ad-note
Always consider the soruce before clicking any links or directly responding for spam
```

## Spam over Internet Messaging (SPIM)

Spam delivered via an instant messaging application

## Spear Phishing

Refers to a phishing attack that targets a specific group of people or businesses with something in common.
- Due to it being more targeted and concentrated, the ratio of successful attacks is increased
- Much more effective than randomly sending messages

## Whaling

Where the target is chosen to be a high-value person, such as a CEO or a CFO
- Custom-built for a single target to increase odds of success
- Utilizes properties of spear phishing by appear like normal business rather than a suspicious communication 
- Relies on single targets rather than a random returns from a large population

## Pharming

Misdirecting users to fake websites that are made to look official
- Uses standard phishing to get them to click on the link in the first place
- The user will then be taken to the wrong website as the result of DNS poisoning or modification of local host files
	- An attack that changes URLs in a server's domain name table
	- Used to convert URLs to the appropriate IP address
- The user then may provided personal information that is stolen by the fake site

## Dumpster Diving

The process of going through a target's trash in hopes of dining valuable information that might be used in a penetration attempt

```ad-summary
The target's trash is one of the primary targets
- Could find small bits of information that can be used for the attack, or even user IDs and passwords
- Even though dumpster diving may be illegal in places, it is rarely enforced as it is considered public property once it has been tossed
```

```ad-important
To combat this, companies and individuals should have policies about discarding sensitive materials.
- Shredding sensitive documents
- Obtaining a secure trash receptacle
```

## Shoulder Surfing

Involves the attacker directly observing the individual entering sensitive information on a form, keypad, or keyboard from any distance that is needed
- Combatted today by privacy screens or filters as well as digit scramblers

```ad-example
The attacker can gain the following information:
- PIN number for an ATM
- An access control entry code for a gate or door
- A calling card or credit card number
```

```ad-important
color: 255, 30, 30
The strongest defense for shoulder surfing is to be aware of the surroudnings and not allow individuals to get into a position from where they can observe what you are entering
```

```ad-note
The attacker may start a conversation with the victim to get them distracted and get closer to the target
```

## Tailgating/Piggybacking

The simple tactic of following closely behind a person who has just used their own access card or PIN to gain physical access to a room or building
- Exploits the fact that some people may be in a hurry
- Gains access to a building without having an access code or card
- Success can be improved by sparking up a conversation with the victim

```ad-note
Both Tailgating and shoulder surfing rely on poor security practices of an authorized user to be successful
- Can be countered through employee training and using a *mantrap*
	- A facility that utilizes two doors that only allow for one individual to go through at a time
```

## Eliciting Information

Calls to or from help desk and tech support units
- Can pose as either the employee OR as an help desk worker

## Prepending

The act of supplying information that another will act upon in an attempt to legitimize the actual request
- Uses the constructs of authority as the attacker can say that they are someone's boss as to why the victim should perform a specific action

## Identity Fraud

Use of fake credentials to achieve an end, which can be both high or low risk:
- Pretending to be an official representative of a government agency
- Showing up as a person who waters plants

```ad-example
Showing up to pretend to deliver a server after the attacker knows that a company needed a replacement
```

Can be done online by using impersonation techniques to deceive the victim

```ad-important
To defend against identify fraud, use strong policies and procedures, without exception
- Includes resetting passwords or giving third party access
```

## Invoice Scams

A scam using a fake invoice in an attempt tog et a company to pay for things it has not ordered.
- Involves getting someone outside of the accounting group to initiate the process to increase legitimacy
- Despite its simplicity, the industry makes billions of dollars per year

```ad-example
Common items used in these scams include:
- Office products
- Cleaning products
- Organizational memberships
- Corporate services
```

```ad-warning
Sometimes urgency is added by using a final notice warning and threatening a collection agency in order to make it less likely to be tossed
```

## Credential Harvesting

The collection of credential information so that an attacker can have a series of passes to the systems.
- Can include user IDs, passwords, and more
- Often starts with phishing emails that goes into pharming to take the credentials put into a fake website

```ad-note
The fake website often redirects you to the correct website after the attack has been finished
```

These attacks have been highly successful as two factor has become a must for companies.

## Reverse Social Engineering

The attacker hopes to convince the target to initiate the contact.
- Sometimes more successful as they do not need to convince the victim of their authenticity

```ad-example
Ways to get a victim to contact the attacker first:
- Sending a spoofed email that claims to claims to be from a reputable soruce and provides another email address or phone number
- Posting a notice or creating a bogus website for a legitimate company that also claims to provide a "tech support"
```

```ad-note
This is most successful if:
- timed to coincide with a company's deployment of a new software or hardware platform.
- during a significant change in the organization, such as a merger
```

## Reconnaissance

The actions of surveying a system it attends to attack, using a wide range of methods.

Can obtain data thorugh:
- Indirect means
	- Google searches, public record searches, etc.
	- Press releases that tells who the company's partners are
- Direct means
	- Obtaining and then surveying org charts
	- calling and asking for contact information on people for a personal directory

```ad-important
All of these emthods provide information taht goes into a description of the system that will be under attack
```

## Hoax

Even though they may seem small, hoaxes can be very damaging if it causes some sort of action that **weakens security**

```ad-example
A real hoax described a new, highly destructive piece of malware
- To be safe agaisnt it, it instructed users to find a specific file and delete it to patch the vulnerability
```ad-warning
In reality, the file was an important file used by the operating system, and would cause the computer not to boot into the OS
```

```ad-note
Can be countered by using training and awareness
- Should contact an organization to double check strange emails and stories around computers
- **be wary of emails that tell it to spread it around to your friends**
```

## Watering Hole Attack

When a target website that users are likely to frequent is infected with malware.
- Can be constraint to specific geographical areas or be more widespread
- Not simple, but very effective at bringing malware to a specific group of end users

```ad-note
Only often achievible my nation-states or other high-resource attackers
```

## Typo Squatting

Capitalizes on common typographical errors where an attacker will register a mistyped URL that redirects to the attacker's page. 


Can be used in:
- Phishing and credential harvesting 
- Drive-by malware
- Move traffic through an affiliate network and earning click-through revenue

## Influence Campaigns

The use of collected information and selective publication of material to key individuals in an attempt to alter perceptions and change people's minds on a topic.
