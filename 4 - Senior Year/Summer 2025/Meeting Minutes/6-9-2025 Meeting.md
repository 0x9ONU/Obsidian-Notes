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

## Pseudo Code for Replay/Eavesdropping Algorithm Ideas

### Idea 1: Burst Replay Algorithm

```pseudo
	\begin{algorithm}
	\caption{Malicious Replay Burst Node}
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
					\state{add packet to the appropriate queue;}
					\if{$each \space queue \space has \space a \space packet$}
						\state{set phase to $ACTIVE$;}
					\endif
				\endif
				\if{$out-of-energy$}
					\State{set phase to $DEAD$;}
				\endif
			\endif
			\if{$ACTIVE$}
				\while{$still \space has \space sufficient \space energy$}
					\state{send one packet from each queue;}
					\state{remove packets from queue;}
					\if{$all \space queues \space are \space empty$}
						\state{set phase to $CAPTURE$}
					\endif
				\endwhile
				\state{set phase to $DEAD$;}
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```

### Idea 2: Smart Replay Algorithm

```pseudo
	\begin{algorithm}
	\caption{Malicious Smart Replay Node}
	\begin{algorithmic}
		\procedure{main}{phase}
			\state{set phase to $DEAD$}
			\if{$DEAD$}
				\state{harvest energy;}
				\if{$sufficient \space energy \space collected$}
					\state{set phase to $SYNC$}
				\endif
			\endif
			\if{$SYNC$}
				\state{wait for a synchronization packet;}
				\if{$a \space synchronization \space packet \space received$}
					\state{set phase to $CAPTURE$;}
				\endif
			\endif
			\if{$CAPTURE$}
				\state{wait for a packet from a benign node;}
				\if{$a \space packet \space received$}
					\state{determine type of packet (SYNC, ACK, Data);}
					\if{$data \space packet$}
						\state{add packet to the queue;}
						\state{set phase to $ACTIVE$;}
					\elseif{$sync \space packet$}
						\state{set phase to $SYNC$;}
					\endif
				\endif
				\if{$out-of-energy$}
					\State{set phase to $DEAD$;}
				\endif
			\endif
			\if{$ACTIVE$}
				\while{$still \space has \space sufficient \space energy$}
					\state{wait for the incorrect time to send a packet;}
					\if{$current \space time \space slot \space not \space equal \space to \space packet's \space time \space slot$}
						\state{send buffered packet;}
						\state{remove packet from queue;}
						\state{set phase to $CAPTURE$;}
					\endif
				\endwhile
				\state{set phase to $DEAD$;}
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```

### Idea 3: Delayed Replay Algorihtm

```pseudo
	\begin{algorithm}
	\caption{Malicious Delayed Replay Node}
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
					\if{$sync \space packet$}
						\state{add packet to queue;}
						\state{wait a long but random amount of time;}
						\state{set phase to $ACTIVE$;}
					\endif
				\endif
				\if{$out-of-energy$}
					\State{set phase to $DEAD$;}
				\endif
			\endif
			\if{$ACTIVE$}
				\while{$still \space has \space sufficient \space energy$}
					\state{send one packet from each queue;}
					\state{remove packets from queue;}
					\if{$all \space queues \space are \space empty$}
						\state{set phase to $CAPTURE$}
					\endif
				\endwhile
				\state{set phase to $DEAD$;}
			\endif
		\endprocedure
	\end{algorithmic}
	\end{algorithm}
```