
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil

    max_so_far = nums[0]
    curr_max = nums[0]
    arr_size = nums.size

    for i in 1...arr_size
        curr_max = (nums[i] > curr_max+nums[i]) ? nums[i] : curr_max+nums[i]
        max_so_far = (max_so_far > curr_max) ? max_so_far : curr_max
    end

    max_so_far

end


