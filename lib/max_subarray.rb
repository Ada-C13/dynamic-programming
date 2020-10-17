# Time Complexity: on
# Space Complexity: o1
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []
    
    max_so_far = nums[0]
    sum_ending_here = nums[0]

    nums[1..-1].each do |num|
        sum_ending_here = [sum_ending_here + num, num].max
        
        if max_so_far < sum_ending_here
            max_so_far = sum_ending_here
        end
    end

    return max_so_far
end
