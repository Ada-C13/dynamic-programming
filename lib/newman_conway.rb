# Time complexity: o(n)
# Space Complexity: o(1)
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  return "1 1" if num == 2

  array = [0,1,1]
  string = ""

  (3..num).each do |i|
    array.push(array[array[i - 1]] + array[i - array[i - 1]])
  end

  (1..array.length - 1).each do |i|
    array.length - 1 == i ? string << "#{array[i]}" : string << "#{array[i]} "
  end

  return string
end