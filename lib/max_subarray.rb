# frozen_string_literal: true

# Time Complexity: O(n)
# Space Complexity: O(1)

def max_sub_array(nums)
  return nil if nums.nil? || nums.empty?

  max_so_far = nums[0]
  curr_max = nums[0]

  nums[1..].each do |curr_num|
    curr_max = [curr_num, curr_num + curr_max].max
    max_so_far = [curr_max, max_so_far].max
  end

  max_so_far
end
