# Time complexity:  O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  sequence = [0, 1, 1]
  i = 3
  result = "1 1"
  until i >= num + 1
    current = sequence[sequence[i-1]] + sequence[i - (sequence[i-1])]
    sequence << current
    result += " #{current}"
    i += 1
  end
  return result
end 