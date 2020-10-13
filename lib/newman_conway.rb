

# Time complexity: ? o(n)
# Space Complexity: ? o(n)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return 1 if num == 1

  newman = [0, 1, 1]
  goal = "1 1"
  i = 3

  #P(n) = P(P(n - 1)) + P(n - P(n - 1)) 
  #https://www.geeksforgeeks.org/newman-conway-sequence/
  until i >= num + 1
    current_newman = newman[newman[i - 1]] + newman[i - (newman[i - 1])]
  
    newman << current_newman
    goal += " #{current_newman}"
    i += 1
  end

  return goal
end
