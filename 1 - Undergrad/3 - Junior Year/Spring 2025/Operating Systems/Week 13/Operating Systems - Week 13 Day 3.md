Date: 25th April 2025
Date Modified: 25th April 2025
File Folder: Week 13
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Tricky Race Conditions with Condition Variables

## Lost Wakeups

When a sender sends a notification, but the receiver is not at the wait state yet. The notification gets lost

```ad-example
1. Bob is expecting a call from Alice
2. Alice calls Bob's land line, but Bob is picking up groceries
3. The phone rings out, and Alice does not leave a message
4. Bob comes home, and has no idea Alice called
5. Bob waits by his phone all day waiting for Alice
```

## Spurious Wake Ups'

Sometimes, `cv.wait()` will wake up sometimes for no good reason

```ad-warning
This happens just whenever for some reason???
```

```ad-example
1. Allison wants to buy an ACM t-shirt. There are 30 members of ACM but the shirts come in batches of 10 shirts
2. While doing homework, Allison gets an email from the ACM president Gary that a batch of hshirts are in
3. Allison wraps upher hoework, but by the time she goes downstairs, the 10 t-shirts are already sold
```

