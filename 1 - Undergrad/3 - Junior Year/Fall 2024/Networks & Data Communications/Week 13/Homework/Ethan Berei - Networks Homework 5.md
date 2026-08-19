
## Problem #1

```ad-question
Host A and B are communciating over a TCP conneciton, and Host B has already received form A all the bytes up thorugh `byte 150`. Suppose Host A sends three segmetns to Host B back-t0-back. The first, second, and third segments contain, 50, 80, and 100 bytes of data, respectively. Host B sends an acknowledgement whenever it receives a segment from Host A.
$$\quad$$
Suppose the first segment sent by A has lost and did not arrive at B. In addition, the second acknowledgement is from B is lost, while the third acknowledgement arrives in time.

Draw a timing diagram showing these segments and all other segemtns and acknowledgements sent to deliver the three segments successufully to B. Assume there is no additional pacet loss, and all future packets arrive on time. For each segment in your figure, provide the sequence number and the nubmer of bytes of data; for each acknowledge you add, provide the acknowledgement number.
```

![[Ethan Berei - Networks Homework 5 2024-11-18 10.16.01.excalidraw]]

## Problem #2

```ad-question
Host A and B are communicating over a TCP conneciton using Go-Back-N Pipelined Protocol, and Host B has already received from A all bytes up through `byte 512`. Host A is going to send six segments of each 64 bytes of data. Host A sends three segmetns back-to-backa nd waits for an acknowledgement before transmitting the other three segments. Moverover, Host B sends an acknowledgement whenever it receives a segment from Host A. 
$$\quad$$
Suppose the first acknowledgement form B has lost, the second segment sent by A has lost and did not arrive at B, and the third acknowledgement arrives late after expiring of round trip timer. However, all future segments and their acknowledgements arrive in time, and there is no loss of any future segmetn and acknowledgement.
$$\quad$$
Draw a timing diagram shwoing these segments and all other segments and acknowledgements sent to deliver the six segments successfully at B. For each segment in your figure, provide the sequence number and the number of bytes of data; for each acknowledgement you add, provide the acknowledgement number.
```

![[Ethan Berei - Networks Homework 5 2024-11-18 10.37.30.excalidraw]]