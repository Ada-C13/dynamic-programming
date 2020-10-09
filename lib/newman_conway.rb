

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  new_array = [0, 1, 1]
  i = 3

  while i <= num
    new_array[i] = new_array[new_array[i - 1]] + new_array[i - new_array[i - 1]]
    
    i += 1
  end

  return new_array[1..-1].join(" ")

end