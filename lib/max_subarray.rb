
# Time Complexity: O(n)
# Space Complexity: O(1), no new structures created
def max_sub_array(nums)
  return nil if nums.empty?
  return 0 if nums == nil
    
  max_so_far = nums[0]
  max_ending_here = nums[0]

  nums.each do |num|
    if max_ending_here < num
      max_ending_here = num
    elsif num < max_ending_here
      max_ending_here += num
    end

    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
  end

  return max_so_far
end
