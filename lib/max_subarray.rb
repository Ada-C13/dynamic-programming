# Time Complexity:  O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?
    max = nums[0]
    sum = 0
    i = 0
    while i < nums.length
      sum += nums[i]
      max = sum if sum > max
      sum = 0 if sum < 0
      i += 1
    end
    return max
  end