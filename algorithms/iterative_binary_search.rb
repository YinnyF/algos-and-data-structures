# assumes array is already sorted asc.
# returns the index position of the target if found, else returns -1
# time complexity: O(log n)
# space complexity: O(1) constant space because no additional space is needed

def iterative_binary_search(array, target)
  first = 0
  last = array.length - 1

  while first <= last
    midpoint = (first + last) / 2

    if array[midpoint] == target
      return midpoint
    elsif array[midpoint] < target
      first = midpoint + 1
    else
      last = midpoint - 1
    end
  end

  return -1
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

result = iterative_binary_search(numbers, 12)
verify(result)

result = iterative_binary_search(numbers, 6)
verify(result)
