
# Time Complexity: ? o(n)
# Space Complexity: ? o(n)?
def max_sub_array(nums)
    return 0 if nums == nil
    
   current_sum = nums.first
   max_number = nums.first

   #use the spread here to loop through
   (1...nums.length).each do |i|
    current_sum += nums[i]
    #check if current sum is larger than max, then max is the current num
    if current_sum > max_number
        max_number = current_sum
    end
    #if current sum is less than zero, then current zum equals 0
    if current_sum < 0
        current_sum = 0
    end
end

return max_number

end
