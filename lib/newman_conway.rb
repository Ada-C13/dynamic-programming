

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  if(num < 1)
    raise ArgumentError
  elsif(num == 1)
    return "1"
  elsif(num == 2)
    return "1 1"
  end

  array = [0, 1, 1]
  while array.length <= num
    array.push(array[array[array.length - 1]] + array[array.length - array[array.length - 1]])
  end

  return array[1..array.length].join(" ")
end

# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))