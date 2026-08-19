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

```ad-important
If the overlapping region is *at least* $15\%$, then there will be little/no drop in the signal
```


![[Pasted image 20241209093957.png]]

## Wi-Fi Channels

ISM radio bands are reserved for Industrial, Scientific, and Medical purposes *except* telecommunications:
- **Wi-Fi Frequency Bands:** 
	- 2.4 to 2.5 GHz
	- 5.15 GHz to 5.35 GHz
	- 5.925 GHz to 6.425 GHz
- **IEEE 802.11 b/g/n** uses 2.4 to 2.5 GHz *(2.4GHz)*
- **IEEE 802.11ac** uses 5.15 GHz to 5.35 GHz *(5GHz)*
- **IEEE 80s.11ax** uses 5.925 GHz to 6.425 GHz *(6GHz)*

### 2.4 GHz Band

Within the 2.4 GHz (ISM) band are 11 channels approved for use in the United States, 13 in Europe, and 14 in Japan
- Each channel is defined by its center frequency, but remember, that signal is spread across *22MHz*
- There is *11 MHz* on one side of the center frequency and 11MHz on the other side, so each channel encroaches on the channel next to it
- This means, within the US, only channels 1,6, and 11 are considered nonoverlapping

![[Pasted image 20241209094424.png]]

![[Pasted image 20241209094818.png]]

### IEE 802.11 Standards Ideal Speeds

- `IEEE 802.11a`, year 1997, 1-2 Mbps data rate, 2.4GHz
- `IEEE 802.11b`, year 2000, 11 Mbps data rate, 2.4GHz
- `IEEE 802.11g`, year 2003, 54 Mbps data rate, 2.4 GHz
- `IEEE 802.11n`, year 2009, 6000 Mbps data rate, uses MIMO, 2.4 GHz
- `IEEE 802.11ac`, year 2013, 6.9 Gbps data rate, 5 GHz
- `IEEE 802.11ax`, year 2021, 9.6 Gbps data rate, 2.4/5/6 GHz

#### Overlapping


When APs are on the same channel, they will hear each other and defer to one another when transmitting. This is due to information sent in the header of each wireless packet that instructs all stations in the area (including any APs) to refrain from transmitting until the current transmission is received. The APs perform this duty based partially on the duration field. Anyway, the end result is that both networks will be slower because they’ll be dividing their transmission into windows of opportunity to transmit between them. 

When the APs are only one or two channels apart, things get a little tricky, because in this case, they may not be able to hear each clearly enough to read the duration field. The ugly result of this is that they’ll transmit at the same time, causing collisions that cause retransmissions and can seriously slow down your throughput—ugh! Therefore, although the two behaviors are different within these two scenarios, the end result is the same: greatly lowered throughput.

![[Pasted image 20241211090857.png]]

### WiFi 2.4 GHz Planning

```ad-important
Uses **hexagons** to plan a coverage area. This is because the **hexagon** is a close approximation of a *circle*.
```

![[Pasted image 20241211091256.png]]

```ad-note
Since the edge hexagons go outside the box, it means that the WiFi will go outside the building if you use an omni-directional router. Therefore, we use a *unidirectional access point* instead to prevent the data from leaking outside of the building. 
```

![[Pasted image 20241211091505.png]]

```ad-important
Uses CDMA to sort mixed data and grab the correct information that matches the code that the access point has
```

### 5 GHz Channel Allocations

```ad-note
title: Remember
WIthin the 2.4 GHz (ISM) band are 11 channels for United STates, 13 in Europe, and 14 in Japan
```

The 5GHz frequency is divided into three unlicensed bands called the **Unlicensed National Information Infrastructure (UNII)** bands. These bands are known as UNII_1, UNII-2, and UNII-3 – the lower, middle, and upper UNII bands.

The lower UNII band has center points that are 10MHz apart, and the other two are 20MHz apart.

![[Pasted image 20241211092143.png]]

```ad-warning
When deploying APs in the 5GHz band, the *space between the channels can be two channels*, given there's no overlap.
```

![[Pasted image 20241211092231.png]]

# Wi-Fi Security

## Wireless Security

**Authentication**: Uniquely identifies the user and/or machine.

**Encryption**: Protects data or the authentication process by scrambling the information enough that it becomes unreadable by anyone trying to capture the raw frames.

```ad-warning
**WPS** is an outdated form of security. It uses only *8-bits* as the pin. Additionally, the first bit is a parity bit, which makes it only have *7-bits* to work with. Even if it is on and not in use, a brute force can crack it in 5 minutes.
$$\space$$
`p.xxxyyyy`. For $y \Rightarrow 10^4=10000$. AND For $x \Rightarrow 10^3=1000$, which means it can be brute-forced in only 11,000 tries
```

## WEP Shared-Key Authentication

```ad-warning
Least encrypted wireless protocol. Outdated by today's standards
```

## WPA, WPA2, and WPA3

```ad-note
Created in response to the shortcomings of WEP
```

**WPA** is a standard developed by the Wi-Fi Alliance and provides a standard for authentication and encryption of WLANs that’s intended to solve known security problems

```ad-important
WPA has dynamic keys over WEP's static keys.
```

*WPA2* updates the previous version by using AES encryption.
- Pre-Shared Key (PSK) verifies users via a password or identifying code, often called a passphrase, on both the client machine and the access point. A client gains access to the network only if its password matches the access point’s password. The PSK also provides keying material that TKIP or AES uses to generate an encryption key for each packet of transmitted data.

## Summary

```mermaid
flowchart LR
A(WPS)-->B(WEP)
B-->C(WPA)
C-->D(WPA2)
D-->E(WPA3)
```

You must know:
- Which Wi-Fi security are better than each other
- Wireless LAN vs. Mobile Networks
- Two types of wireless antenna (Omni vs. DirectionalA)
- BSS/BSA
- SSID
- Extended SSID
- Wi-Fi frequency ranges for every standard
	- Know channel width is `22MHz` and has 11 channels in USA
- Overlapping Channels
	- Access-points should be 4-channels apart for 2.4GHz
	- 2-channels for 5GHz
- 5GHz
	- Know that Center Frequencies are (20, 40, 80, 160)MHz respectively
