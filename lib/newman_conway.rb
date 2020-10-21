

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError, 'must be number > 0' if num == 0 
  return "1" if num == 1
  array = Array.new(num)
  array[0] = 0
  array[1] = 1
  array[2] = 1
  i = 3
  while i <= num
    array[i] = array[array[i - 1]] + array[i - array[i - 1]]
    i += 1
  end
  return array[1..num].join(' ')
end


# [Newman-Conway sequence] is the one which generates the following integer sequence. 
# 1 1 2 2 3 4 4 4 5 6 7 7….. 
# and follows below recursive formula.

# P(1) = 1
# P(2) = 1
# for all n > 2
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# Given a number n then print n terms of Newman-Conway Sequence

# Examples:

# Input : 13
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8

# Input : 20
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8 8 8 8 9 10 11 12
# You should be able to do this in O(n) time complexity.

