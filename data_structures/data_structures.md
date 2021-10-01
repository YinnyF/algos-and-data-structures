# Data Structures
* we will use data structures that come built in to almost all programming languages 
* explain the basics of how these structures work
* won't be going over how to use them in practise

### What is a Data Structure

> A data storage format. It is the collection of values and the format they are stored in, the relationships between the values in the collection as well as the operations applied on the data stored in the structure

* example: are a data structure, that store a collection of values, and each value is referenced using a reference or a key (0, 1, 2, ...)
* homogeneous containers in Swift/Java, can only contain values of the same type
* heterogeneous structures in Python/Ruby, can store any kind of value

### Arrays
* under the hood, strings are characters stored in a particular order in an array
* in Python an `Array` is best represented by the `List` data type
* an Array is a contiguous data structure (stored in memory next to each other) - retrieving values is easy
* a non contiguous data structure (the structure stores the value as well as a pointer to where the next value is) - increases the runtime of common operations
* in Python, lists allocate contiguous memory for the _pointer_ to the value stored somewhere else in memory
* used as a base for more advanced data structures
* used to gather results from running a loop
* used to collect items

### Ruby Arrays time complexity
| Operation | Complexity |
| --- | --- |
| push | O(1) |
| pop | O(1) |
| access | O(1) |
| find | O(n) |
| delete | O(n) |

### Hashes
* a hash converts your key into a number (using the hash method in Ruby) & then uses that number as the index
* used to count characters in a string
* used to map words to definitions, names to phone numbers, etc.
* used to find duplicates inside an array
* Hashes are one of the most helpful data structures when it comes to performance because of the constant O(1) store, delete & access time

## Ruby Hashes time complexity
| Operation | Complexity |
| --- | --- |
| store | O(1) |
| access | O(1) |
| delete | O(1) |
| find(value) | O(n) |

### Operations on Data Structures
* access and read values
* search for an arbitrary value
* insert values at any point into the structure
* delete values in the structure

### Stacks
* A stack is like a stack of plates, you put one plate on top of another & you can only remove the plate on top
* used to replace recursive methods with a regular loop
* used to keep track of work left to do, leaving the most recent on top
* used to reverse an array
* stacks (and queues) only have two operations, insert & delete, or push & pop. Search is very rare.

## Ruby Stacks time complexity
| Operation | Complexity |
| --- | --- |
| push | O(1) |
| pop | O(1) |
| find | - |
| access | - |

### Binary Trees
* no built-in binary tree implementation
* many variations of trees
* uses: data compression, routing tables, abstract syntax trees (AST)

### Ruby Binary Tree time complexity
| Operation | Complexity |
| --- | --- |
| insert | O(log n) |
| delete | O(log n) |
| find | O(log n) |
| access | - |

* a balanced binary tree is when all nodes have two children & all leaves have the same level
* if a tree becomes unbalanced, the performance degrades to O(n)
* in a self-balanced binary tree (like the Red-Black Tree, or AVL tree), every operation takes time proportional to the height (or level) of the tree

### Trie (prefix trees)
* a trie is a specialized tree-like data structure
* it's helpful for working with words, and then quickly searching for words that start with a prefix, or search for the full word
* uses: word games, spelling checker, autocomplete suggestions

### Ruby Trie time complexity
| Operation | Complexity |
| --- | --- |
| add | O(k) |
| include? | O(k) |
| words | O(k) |
_k denotes the size of the input string_


<!-- ### Why do we need more data structures than a programming language provides? -->


### Resources
https://www.rubyguides.com/2019/04/ruby-data-structures/
https://www.rubyguides.com/2017/08/ruby-linked-list/
