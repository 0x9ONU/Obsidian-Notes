Date: 21st April 2025
Date Modified: 21st April 2025
File Folder: Week 13
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Firewalls

```ad-summary
title: Definition
The **firewall** inspects and controls incoming network raffic to determine which traffic shoiuld be rejected or accepted depending on a set of rules set by a government, an orgnaizaiton, or an individual.
```

## The Need for Firewalls

Internet connectivity is essential, *but* it creates a **threat**

It is an effective means of protecting LANs
- Inserted between the premises networks and the INternet to establish a controlle dlink
- Can be a single computer system or a set of two or more systems working together

Used as a perimeter defense
- Single choke point to impose security and auditing
- Insulates the internal systems from external networks

![[firewall-1.webp | center]]

## Characteristics

*Design Goals*:
- All traffic from inside to outside, and vice versa, must pass through the firewall
- Only authorized traffic as defined by the admin and cannot be changed by anyone else

## Access Policy

Lists the types of traffic authorized to pass through the firewall
- Includes address ranges, protocols, applications, and content types
- Devleoped from the organization’s information security risk assessment and policy
- Developed form a board specification of which traffic types the organization needs to support
- Then refined to detail the filter elements, which can then be implemented within an appropriate firewall topology

### Filter Characteristics

1. IP address and protocol values
	- Used by packet filters and stateful inspection firewalls
	- Typically used to limit access to specific services
2. Application Protocol
	- Used by an application-level gateway that relays and monitors the exchange of information for specific application protocols
3. 



