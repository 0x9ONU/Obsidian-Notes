Date: 2nd December 2024
Date Modified: 2nd December 2024
File Folder: Week 14
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Cache, FTP, DHCP, DNS

## User-Server State: *Cookies*

Many websites use **cookies**

**Contains**:
1. Cookie header line of HTTP *response* message
2. Cooke header line in next HTTP *request* message
3. Cookie file kept on user’s host, managed by user’s browser
4. Back-end database at Website

```ad-example
Visit specific e-commerce site for first time. On the first HTTP request, the site creates:
1. Unique ID
2. Entry in backend database for ID
```

![[Pasted image 20241202091122.png]]

## Web Caches (Proxy Server)

**Goal**: Satisfy client request without involving origin server

User sets browser: Web accesses via cache browser sends all HTTP requests to cache
- If there is an object in cache: Cache *returns* object
- Else cache requests object from origin server, then returns object to client

![[Pasted image 20241202091332.png]]

```ad-note
Cache acts as both client and server:
- Server for original requesting client
- Client to origin server
```

*How is it installed?*: Typically install by ISP

*why Web Caching?*
1. Reduce reponse time for client request
2. Reduce traffic on an institutuion’s access link
3. Internet dense with caches: enables “poor” content providers to effectively deliver content

## Conditional GET

**Goal**: Do not send object if cache has up-to-date cached version
- No object transmission delay
- Lower link Utilization

*Cache*: Specific data of cached copy in HTTP request

`If-modified-since: <date>`

*Server*: Response contains no object if cached copy is up-to-date

`HTTP/1.0 304 Not Modified`

```ad-warning
The server will *not* send back `200 OK`. It will instead send back `304 Not Modified`
```

![[Pasted image 20241202091723.png]]
## FTP: File Transfer Protocol

```ad-summary
Transfers file to/from remote host. Uses the client/server model
```

*client*: Side that initiates transfer

*server*: Remote Host

**PORTS**: `21, 20`

FTP uses two parallel TCP connections: *control connection* and *data connection*.

**Control Connection (`port 21`)**: Sending control information
- Username
- Password
- Commands to put and get files

**Data Connection (`port 20`)**: Used to send a file

![[Pasted image 20241202091928.png]]

![[Pasted image 20241202091944.png]]

## DHCP Protocol

```ad-warning
NOT a Routing Protocol
```

A network administrator configures DHCP so that a *host receives IP address* when it connects to the network. 
- Adds other information such as subnet mask, default gateway, and DNS server

Each time a host joins, the DHCP server allocates an arbitrary address from its current pool of available addresses. Each time a host leaves, its address is returned to the pool

## DNS: Domain Name System

There are many things that you have to remember for accessing a host:
- IP address and port - used for addressing datagrams and frames
- “name” e.g. `www.yahoo.com` - used by humans

*Domain Name System*: 
- Application layer protocol: Hosts name servers communicate to *resolve* names (address/name translation)

### Example

```ad-question
Host wants IP address for `onu.edu`
```

*Iterated Query*:
- Contacted server replies with name of server to contact
- “I do not know this name, but ask this server”

*Recursive Query*:
- Puts burden of name resolution on contacted name server
- Heavy load at upper levels of hierarchy

![[Pasted image 20241202092557.png]]

Top-Level Domain (TLD) DNS server:
- There is one of these for every domain ending (`.edu`, `.com`, `.org`, etc.)

**Steps**:
1. Hosts checks the cached host file, and if it fails, it checks the local DNS server
2. The local DNS server checks with the root DNS server (only around *six* in the whole world)
3. Response from root DNS
4. The local DNS server checks with the TLD DNS server 
5. Response
6. The authoritative DNS server is contacted by the local DNS
7. A response is sent
8. The local DNS returns the website IP address and port to the host machine 

