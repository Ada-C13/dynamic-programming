
# Time Complexity: O(n) - n is the length of the array
# Space Complexity: O(1) - not creating additional space in memory
def max_sub_array(nums)
  return nil if nums.empty?
  return nums[0] if nums.length == 1
    
  total = nums[0] # represents the current sum in question
  max = nums[0] # represents the maximum we've seen so far
    
  i = 1
  while (i < nums.length)
    # start comparing: should we take the best we can do, or should we start over from the current number?
    if (total + nums[i]) > nums[i] # if current sum plus current number is greater than the current number
      total += nums[i] # add it to the sum
      if max < total # if the max_so_far is less than the current_total
        max = total # max is equal to the total
      end
    else # the current sum plus the current number is less than or equal to the current number
      total = nums[i] # current total equals the current number
      if max < nums[i] # if the maximum is less than the current number
        max = nums[i] # max is the current number
      end
    end
    i += 1
  end
    
  return max
end