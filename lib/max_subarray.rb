
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    
    max_so_far = nums[0]
    max_ending_here = nums[0]

    i = 1
    while i < nums.length
      max_ending_here += nums[i]
      # assign max to current num if max_ending_here is less than nums[i]
      max_ending_here = nums[i] if max_ending_here < nums[i]
      max_so_far = max_ending_here if max_so_far < max_ending_here
      i += 1
    end

    return max_so_far
end
