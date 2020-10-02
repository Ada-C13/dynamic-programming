

# Time complexity: O(n) and actually O(3n) since I'm using shift and join? 
# Space Complexity: ?
# P(n) = P(P(n - 1)) + P(n - P(n - 1))
# P(5) = P(P(4)) + P(5 - P(4))
#      = P(2) + P(3) = 3
def newman_conway(num)
  raise ArgumentError.new("num must be a positive integer") if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  memo = ["", 1, 1]
  n = 3
  while n <= num
    pre = memo[n-1]
    res = memo[pre] + memo[n - pre] 
    memo[n] = res
    n += 1
  end

  memo.shift
  return memo.join(" ")
end