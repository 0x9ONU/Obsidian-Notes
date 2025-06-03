Date: 7th April 2025
Date Modified: 7th April 2025
File Folder: Week 11
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Parallel Processing with C++ Multithreading

## Quick Start: “Hello World”

```c++
// Compile command: g++ -pthread -std=c++17 -o 01_hello_world01_hello_world.cpp 

#include <iostream> 
#include <thread> 
using namespace std; 
void hello() { 
	cout << "Hello Concurrent World\n"; 
} 
	int main() { // Launch a sperate thread to execute the function hello() 
	thread t(hello); // Wait for the new thread to finish 
	t.join(); 
	return 0; 
}
```

## Launching a Thread

Task for a thread can be:
- Function
- Function object with arguments that receives messages from other threads
- Function struct with arguments that receives messages from other threads

*Need* to construct a `thread` object:

```c++
void do_some_function():
std::thread my_thread (do_some_function);
```

Can pass an instance of a class by overloading the `()` operator:

```c++
class task() {
	public:
		void operator ()() const {
			// ... do something
		}
}
task t;
std::thread my_thread (t);
// ...
j.join(); //wait for task to finish
```

## Waiting for a Thread to Finish With a Struct

![[Pasted image 20250409083103.png]]

## Passing Arguments to a Thread Function

Additional arguments to a thread constructor
- When passing args by reference, safer to warp with `std::ref`

```c++
int main() {
	// Passing a primitive variable
	int n = 3;
	thread primitive_pass (printer, n);
	primitive_pass.join();

	//Passing a reference variable
	vector<int> v = {1, 2, 3};
	thread t2 (doubler, ref(v));
	t2.join();

	cout << "v is out now: ";
	for (int i = 0; i < v.size(); i++) {
		cout << v[i] << " ";
	}
	cout << endl;
}
```

