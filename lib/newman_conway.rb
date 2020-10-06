require 'pry'
# P(n) = P(P(n - 1)) + P(n - P(n - 1))

# Eg 1
# Input : 13
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8

# Input : 20
# Output : 1 1 2 2 3 4 4 4 5 6 7 7 8 8 8 8 9 10 11 12

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  
  if num <= 0
    raise ArgumentError.new
  end

  sequence = []

  num.times do |i|
  
    if i < 2
      sequence << 1
    else
      prev = sequence[i - 1]
      sequence << sequence[prev - 1] + sequence[i - prev]
    end  
  end

  return sequence.join(" ")
end

      