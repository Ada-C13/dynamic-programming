

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError, "n must be > 0" if num < 1
  return '1' if num == 1
  return '1 1' if num == 2
  newman_nums = Array.new(num)
  newman_nums[0] = 0
  newman_nums[1] = 1
  newman_nums[2] = 1

  n = 3
  while n <= num
    newman_nums[n] = newman_nums[newman_nums[n - 1]] + newman_nums[n - newman_nums[n - 1]]
    n += 1
  end

  newman_nums.shift
  return newman_nums.join(' ')
end