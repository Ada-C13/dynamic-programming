

# Time complexity: O(n) => because I iterate depending on the input (num)
# Space Complexity: O(n) => because I create a new array depending on the input (num)

def newman_conway(num) # 9
  raise ArgumentError if num == 0 
  solution = []
  
  (1..num).each do |n|
    if n == 1 || n == 2
      solution[n] = 1 
    else 
      # P(P(n - 1)) + P(n - P(n - 1))
      solution[n] = solution[solution[n - 1]] + solution[n - solution[n - 1]]
    end 

  end 

  return solution[1..-1].join(" ")
end