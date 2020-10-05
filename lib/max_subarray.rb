
# Time Complexity: O(n) => because I iterate depending on the input (nums)
# Space Complexity: O(1) => because I use the constant numbers of the space (2 variables)
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    
    max_so_far = nums[0]
    current_max = nums[0]

    nums[1..-1].each do |current_num|
        current_max = [current_num, current_num + current_max].max 
        max_so_far = [current_max, max_so_far].max
    end

    return max_so_far
end
