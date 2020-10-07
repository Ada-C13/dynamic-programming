# Reference: https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d

# Time Complexity: O(n), where n is the length of nums
# Space Complexity: O(1)
def max_sub_array(nums)
  max = nums[0]
  local_max = 0

  nums.each do |n|
    local_max += n
    max = local_max if max < local_max
    local_max = 0 if local_max < 0
  end

  return max
end
