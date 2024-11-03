Date: 23rd October 2024
Date Modified: 23rd October 2024
File Folder: Week 9
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# VLAN Configuration

Addressing Scheme for the VLAN Network Diagram is shown in the following table. Subnet mask is 24 bit throughout the network:

![[Pasted image 20241023090547.png]]

![[Networks - Week 9 Day 2 2024-10-23 09.00.54.excalidraw]]

Port Assignment is shown in the following table:

![[Pasted image 20241023090605.png]]

```ad-warning
VLAN ID is **NOT** required to match the third/forth bit of the IP addresses. You only have to worry about the numbers for routing configurations
```

## Step 1: Assign IP Addresses and Port Numbers on the Switch

![[Pasted image 20241023090648.png]]

## Step 2: Perform Basic Switch Configuration

Perform basic switch configuration. Change hostname and disable ip domain-lookup using:

```
Switch(config)# hostname Switch1
Switch1(config)#no ip domain-lookup
```

## Step 3: Disable all Switch Ports

Disable all switch ports. By default, the switch ports are enabled, it is the best practice to disable all switch ports. First use show running-config to see all ports are enabled, and *then* use the following:

```
Switch(config)#interface range fa0/1-24
Swtich(config-if-range)#shutdown
Switch(config-if-range)#exit

Switch(config)#interface range gig0/1-2 
Switch(config-if-range)#shutdown 
Switch(config-if-range)#exit
```

```ad-note
However, most institutions turn off the ports by default and will not turn them on unless IT is provided a MAC address to authenticate the machine.
```

## Step 4: Enable Required Switch Ports

Re-enable the switch ports that you would like to use for each switch, using the following set of commands:

```
Switch1(config)#interface range fa0/2, fa0/6, fa 0/7, fa0/11, fa0/12, fa0/16, fa0/17
Switch1(config-if-range)#no shutdown
Switch1(config-if-range)#end

Switch2(config)#interface range fa0/1, fa0/2, fa0/6, fa0/11, fa0/16
Switch2(config-if-range)#no shutdown
Switch2(config-if-range)#end
```

## Step 5: Verify Ports using Running-Config

Use `show running-config` on each switch to make sure the required switch ports are now enabled

*For Switch2*:

![[Pasted image 20241023092300.png]]

## Step 6: Create VLANs and Name Them

Create VLAN and name VLANs on each switch using the following set of commands:

```
Switch(config)#vlan 10 
Switch(config-vlan)#name Accounting 
Switch(config-vlan)#exit 
Switch(config)#vlan 20 
Switch(config-vlan)#name Marketing 
Switch(config-vlan)#exit 
Switch(config)#vlan 30 
Switch(config-vlan)#name Sales 
Switch(config-vlan)#exit
```

## Step 7: Verify VLANs

Verify that VLANs have been created in each switch using:

```
Switch#show vlan breif
```

```ad-important
**Verify**: Ports are currenlty assigned to the VLANs you have created. Right now, they are all under the default VLAN
```

![[Pasted image 20241023092709.png]]

## Step 8: Assign Switch Ports to VLAN

Assign switch ports to each VLAN according to Ports Assignment Table:

```
Switch(config)#interface range fa0/6-10 
Switch(config-if-range)#switchport access vlan 10 
Switch(config-if-range)#exit 
Switch(config)#interface range fa0/11-15 
Switch(config-if-range)#switchport access vlan 20 
Switch(config-if-range)#exit 
Switch(config)#interface range fa0/16-20 
Switch(config-if-range)#switchport access vlan 30 
Switch(config-if-range)#end
```

## Step 9: Verify VLAN Ports Assignment

![[Pasted image 20241023093009.png]]

# Inter-VLAN Routing

Consider the following VLANs connecting through a Router:

![[Pasted image 20241023093130.png]]

![[Pasted image 20241023093209.png]]

![[Pasted image 20241023093219.png]]

```ad-important
The steps are very similar, but the following steps will be *different*
```

```ad-warning
Interface suffix *MUST* match the VLAN ID
```

## Step 6b: Create VLANs and Management VLAN

Create VLAN and name VLANs on each switch using the following set of commands:

```
Switch(config)#vlan 10 
Switch(config-vlan)#name Accounting 
Switch(config-vlan)#exit 
Switch(config)#vlan 20 
Switch(config-vlan)#name Marketing 
Switch(config-vlan)#exit 
Switch(config)#vlan 30 
Switch(config-vlan)#name Sales 
Switch(config-vlan)#exit
Switch(config)#vlan 99
Switch(config-vlan)#name management
Switch(config-vlan)#end
```
## Step 10: Configure Trunking

Configure trunking in fa0/1-5 ports on Switch using:

```
Switch1(config)#interface range fa0/1-5
Switch1(config-if-range)#switchport mode trunk
Switch1(config-if-range)#switchport trunk native vlan 99 Switch1(config-if-range)#end

Switch2(config)#interface range fa0/1-5
Switch2(config-if-range)#switchport mode trunk
Switch2(config-if-range)#switchport trunk native vlan 99 Switch2(config-if-range)#end
```


## Step 11: Management VLAN

```
Switch1(config)#interface vlan 99 
Switch1(config-if)#ip address 192.168.99.1 255.255.255.0 Switch1(config-if)#no shutdown 
Switch1(config-if)#end

Switch2(config)#interface vlan 99 
Switch2(config-if)#ip address 192.168.99.2 255.255.255.0 Switch2(config-if)#no shutdown 
Switch2(config-if)#end
```



### Management VLAN Necessary?

```ad-important
ONLY USED to manage the switches of your network. If you have a layer 2 switch you give the IP to management VLAN to manage VLAN to manage it remotely.
```

## Step 12: Inter-VLAN Routing

Perform Basic router configuration. Change hostname and disable ip domain-lookup using:

```
Router(config)#hostname Router1 
Router1(config)#no ip domain-lookup
```
Now, configure the router with encapsulation dot1Q to link all VLANs, as follows:

```
Router(config)#interface gig0/0/0 
Router(config-if)#no shutdown 
Router(config-if)#exit 

Router(config)#interface gig0/0/0.1 
Router(config-subif)#encapsulation dot1q 1 
Router(config-subif)#ip address 192.168.1.100 255.255.255.0 Router(config-subif)#exit 

Router(config-if)#interface gig0/0/0.10 Router(config-subif)#encapsulation dot1Q 10 
Router(config-subif)#ip address 192.168.10.100 255.255.255.0 Router(config-subif)#exit

Router(config)#interface gig0/0/0.20 
Router(config-subif)#encapsulation dot1Q 20 
Router(config-subif)#ip address 192.168.20.100 255.255.255.0 Router(config-subif)#exit 

Router(config)#interface gig0/0/0.30 
Router(config-subif)#encapsulation dot1Q 30 
Router(config-subif)#ip address 192.168.30.100 255.255.255.0 Router(config-subif)#exit 

Router(config)#interface gig0/0/0.99 
Router(config-subif)#encapsulation dot1q 99 native 
Router(config-subif)#ip address 192.168.99.100 255.255.255.0 Router(config-subif)#exit
```
