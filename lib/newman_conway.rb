# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError.new("number must be bigger than 2") if num == 0 
  return "1" if num == 1
  return "1 1" if num == 2
  p = []
  p[0] = 0 
  p[1] = 1
  p[2] = 1

  i = 3
  while i <= num
    p[i] = (p[p[i - 1]] + p[i - p[i - 1]])
    i += 1
  end
  return p[1..-1].join(" ") 
  
end
