
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty? 

    max_so_far = nums[0]
    max_ending_here = nums[0]
    i = 1

    while i < nums.length 
        max_ending_here = [nums[i], (max_ending_here + nums[i])].max
        max_so_far = [max_so_far, max_ending_here].max
        i += 1
    end 

    return max_so_far
end
