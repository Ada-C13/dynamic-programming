

# Time complexity: o(n)
# Space Complexity: o(n)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  array = [0, 1, 1]
  i = 3
  while i <= num
    array[i] = array[array[i - 1]] + array[i - array[i - 1]]
    i += 1
  end

  return array[1..-1].join(" ")
end