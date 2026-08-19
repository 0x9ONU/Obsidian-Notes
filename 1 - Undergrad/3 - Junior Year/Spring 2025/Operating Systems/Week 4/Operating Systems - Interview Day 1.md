Date: 14th February 2025
Date Modified: 14th February 2025
File Folder: Week 4
#operatingsystems

```ad-abstract
title: Introduction
collapse: open

- **Name**: Ethan Berei
- **Date**: 2/14/2025

```

# Task 1

```ad-question
Write a C function that calculates the mean of an array in sequential order. Then write a C function that calculates the mean of the array in random order. Compare the computation time at the following different array sizes (100, 10000, 1000000, 100000000) and plot them on a chart with a paragraph discussion of your findings. You may find skeleton code below.

```c

#include <stdio.h>
#include <stdlib.h> 
#include <time.h> 
#define ARRAY_SIZE 1000000

int main() {
    int *array = malloc(ARRAY_SIZE * sizeof(int));
    
    // Initialize the array
    for (int i = 0; i < ARRAY_SIZE; i++) {
        array[i] = i;
    }
    
    // Measure time for sequential access
    clock_t start = clock();
    sequential_mean(array);
    clock_t end = clock();
    printf("Time taken for sequential mean: %lf seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    start = clock();
    random_mean(array);
    end = clock();
    printf("Time taken for random mean: %lf seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    return 0;
```

## Answer

```c
#include <stdio.h> 
#include <stdlib.h> 
#include <time.h> 
#define ARRAY_SIZE_1 100
#define ARRAY_SIZE_2 10000
#define ARRAY_SIZE_3 1000000
#define ARRAY_SIZE_4 100000000

// Initializes all 4 arrays to contain a set of sequential characters
void array_init(int* array, int size) {
    for (int i = 0; i < size; i++) {
        array[i] = i;
    }
}

int seqeuntial_mean(int* array, int size) {
    int summer = 0;
    for (int i = 0; i < size; i++) {
        summer = summer + array[i];
    }
    return summer / size;
}

void shuffle_indices(int* indices, int size) {
    for (int i = size - 1; i > 0; i--) {
        int j = rand() % (i + 1);
        int temp = indices[i];
        indices[i] = indices[j];
        indices[j] = temp;
    }
}

int random_mean(int* array, int size) {
    int summer = 0;
    int *indicies = malloc(size * sizeof(int));
    array_init(indicies, size);
    shuffle_indices(indicies, size);

    for (int i = 0; i < size; i++) {
        summer = summer + array[indicies[i]];
    }

    return summer / size;
}

void measure_time_sequential(int* array, int size) {
    clock_t start = clock();
    seqeuntial_mean(array, size);
    clock_t end = clock();
    printf("Array Size = %d Time taken for sequential mean: %lf seconds\n", size, (double)(end - start) / CLOCKS_PER_SEC);
}

void measure_time_random(int array[], int size) {
    clock_t start = clock();
    random_mean(array, size);
    clock_t end = clock();
    printf("Array Size = %d Time taken for random mean: %lf seconds\n", size, (double)(end - start) / CLOCKS_PER_SEC);
}

int main() {
    //Create All Arrays
    int *array_1 = malloc(ARRAY_SIZE_1 * sizeof(int));
    int *array_2 = malloc(ARRAY_SIZE_2 * sizeof(int));
    int *array_3 = malloc(ARRAY_SIZE_3 * sizeof(int));
    int *array_4 = malloc(ARRAY_SIZE_4 * sizeof(int));
    
    // Initialize the arrays
    array_init(array_1, ARRAY_SIZE_1);
    array_init(array_2, ARRAY_SIZE_2);
    array_init(array_3, ARRAY_SIZE_3);
    array_init(array_4, ARRAY_SIZE_4);

    // Run all seqential accesses and get time
    measure_time_sequential(array_1, ARRAY_SIZE_1);
    measure_time_sequential(array_2, ARRAY_SIZE_2);
    measure_time_sequential(array_3, ARRAY_SIZE_3);
    measure_time_sequential(array_4, ARRAY_SIZE_4);

    // Measure time for random access and get time
    measure_time_random(array_1, ARRAY_SIZE_1);
    measure_time_random(array_2, ARRAY_SIZE_2);
    measure_time_random(array_3, ARRAY_SIZE_3);
    measure_time_random(array_4, ARRAY_SIZE_4);

    return 0;
}
```

![[Pasted image 20250214085832.png]]

![[Pasted image 20250214091043.png]]

When comparing the timing results between the sequential and the random mean, it is clear that the sequential mean is much more efficient when it comes to accessing the memory. For small arrays, there is not much of a difference. However, once the size of the array $N$ gets substantially large, the true time complexity of the algorithm reveals itself. The main reasons why the algorithm is so slow is due to a myriad of factors. Firstly, the random algorithm has to calculate a new array to randomize the indices, which adds to the time complexity. However, the main bottleneck of the random mean algorithm comes from the hardware. Randomly accessing memory, especially if the memory is far apart, means a higher chance of having to grab a new page from the main memory and loading it into the cache. Additionally, the larger array means that you cannot store everything between both the $L_1$ and $L_2$ cache, which means the main memory or even the virtual memory has to be accessed more often, leading to potential slowdowns for large datasets.

# Task 2

```ad-question
Research and catalog the memory specs of your laptop or tablet (don't forget the memory on the CPU!). Then record its: 1) capacity, 2) write/read speed, and 3) estimated price. Using this information, chart the capacity versus write speed. Chart the capacity versus estimated price
```

**Caches** for the AMD Ryzen 5600U:
- Cache 1: 64kB (per core) (around $200 per MB) = ~$76 & ~200 Gbps (assuming latency of around 5 clock cycles)
- Cache 2: 512 kB (per core) (around $20 per MB)= ~\$60 & ~12Gbps (assuming latency of around 12 clock cycles)
- Cache 3: 16 MB (shared) (around $5 per MB) = ~ $80 & ~3.68 Gbps (assuming 40 cycles of latency)
- CPU Clock Speed: 2.3GHz 
- 

**Main Memory** on my Laptop: *16 GB DDR4 3200MHz* ~3200Mbps Read/Write = ~$30


**Virtual Memory** on my Laptop: *M.2 2242 SSD 512Gb 550Mbps Read/510Mbps Write* = ~$25

![[Pasted image 20250214100414.png]]

```ad-note
This uses logarithmic scaling to better compare them
```

# Reflection

To keep it brief, this took me all of class and over an hour afterwards. I really enjoyed this assignment and it showed a lot of interesting content that was related to the class. It really got me to think about the lecture material and how to apply it to real life. However, in the future, I would make both of these assignments separate to give enough time for everyone to do it during class.
