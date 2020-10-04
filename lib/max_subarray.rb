
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    return nums[0] if nums.length  == 1 
    
    current_sum = nums[0] + nums[1]
    max_sum = nums[0] + nums[1]
    nums.length.times do |i|
        current_sum = [(current_sum + nums[i]), nums[i]].max
        max_sum = [current_sum, max_sum].max
    end
    return max_sum
end
