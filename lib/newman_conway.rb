

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  s = [0, 1, 1]
  i = 3 

  if num == 0 
    raise ArgumentError, "Number should be greater or equal to 1"
  elsif num == 1 
    return "1"
  elsif num == 2 
    return "1 1"
  else 
    while i <= num 
      s[i] = s[s[i - 1]] + s[i - s[i - 1]]
      i += 1 
    end 
  end 
  # remove first element and return the sequence as string 

  return s.drop(1).join(" ")

end