# Time complexity: ?
# Space Complexity: ?

def newman_conway(num)
  raise ArgumentError.new if num == 0

  return "1" if num == 1
  return "1 1" if num == 2

  array = []
  array[0] = 0
  array[1] = 1
  array[2] = 1
  tally = "1 1"
  i = 3

  until i > num
    array[i] = array[array[i - 1]] + array[i - array[i - 1]]
    tally += " #{array[i]}"
    i += 1
  end

  return tally
end 


