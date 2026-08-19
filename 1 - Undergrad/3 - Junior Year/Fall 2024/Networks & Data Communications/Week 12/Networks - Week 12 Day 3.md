Date: 13th November 2024
Date Modified: 13th November 2024
File Folder: Week 12
#networks

```ad-summary
title: Today's Topics
- TCP Flow Control Practice Problems
```

# Practice Problems

##  Problem #1

```ad-question
A client and server communicate over a TCP connection using the Go-Back-N Pipelined Protocol. The client has to upload an amount of 385 Bytes to the server, where each segment consists of 55 Bytes of data. The client sends three segments back-to-back to the server and waits for an acknowledgment before transmitting the next three segments. Moreover, the server sends an acknowledgment whenever it receives a segment from the client. Suppose the segments with even sequence numbers are lost in the first transmission while their second transmission is always successful. However, there is no loss of any segments with the odd sequence number. In addition, all acknowledgments arrive on time. Draw a timing diagram showing all segments and acknowledgments sent to deliver 385 Bytes to the server successfully. For each segment in your figure, provide the sequence number and the number of bytes of data; for each acknowledgment you add, provide the acknowledgment number
```

![[Networks - Week 12 Day 3 2024-11-15 09.13.08.excalidraw]]

## Problem #2

```ad-question
A client and server communicate over a TCP connection using the Selective Repeat Pipelined Protocol. The client has to upload an amount of 385 Bytes to the server, where each segment consists of 55 Bytes of data. The client sends all segments back-to-back to the server and waits for an acknowledgment. Moreover, the server sends an acknowledgment whenever it receives a segment from the client. Suppose the segments with even sequence numbers are lost in the first transmission while their second transmission is always successful. However, there is no loss of any segments with the odd sequence number. In addition, all acknowledgments arrive on time. Draw a timing diagram showing all segments and acknowledgments sent to deliver 385 Bytes to the server successfully. For each segment in your figure, provide the sequence number and the number of bytes of data; for each acknowledgment you add, provide the acknowledgment number.
```

![[Networks - Week 12 Day 3 2024-11-15 09.32.48.excalidraw]]

