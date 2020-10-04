# Cadane's Algorithm
# Time Complexity: O(n) - need to go through each array element
# Space Complexity: O(1) - no data structures that grow if the input grows
def max_sub_array(nums)
    return nil if nums == nil || nums.empty?

    max_so_far = nums[0]
    max_ending_here = nums[0]

    i = 1
    while i < nums.size
        current_sum = max_ending_here + nums[i]
        # choose between current_sum and current value
        max_ending_here = [current_sum, nums[i]].max
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        end
        i += 1
    end
    return max_so_far
end

# Dynamic solution, which turns into Kadane's algorithm when refactored
# Time Complexity: O(n)
# Space Complexity: O(n) - max_sum_for_each_index will grow with the input growth
def max_sub_array(nums)
    return nil if nums == nil || nums.empty?

    max_sum_for_each_index = Array.new(nums.size)
    max_sum_for_each_index[0] = nums[0]

    nums.each_with_index do |el,i|
        next if i == 0
        max_sum_for_each_index[i] = [el, el + max_sum_for_each_index[i-1]].max
    end

    return max_sum_for_each_index.max
end
