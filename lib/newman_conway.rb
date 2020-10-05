

# Time complexity: 0(n)?
# Space Complexity: 0(n)?
def newman_conway(num)
  raise ArgumentError if num == 0
  array = []

  array.push(1)
  return array.join(" ") if num == 1
  
  array.push(1)
  return array.join(" ") if num == 2

  i = 2
  while i < num
    array[i] = array[array[i-1]-1] + array[i - array[i-1]]
    i += 1
  end
 return array.join(" ")
end