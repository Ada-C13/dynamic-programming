# Reference: https://www.geeksforgeeks.org/print-n-terms-newman-conway-sequence/

# Time complexity: O(n) if num is greater than 2, where n is num 
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  sequence = [0, 1, 1]
  output = ""
  output += "#{sequence[1]}" + " "
  output += "#{sequence[2]}" + " " if num > 1

  i = 3
  while i <= num
    sequence << sequence[sequence[i - 1]] + sequence[i - sequence[i - 1]]
    output += "#{sequence[i]}" + " "
    i += 1
  end

  return output.chomp(" ")
end
        