# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?
    return nums[0] if nums.length == 1

    max_so_far = nums.min
    max_ending_here = 0

    index = 0
    pointer2 = 1
    while index <= nums.length - 1 || pointer2 <= nums.length - 1
        max_ending_here = max_ending_here + nums[index]
        if max_ending_here > max_so_far
            max_so_far = max_ending_here
            index += 1
        else
            max_ending_here = 0
            max_ending_here = max_ending_here + nums[pointer2]
            pointer2 += 1
            index = pointer2
        end
    end

    if max_so_far < max_ending_here
        max_so_far = max_ending_here
    end

    return max_so_far
end