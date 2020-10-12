

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2
  
  arr = [0, 1, 1]
  while arr.length <= num
    arr.push(arr[arr[arr.length - 1]] + arr[arr.length - arr[arr.length - 1]])
  end

  return arr[1..arr.length].join(" ")
end
