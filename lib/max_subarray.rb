
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    max_so_far = nums[0]
    max_ending_here = nums[0]

    nums.each_with_index do |num, index|
        if index != 0
            max_ending_here += num
            if(max_ending_here < num)
                max_ending_here = num
            end

            if(max_so_far < max_ending_here)
                max_so_far = max_ending_here
            end
        end
    end

    return max_so_far
end
