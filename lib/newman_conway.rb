# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num <= 0
  starting_array = [0, 1, 1] 

  result = "1"
  count = 3

  while count <= num
    starting_array[count] = starting_array[starting_array[count - 1]] + starting_array[count - starting_array[count - 1]]
    count += 1
  end
  
  (2..num).each do |i|
    result += " #{starting_array[i]}"
  end
  
  return result
end