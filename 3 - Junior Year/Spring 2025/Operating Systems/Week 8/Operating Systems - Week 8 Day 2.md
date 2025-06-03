Date: 19th March 2025
Date Modified: 19th March 2025
File Folder: Week 8
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Multicore & Multithreading

## Amdahl’s Law

$$\mbox{Speedup} = \frac{\mbox{Time to execute program on a single processor}}{\mbox{Time to Execute program on } N \mbox{parallel processors}} = \frac{1}{(1-f)+\frac{f}{N}}$$

```ad-note
- $f$ is fraction of code that can be *parallelized*
- $1-f$ is the fraction of code that *cannot* be parallelized (ex. serial)
```

### Example of Program Being Parallelable and Not Parallelable

![[Operating Systems - Week 8 Day 2 2025-03-19 08.32.53.excalidraw]]

$$f = 0.9$$
### Performance According to Amdahl’s Law

Even with 10% serial code, speedup is only 2.7 with 8 cores

![[parallel-8.gif | center]]

### Actual Multicore Performance

Overhead of communication and synchronization can tamp down performance

![[parallel-10.gif | center]]

## In-Class Example: Writing a Parallelized Version of This Algorithm

```ad-question
Assuming you have four threads to work iwth, write a parallelized version:
```

```c
def sum(arr):
	sum_res = 0
	for arr_item in arr
		sum_res += arr_item
	return sum_res
```

### My Solution

```c
def sum(arr):
	sum_res = 0
	divisions = sizeof(arr) / 4
	temp_sum_1 = thread(sum_threads(0, divisions-1));
	temp_sum_2 = thread(sum_threads(divisions, divisions*2-1));
	temp_sum_3 = thread(sum_threads(divisions*2, divisions*3-1));
	temp_sum_4 = thread(sum_threads(divisions*3, sizeof(arr)-1));
	sum_res = temp_sum_1 + temp_sum_2 + temp_sum_3 + temp_sum_4


def sum_threads(starting_point, ending_point)
	partial_sum = 0
	for(i = start_point, i < ending_point; i++) {
		partial_sum += arr[i]
	}
	return partial_sum
```

### Kropp Solution

```ad-note
Let's image we have four workers, and one main thread
```

```c
def sum(arr):
	for each w of 4 threads:
		tell work w to calcuale the sum of their foruth of the array
	add up all of the indiviudal sums

# Worker 1
# Give the first 1/4 of the data
def partial_sum(arr):
	sum_res = 0
	for arr_item in arr
		sum_res += arr_item
	return sum_res

# Worker 2
# Give the second 1/4 of the data
def partial_sum(arr):
	sum_res = 0
	for arr_item in arr
		sum_res += arr_item
	return sum_res

# Worker 3
# Give the third 1/4 of the data
def partial_sum(arr):
	sum_res = 0
	for arr_item in arr
		sum_res += arr_item
	return sum_res

# Worker 4
# Give the last 1/4 of the data
def partial_sum(arr):
	sum_res = 0
	for arr_item in arr
		sum_res += arr_item
	return sum_res
```

