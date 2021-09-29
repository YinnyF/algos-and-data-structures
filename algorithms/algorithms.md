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
* Clarify input bounds and outputs
* Worst-case scenarios
* Understanding what works better in a given context

### Big O
> Big O notation is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity
* Theoretical definition of the complexity of an algorithm as a function of the size
* `O(n)` order of magnitude of complexity
* complexity is relative to other algorithms that solve the same problem
* measures the complexity as the input size (`n`) grows

**time complexity examples**
* `O(1)` constant time operation, input size does not matter
* `O(n)` linear time
* `O(log n)` logarithmic time (like binary search)
* `O(n log n)` quasilinear time, `n * log n` operations (sorting algos like merge sort)
* `O(n^2)` quadratic time
* `O(n^k)` polynomial time
* `O(x^n)` exponential time (e.g. brute force algos)
* `O(n!)` factorial time (e.g. travelling salesperson with `n!` combinations)

### More notes on Big O
* in a binary search, the input set has to be sorted
* in practise, a linear search may be more performant up to a certain value of n
* best case (not really useful), average case (talk about this later), worst cases (of most interest)

### Big O: log base 2 or log base 10??
* Big O notation is usually written showing only the asymptotically highest order of `n`
* in Big O notation, `O(log n)` is the same for all bases, it doesn't matter what base it is
* we generally disregard constants in complexity analysis (log base 2 and log base 10 are related by a constant factor)

### What is a recursive algorithm?
* involves a set of stopping conditions (base case)
* must change its state and move toward the base case
* an algorithm that calls itself

### Recursion vs Iteration?
* `recursive depth` is the number of times a recursive function calls itself
* iterative solutions usually involve loops
* in _functional languages_, we try to avoid modifying data that is given to a function (immutability), and prefer using recursion (further reading: tail call optimisation)
* Python has a maximum recursion depth, and prefers and iterative solution
* in Ruby it is often preferable to avoid recursion and use iteration instead. Ruby (and most imperative programming languages) have very useful language constructs to aid with iterating over data
* recursion can end up being slower and use more memory ([discussion](https://stackoverflow.com/questions/3021/what-is-recursion-and-when-should-i-use-it/3093#3093))

### Why does recursion matter?
* Space complexity - dependent on language used

### Space Complexity
* a measure of how much **extra** storage is needed as a particular algorithm grows
* measured using worst case scenario using Big O notation
* `O(1)` constant space, no additional space required
* `O(log n)` logarithmic space

### Summary
| Algorithm | Time Complexity | Space Complexity |
| ------ | ------ | ----- |
| Linear Search | linear time | constant space |
| Binary Search (iterative) | logarithmic time | constant space |
| Binary Search (recursive) | logarithmic time | logarithmic space |
_* ruby_
