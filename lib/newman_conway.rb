

# Time complexity: O(n)
# Space Complexity: O(n)
# resource: https://www.geeksforgeeks.org/print-n-terms-newman-conway-sequence/
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  return "1 1" if num == 2
  arr = []
  arr[0] = 0
  arr[1] = 1
  arr[2] = 1
  result = "1 1"
  i = 3
  while i <= num
    arr[i] = arr[arr[i - 1]] + arr[i - arr[i - 1]]
    result += " #{arr[i]}"
    i += 1
  end
  return result
end