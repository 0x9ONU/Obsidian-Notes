Date: 9th June 2025
Date Modified: 9th June 2025
File Folder: Meeting Minutes
#research 

![[6-9-2025 Meeting 2025-06-09 15.04.29.excalidraw]]

**Journal**:
1. Record Arduino’s clock using oscilloscope to see clock shift and it’s affect on the period of the signal
2. Attacks
	- Spoofing/Relay: 

```ad-important
Arduino's can actually be good by by-passing the overhead and programming it using *assembly*
```

# Action Items
- [x] Build the network (Base station + 3 normal nodes + 1 malicious node) ✅ 2025-06-11
- [x] Implement the TDMA ✅ 2025-06-16
- [ ] Build the spoofing node
- [ ] Try to get eavesdropping to work

# New Stuff

## Pseudo Code for Replay/Eavesdropping Algorithm

```pseudo
	\begin{algorithm}
	\caption{Malicious Replay Node}
	\begin{algorithmic}
		\procedure{main}{phase}
			\state{set phase to $DEAD$}
			\if{$DEAD$}
				\state{harvest energy;}
				\if{$sufficient \space energy \space collected$}
					\state{set phase to $CAPTURE$}
				\endif
			\endif
			\if{$CAPTURE$}
				\state{wait for a packet from a benign node;}
				\if{$a \space packet \space received$}
					\state{determine type of packet (SYNC, ACK, Data);}
					\state{add packet to the appropriate buffer;}
					\if{$each \space buffer \space has \space a \space packet$}
						\state{set phase to $ACTIVE$;}
					\endif
				\endif
			\endif
			\if{$ACTIVE$}
				\state{synchronize using the synchronization packet;}
				\while{$still \space has \space sufficient \space energy$}
					\state{wait for the designated time slot;}
					\state{send packet;}
					\if{$sync \space packet \space received$}
						\state{send acknowledgement;}
						\state{set phase to $SYNC$}
					\endif
				\endwhile
				\state{set phase to $DEAD$;}
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```
