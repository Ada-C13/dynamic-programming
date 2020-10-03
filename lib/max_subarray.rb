
# Time Complexity: O(n) where n is the length of the array
# Space Complexity: O(1)
def max_sub_array(nums)
  return nil if nums.empty?

  max_so_far = nums[0]
  max_ending_here = 0

  nums.each do |n|
    max_ending_here = [n, max_ending_here + n].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  return max_so_far
end
