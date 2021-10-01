new_array = [1, 2, 3]
result = new_array[0]

# linear searching (Linear Runtime O(n))
p new_array.include?(2)
# true
p new_array.include?(5)
# false

# Array - Insert by appending or adding to the end (worst case - Constant Time O(1))
insertions_array = []
insertions_array.push(5)
# an alias for push
insertions_array << 6

# Array - Insert using an index value (worst case - Linear Runtime O(n))
insertions_array.insert(0, 4)

p insertions_array

# Delete operations shifts every element (worst case - Linear Runtime O(n))
arr =  [1, 2, 3, 4, 5, 6]
arr.delete_at(2) #=> 3
