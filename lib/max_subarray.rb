
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    return nums[0] if nums.length == 1

    current_max = global_max = nums[0]
    index = 1
    
    until index == nums.length
        # binding.pry
        if nums[index] > current_max + nums[index]
            current_max = nums[index]
        else
            current_max += nums[index]
        end

        global_max = current_max if current_max > global_max
        index += 1
    end
           
    return global_max

end

# Write a method to find the contiguous subarray in a 1-dimensional array with the largest sum.
# This can be solved using Kadane's Algorithm

# 

# ```
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
# ```

# ### Explanation

# The idea of the Kadane’s algorithm is to look for all positive contiguous segments of the array (max_ending_here is used for this). And keep track of the maximum sum contiguous segment among all positive segments (max_so_far is used for this). Each time we get a positive sum compare it with max_so_far and update max_so_far if it is greater than max_so_far

# There is also a subtle divide & conquer algorithm for this.