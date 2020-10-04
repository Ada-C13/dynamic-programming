
# Time Complexity: O(n)
# Space Complexity: O(1)
# resource: https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/
def max_sub_array(nums)
    return 0 if nums == nil
    # Initialize:
    max_so_far = nums[0]
    max_ending_here = nums[0]

# Loop for each element of the array
    i = 1
    while i < nums.length 
        max_ending_here = max_ending_here + nums[i]
        if max_so_far < max_ending_here
            max_so_far = max_ending_here   
        elsif max_ending_here < 0
            max_ending_here = 0
        end
        i+=1
    end
    return max_so_far
end
