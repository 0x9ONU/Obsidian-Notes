Date: 4th December 2024
Date Modified: 4th December 2024
File Folder: Week 14
#networks

```ad-summary
title: Today's Topics
- IPv6
```

# Internet Protocol version 6 (IPv6)

## Review: IPv4

- IPv4 only has about *4.3 million* addresses
- All these addresses are almost completely allocated
- More than 7 billion internet devices
- Lacks a QoS parameter

```ad-warning
This is overcome by private IP addresses, but the exit nodes still need to have a public IP address to route properly
```

# IPv6

## Motivation

*Initial Motivation*: 32-bit address space almost completely allocated.
- Header format helps speed processing/forwarding
- Header changes to facilitate QoS
- Changes to lessen the blow of broadcast traffic
## Benefits

- Gives a lot of addresses: $3.4 \times 10^{38}$
- Address is *128* bits in length
- **No** broadcast, it uses multicast traffic

```ad-note
Using mutlicast, a source can send a single copy of data to a single multicast address, which is then distributed to an entire group of recipients. Instead of forwarding to the whole network, it forwards it to a *group of users*.
```

## Addressing

![[Pasted image 20241204091336.png]]
- In Hexadecimal
- It uses *eight* groups of numbers
- separated by colons
- Has eight 16-bit hexadecimal colon-delimited blocks

```ad-important
The fourth group of hex is *resereved* for the subnet. This means you do not need to play with the network/host digits to create a subnet
```

## Shortened Expression

![[Pasted image 20241204091538.png]]

Drop any leading zeros in each of the individual blocks:

`2001:db8:3c4d:12:0:0:1234:56ab`

Remove consecutive blocks of zeros by replacing them with a doubled colon:

`2001:db8:3c4d:12::1234:56ab`

### Example

`2001:0000:0000:0012:0000:0000:1234:56ab`

If address has four blocks of zeros and each of them were separated, I can replace only one continuous block with a double colon:

*YOU CANNOT DO THIS* `2001::12::1234:45ab`
**DO THIS**: `2001::12:0:0:1234:56ab` OR `2001:0:0:12::1234:56ab`

```ad-note
*Reasoning*: If we remove two sets of zeros, the device looking at the address will have no way of knowing where the zeros go back in. The router would look at the incorrect address and say, "Well, do I place two blocks into the first set of doubled colons and two into the second set, or do I place three blocks into the first set and one block into the second set?"
```

## Address Types

```ad-warning
NO broadcast IP address in IPv6
```

**Unicast**: Packets addressed to a unicast address are delivered to a single interface

**Global Unicast Addresses** (2xxx: :/3): These are your typical publicly routable addresses and they’re the same as in IPv4. Global addresses start at 2000::/3 

![[Pasted image 20241204092833.png]]

```ad-note
The figure shows how a unicast address breaks down. The ISP can provide you with a minimum `/48` network ID< which in turn provides you 16-bits to create a unique 64-bit router interface address. The last 64-bits are the unique host ID.
```

**Link-Local Addresses (FE80: :/10)**: These are like the Automatic Private IP Address. In IPv6, they start with FE80::/10

```ad-important
The first 10 bits define the address type
```

![[Pasted image 20241204093123.png]]

**Multicast (FFxx : : /8)**: Packets addressed toa  multicast address are delivered to all interfaces tuned into the multicast address. Sometimes, people call them “one-to-many” addresses. It’s really easy to spot a multicast address in IPv6 because they always start with `FF`

# Configuring IPv6 Networking using Static IPs

## Network 1

Let’s consider the following network to configure with IPv6. Two networks A (2001: :/64) and B (2002: :/64)

![[Pasted image 20241204093437.png]]

### Step 1: Enable IPv6 Globally on Router

`Router(config)#ipv6 unicast-routing`

### Step 2: Enable IPv6 on each Interface of the Router

```
Router(config)#interface gig 0/0/0
Router(config-if)#ipv6 enable
Router(config-if)#no shutdown
```

### Step 3: Configure IPv6 Address on the Interface

**Apply a Manual Interface (host address)**

```
Router(config)#interface gig 0/0/0
Router(config-if)#ipv6 address 2001::10/64
Rotuer(config-if)#end
```

### Step 4: Ping to Prove Validity

`Router#ping ipv6 2002::10`

`A1>ping 2001::1`

```ad-important
You do not need to specify with host, but you *DO* need to with *router*
```

## Network 2

![[Pasted image 20241204094706.png]]

![[Pasted image 20241204094717.png]]![[Pasted image 20241204094718.png]]

![[Pasted image 20241204094728.png]]

![[Pasted image 20241204094737.png]]

![[Pasted image 20241204094744.png]]

![[Pasted image 20241204094751.png]]

