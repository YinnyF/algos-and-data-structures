# assumes array is already sorted asc.
# returns the index position of the target if found, else returns -1
# time complexity: O(log n)
# space complexity: O(log n) since sublists are being created, additional memory is allocated (Ruby & Python)
# why the extra parameters? A slicing operation is not a constant time operation and has a runtime of O(k) where k represents the size of the slice.
# recursion vs iteration? iteration

def recursive_binary_search(array, target, first = 0, last = array.length - 1)
  if first > last
    return -1
  end

  midpoint = (first + last) / 2

  if array[midpoint] == target
    return midpoint
  elsif array[midpoint] < target
    recursive_binary_search(array, target, midpoint + 1, last)
  else
    recursive_binary_search(array, target, first, midpoint - 1)
  end

end

# testing

def verify(index)
  if index != -1
    puts "Target found at index: #{index}"
  else
    puts "Target not found in list"
  end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

result = recursive_binary_search(numbers, 12)
verify(result)

result = recursive_binary_search(numbers, 6)
verify(result)
