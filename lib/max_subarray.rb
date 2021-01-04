
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    return nums[0] if nums.length == 1

    max_so_far = nums[0]
    max_ending_here = nums[0]

    for num in nums[1..-1] do         
        if((max_ending_here + num) > num)
            max_ending_here = max_ending_here + num
        else 
            max_ending_here = num
        end

        if(max_so_far < max_ending_here)
            max_so_far = max_ending_here
        end
    end

    return max_so_far
end
