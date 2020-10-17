
# Time Complexity: O(n), n = length of array
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    
    max_so_far = nums[0]
    max_ending_here = nums[0]

    (1..nums.length-1).each do |i|
        max_ending_here = max_ending_here + nums[i]
        if(max_ending_here < nums[i])
            max_ending_here = nums[i]
        end

        if(max_so_far < max_ending_here) 
            max_so_far = max_ending_here
        end
    end

    return max_so_far
end
