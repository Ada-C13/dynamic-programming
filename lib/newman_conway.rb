# Time complexity: O(n) and actually O(3n) since I'm using shift and join? 
# Space Complexity: O(n) for the additional memo array storing n of the sequence
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
def newman_conway(num)
  raise ArgumentError.new("num must be a positive integer") if num <= 0
  return "1" if num == 1

  # n starts at 3 per newman_conway property, though all indice in memo[] need to deduct by 1
  memo = [1, 1]
  n = 3
  while n <= num
    pre = memo[n - 1 - 1]                               # pre = P(n-1)
    memo[n - 1] = memo[pre - 1] + memo[n - pre - 1]     # P(n) stored at index (n-1) = P(P(n - 1)) + P(n - P(n - 1)) 
    n += 1
  end

  return memo.join(" ")
end


# alternative solution w/o shifting indice
# def newman_conway(num)
#   raise ArgumentError.new("num must be a positive integer") if num <= 0
#   return "1" if num == 1
#   memo = ["", 1, 1]
#   n = 3
#   while n <= num
#     pre = memo[n-1]
#     memo[n] = memo[pre] + memo[n - pre] 
#     n += 1
#   end
#   memo.shift
#   return memo.join(" ")
# end