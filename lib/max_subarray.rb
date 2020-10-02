
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.nil? || nums.length == 0
    
    # initialize 
    max_so_far = 0
    max_ending_here = 0
    i = 0 

    # handle all negatives array case 
    if nums.none? { |num| num.positive? }
        return nums.max
    else 
        # apply Kadane’s Algorithm
        while i < nums.length 
            max_ending_here = max_ending_here + nums[i]
    
            if max_ending_here < 0 
                max_ending_here = 0
            end 
    
            if max_so_far < max_ending_here
                max_so_far = max_ending_here
            end 
    
            i += 1
        end 
    end 

    return max_so_far
end
