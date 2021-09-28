# returns the index position of the target if found, else returns -1
# time complexity: O(n)
# array.length will run in O(1)

def linear_search(array, target)
  for i in 0...array.length
    if array[i] == target
      return i
    end
  end

  return -1
end

# Testing

def verify(index)
  if index != -1
    puts "Target found at index: #{index}"
  else
    puts "Target not found in list"
  end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

result = linear_search(numbers, 12)
verify(result)

result = linear_search(numbers, 6)
verify(result)
