

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError, "num must be > 0" if num <= 0

  return '1' if num == 1
  return '1 1' if num == 2

  # build a memo of subproblems
  # fill in the base case
  seq = [0, 1, 1]
  
  # solve all subproblems
  n = 2
  for n in (3..num) do
    seq.push(seq[seq[n-1]] + seq[n-seq[n-1]])
    n += 1
  end

  return seq[1..num].join(' ')
end 