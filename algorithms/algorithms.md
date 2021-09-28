# Algorithms

### What is an algorithm?
* A set of steps a program takes to finish a task

### Why learn algorithms?
* Know that an algorithm exists
* Understanding when to apply an algorithm (algorithmic thinking)
* Deeper understanding about complexity and efficiency in programming

### Defining an algorithm
* Clearly defined problem statement, input, and output
* The steps in the algorithm need to be in a very specific order
* The steps need to be distinct
* Should produce a result
* Should complete in a finite amount of time

### How can we tell if an algorithm is correct?
* Consistent results

### Correctness
* An algorithm is said to be _correct_ if, for every input instance, it halts with the correct output

### Efficiency
* Time complexity - how long it takes for an algorithm to run
* Space complexity - amount of memory taken up on the computer
* Use worst case scenario as a benchmark to measure

### Algorithmic thinking
* Clarify input bounds
* Worst-case scenarios
* Understanding what works better in a given context

### Big O
> Big O notation is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity
* Theoretical definition of the complexity of an algorithm as a function of the size
* `O(n)` order of magnitude of complexity
* complexity is relative to other algorithms that solve the same problem
* measures the complexity as the input size (`n`) grows

**examples**
* `O(1)` constant time operation, input size does not matter
* `O(n)` linear time
* `O(n log n)` quasilinear time, `n * log n` operations (sorting algos like merge sort)
* `O(n^2)` quadratic time
* `O(n^k)` polynomial time
* `O(x^n)` exponential time (e.g. brute force algos)
* `O(n!)` factorial time (e.g. travelling salesperson with `n!` combinations)

### More notes on Big O
* in a binary search, the input set has to be sorted
* in practise, a linear search may be more performant up to a certain value of n
* best case (not really useful), average case (talk about this later), worst cases (of most interest)
