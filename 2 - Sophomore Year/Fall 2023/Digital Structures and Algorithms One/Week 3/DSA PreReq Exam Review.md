Date: 7th September 2023
Date Modified: 7th September 2023
File Folder: Week 3
#DSA1

# Heap vs. Stack

**Heap** - Allocated dynamically during runtime
- larger than the stack
- Might be better overall when creating larger objects (i.e. large array)
**Stack** - Allocated statically to be used when  objects are made during compilation time.
- Be careful with large allocations due to the heap being larger

# Memory Leak

Whenever we lose access to a dynamically allocated information
- Either a pointer or an address
- Whenever a bit of information gets lost as its pointer no longer points to it
	- The pointer will no longer be able to release the memory through the `delete` operator

# Dangling Pointer

When the pointer is pointing to something, but it is no longer
- In scope
- In use
- Like an uninitalized pointer
- Avoid trying to call on that pointer

```ad-important
Can be avoided by setting the pointers back to nullptr
```

```ad-note
Out-of-scope dangling pointers can be avoided by using **pass-by-reference**
```

# `Cerr`

Behaves just like `cout` that tries to catch errors within a program
- Comes out **FASTER** than `cout` due to skipping the buffer that `cout` uses and sends it directly to the console.

```c++
cout << "enter a positive integer: ";
int n;
cin >> n;

if (n < 1) {
	cerr << "Program needs a positive integer!" << endl;
	return 1;
}
```

```ad-note
For *code snippets*, you do not have a write a full program (i.e. showing it is using namespace std or what libraries were included.)
```

