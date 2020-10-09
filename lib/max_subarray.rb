# Time Complexity: O(n)
# Space Complexity: O(n)
def max_sub_array(nums)
  max_so_far = max_ending_here = nums[0]
  for i in 1..nums.length - 1
    # puts nums[i]
    puts max_ending_here
    max_ending_here = max_ending_here + nums[i]
    if max_ending_here < nums[i]
      max_ending_here = nums[i]
    end
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
  end
  return max_so_far
end
