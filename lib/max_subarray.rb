
# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
  return 0 if nums == nil
    
  max_sum = nums[0]
  max_ending_here = nums[0]

  i = 1
  while i < nums.length
    max_ending_here = max_ending_here + nums[i]
    max_ending_here = [max_ending_here, nums[i]].max
    max_sum = [max_sum, max_ending_here].max
    i += 1
  end

  return max_sum
end
