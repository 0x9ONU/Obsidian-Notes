Date: 14th April 2025
Date Modified: 14th April 2025
File Folder: Week 12
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


# Intrusion Detection

## Classes of Intruders

### Cyber Criminals

Individuals or members of an organized crime group with a goal of financial reward

### Activists

Either individual, usually working as insiders, or members of a larger group of outsider attackers, who are motivated by social or political causes.

Aim of their attacks is often to promote and publicize their cause through:
- Website defacement
- Denial of service
- Theft and distribution of data that results in negative publicity or compromise of their targets

### State-Sponsored

Groups of hackers sponsored by governments to conduct espionage or sabotage

### Other

Hackers with motivations other than those previous listed:
- Include classic hackers or crackers who are motivated by technical challenge or by peer-group esteem and reputation
- Many of those are responsible for finding vulnerabilities for fun

## Skill Levels

### Apprentice

Hackers with minimal technical skill who primarily use existing attack toolkits
- Most of attackers
- Easiest to defend against
- “Script-kiddies”

### Journeyman

Hackers with sufficient technical skills to modify and extend attack toolkits to use discovered, or purchased, vulnerabilities

### Master

Hackers with high-level technical skills capable of discovering brand new categories of vulnerabilities
- Write the toolkits
- Employed by state-sponsored groups
- Defending against these attacks are the highest difficulty

## Intrusion Behavior

```mermaid
flowchart LR
A(Target Acquisiton and Info Gathering)
B(Initial Access)
C(Privilege Escalation)
D(Information gathering or system exploit)
E(Maintaining access)
F(Covering tracks)
A-->B-->C-->D-->E-->F-->A
```


## Defintions

**Security Intrusion**: Unauthorized act of bypassing the security mechanisms of a system

**Intrusion Detection**: A hardware or software function that gathers and analyzes information from various areas within a computer or a network to identify the intrusion.

![[354.jpg | center]]

## Types of IDS

1. **Host-Based (HIDS)**: Monitors the characteristics of a single host for suspicious activity
2. **Network-Based IDS (NIDS)**: Monitors network traffic and analyzes network, transport, and application protocols to identify suspicious activity
3. **Distributed or Hybrid IDS**: Combines information form a number of sensors, often both hosts and network based, in a central analyzer to better identify and to responds to intrusion activity.

## Basic Principle

IDS acts as another line of defense

Based on the following consideration:
- Identification and ejection of the intruder quickly
- Server as a deterrent preventing intrusions
- Strengthen intrusion prevention measures

Based on assumption:
- Intruder behavior - legitimate user behavior = some quantity

