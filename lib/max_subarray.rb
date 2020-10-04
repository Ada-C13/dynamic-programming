
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    max_current = max_sum = nums[0]

    i = 1
    while i <= (nums.length - 1)
        max_current = [nums[i], (max_current + nums[i])].max
        if max_current > max_sum
            max_sum = max_current
        end
        i += 1
    end
    return max_sum
end
