# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  array = [num, 0]

  count = 1
  
  until count > num
    if count == 1 || count == 2
      array[count] = 1
    else
      array[count] = array[array[count - 1]] + array[count - array[count - 1]]
    end
    
    count += 1
  end

  p array[1..(array.length - 1)].join(' ')

  array[1..(array.length - 1)].join(' ')
end