

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  sequence = []
  sequence[0] = 0
  sequence[1] = 1
  sequence[2] = 1

  i = 3

  # handle base cases
  if num < 1
    raise ArgumentError, "input must be >= 1" 
  elsif num == 1
    return "#{sequence[1]}"
  elsif num == 2
    return "#{sequence[1]} #{sequence[2]}"
  else 
    # use given values to start calculating the rest of the sequence 
    while i <= num 
      sequence[i] = sequence[sequence[i - 1]] + sequence[i - sequence[i - 1]]
      i += 1 
    end 

  end 

  sequence.shift(1) # do not include 0 value in final result
  return sequence.join(" ")
end