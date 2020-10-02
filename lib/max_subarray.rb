
# Time Complexity: O(n)
# Space Complexity: (1)
def max_sub_array(nums)
    return 0 if nums == nil
    current_max = nums[0]
    global_max = nums[0]

    for i in 0...nums.length 
        if current_max < nums[i]
            current_max = nums[i]
        elsif nums[i] < current_max
            current_max = current_max + nums[i]
        end 
        if current_max > global_max
            global_max = current_max
        end 
    end 
    return global_max
end
