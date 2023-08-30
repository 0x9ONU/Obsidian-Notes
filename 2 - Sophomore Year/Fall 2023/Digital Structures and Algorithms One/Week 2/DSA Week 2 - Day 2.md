Date: 30th August 2023
Date Modified: 30th August 2023
File Folder: Week 2
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Review Day #4
	- Nested Loops
	- SizeOf() Function

```

```ad-note
title: Homework
- [ ] HW #1 hard submission + github 📅 2023-09-01 
```

# `Sizeof()` function

Returns the total amount of memory storage (in bytes) needed to store the variable/object passed to it as an input argument
- If the identifier for an array is given as input, will return the overall number of bytes needed to store the array
- Used to determine the number of elements in an array (assuming `arr[]` is initialized above)

The following gets the number of elements within an array:
```c++
int n = sizeof(arr) / sizeof(arr[0])
```
