
# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  
  arr = [0,1,1]
  
  i = 3
  while i <= num
    arr << arr[arr[i - 1]] + arr[i - arr[i - 1]]
    i += 1
  end

  return arr[1..-1].join(' ')
end