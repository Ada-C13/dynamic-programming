

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  if num <= 0
    raise ArgumentError
  elsif num == 1
    return "1"
  elsif num == 2
    return "1 1"
  end 

  storage = [0, 1, 1]
  answ = "1 1"
  curr = 3
  
  while curr < num + 1
    f = storage[curr - 1]
    s = curr - storage[curr - 1]
    storage[curr] =  storage[f] + storage[s]
    answ += " " + storage[curr].to_s
    curr += 1 
  end 
  return answ
end


