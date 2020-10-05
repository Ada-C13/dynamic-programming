
# Time Complexity: 0(n)?
# Space Complexity: 0(1)?
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []

    local_max = 0
    global_max = 0
    
    i = 0
    while i < nums.length
        local_max = local_max + nums[i]
        local_max = local_max < 0 ? 0 : local_max
        if local_max > global_max
        global_max = local_max
        end
        i += 1
    end
    
    if global_max == 0
        global_max = nums.max
    end
    
    return global_max
end
