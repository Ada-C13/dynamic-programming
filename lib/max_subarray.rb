
# Time Complexity: O(n)
# Space Complexity: O(1) 
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    return nums[0] if nums.length  == 1 

    highest_peak = nums[0]
    highest = nums[0]
    i = 1 

    while i < nums.length 
        highest_peak += nums[i]

        highest_peak = nums[i] if highest_peak < nums[i]
        highest = highest_peak if highest < highest_peak
        i += 1
    end 

    return highest
    
end


