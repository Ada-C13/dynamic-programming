

# Time complexity: O(n)
# Space Complexity: O(1)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  array = [0, 1, 1]

  i = 3

  until i == num + 1
    current = array[array[i - 1]] + array[i - array[i - 1]]
  
    array << current

    i += 1
  end
  return array[1..-1].join(' ')
end