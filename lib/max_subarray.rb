
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums == nil || nums.empty?
    return nums[0] if nums.length == 1
    max = nums[0] # start with first element and then skip in loop
    current = nums[0]
    i = 1
    while i < nums.length 
        current += nums[i]
        if max < current
            max = current
        end
        if current < 0
            current = 0
        end
        i += 1
    end
    return max
end

# Write a method to find the contiguous subarray in a 1-dimensional array with the largest sum.

# This can be solved using Kadane's Algorithm

# Initialize:
#     max_so_far = 0
#     max_ending_here = 0

# Loop for each element of the array
#   (a) max_ending_here = max_ending_here + a[i]
#   (b) if(max_ending_here < 0)
#             max_ending_here = 0
#   (c) if(max_so_far < max_ending_here)
#             max_so_far = max_ending_here
# return max_so_far

# The idea of the Kadane’s algorithm is to look for all positive contiguous segments of the array (max_ending_here is used for this). 
# And keep track of the maximum sum contiguous segment among all positive segments (max_so_far is used for this). 
# Each time we get a positive sum compare it with max_so_far and update max_so_far if it is greater than max_so_far

# There is also a subtle divide & conquer algorithm for this.