Date: 9th December 2024
Date Modified: 9th December 2024
File Folder: Week 15
#networks

```ad-summary
title: Today's Topics
- Exam Notes
- Wireless Networks
```


# Exam (10 Questions)

1. Module I
2. Module II
3. Module II
4. Module III
5. Module III
6. Module IV
7. Module V
8. Module VI
9. Module VII
10. Module VIII

# Wireless Networks

## WiFi vs. Mobile Networks

```ad-summary
Most popular wireless Internet access technologies today. Compare and Contrast them!
```

**Wireless LAN**:
In a wireless LAN, wireless users transmit/receive packets to/from a base station within a radius of $200$ to $300$ ft. The base station is typically connected to the wired Internet and thus server to connect wireless users to the wired network. Wi-Fi does *not* provide high-speed mobility.

**Mobile Data Networks**:
In these systems, packets are transmitted over the same wireless infrastructure used for cellular telephony, with the base station thus being managed by a telecommunications provider. This provides wireless access to users within a radius of tens of miles of the base station. Cellular network provide high-speed mobility.


| Wireless LAN                                 | WWAN                                                         |
| -------------------------------------------- | ------------------------------------------------------------ |
| Limited range, about 200 to 300 feet         | Long distances, typically 1000 to 2000 ft                    |
| Set up yourself in-home or offered by ISP    | Offered by mobile carriers                                   |
| No limit for the amount of usage             | Buy plans based on usage                                     |
| Use Free ISM band including 2.4, 5, or 6 GHz | Cellular frequencies are allocated by the US FCC.            |
| Does not provide hand-over                   | Provides hand-over                                           |
| No mobility                                  | High mobility, remain connected while moving at a high speed |
```ad-note
**Hand-Over**: Allows two WWAN towers that are overlapping to swap a client from one network to another quickly, so it seems like there was no interruption.
```

## WiFi Basics

An extension of an existing LAN that provides wireless connectivity to computer and end devices

```ad-important
title: Difference between Access Point and WiFi Router
**Access Point**: Acts as a switch for wireless devices that have wireless network interface card
- Part of the same collision domain
- Part of the *same* network
$$\space$$
**WiFi Router**: Acts as a router for wireless devices and can be connected to other routers as well via cross-over cables or serial connections.
- Break-up collision domains
- Makes two *different networks*
```

![[Pasted image 20241209092800.png]]

## Basic WiFi Components

### Access Point

```ad-summary
title: Definition
A central component like a hub or switch to connect hosts and allow them to communicate
```

- Have at least one antenna
- Half-duplex nature. A wireless device *cannot* send and receive at the same time
- Come in two types: *Stand-Alone* or the *Wireless Router*

![[Pasted image 20241209093303.png]]

### Wireless Network Interface Card

A host *needs* a WNIC to connect to a wireless network
- Does the same job as a traditional NIC
- The Wireless NIC has a *radio antenna*
- Work with both transmitters *and* receivers

Two broad classes:
- **Omni-directional**: point-to-multipoint
- **Directional**: (point-to-point)

![[Pasted image 20241209093403.png]]

## Terminology

**Basic Service Set (BSS)**: The area, or cell, defined by the wireless signal served by the AP

![[Pasted image 20241209093644.png]]

**Service Set ID (SSID)**: A basic name that defines the Basic Service Area (BSA) transmitted form the AP
- The name the AP transmits out to identify which WLAN the client station can associate with.
- Up to 32 characters long
- Either broadcasted or hidden

**Extended Service Set**: When all access points have the same SSID
- Allows wireless clients to roam freely within the same network
- Most common wireless network design in today’s corporate settings.

![[Pasted image 20241209093957.png]]

## Wi-Fi Channels

ISM radio bands are reserved for Industrial, Scientific, and Medical purposes *except* telecommunications:
- **Wi-Fi Frequency Bands:** 
	- 2.4 to 2.5 GHz
	- 5.15 GHz to 5.35 GHz
	- 5.925 GHz to 6.425 GHz
- **IEEE 802.11 /g/n** uses 2.4 to 2.5 GHz *(2.4GHz)*
- **IEEE 802.11ac** uses 5.15 GHz to 5.35 GHz *(5GHz)*
- **IEEE 80s.11ax** uses 5.925 GHz to 6.425 GHz *(6GHz)*

### 2.4 GHz Band

Within the 2.4 GHz (ISM) band are 11 channels approved for use in the United States, 13 in Europe, and 14 in Japan
- Each channel is defined by its center frequency, but remember, that signal is spread across *22MHz*
- There is *11 MHz* on one side of the center frequency and 11MHz on the other side, so each channel encroaches on the channel next to it
- This means, within the US, only channels 1,6, and 11 are considered nonoverlapping

![[Pasted image 20241209094424.png]]

![[Pasted image 20241209094818.png]]

#### Overlapping

