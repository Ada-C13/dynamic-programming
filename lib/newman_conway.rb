

# Time complexity: O(n)
# Space Complexity: O(n) - a size of a new current_nums will depend on the num value
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1

  current_nums = Array.new(num+1)
  current_nums[0] = 0
  current_nums[1] = 1
  current_nums[2] = 1

  # calculate and store values for each array element till num
  i = 3
  while i <= num
    current_nums[i] = current_nums[current_nums[i-1]] + current_nums[i - current_nums[i-1]]
    i += 1
  end
  
  # create a string and get rid of 0 at index 0
  return current_nums.join(" ").slice(2..-1)
end