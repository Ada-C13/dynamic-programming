# Time complexity: O(n)
# Space Complexity: O(n)

def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1

  cached_array = [1, 1, 1]

  for i in 3..num
    current = cached_array[cached_array[i - 1]] + cached_array[i - (cached_array[i - 1])]
    cached_array[i] = current
  end
  cached_array.delete_at(0)
  return cached_array.join(" ")
end






# def newman_conway(num)
#   raise ArgumentError if num <= 0
#   return "1" if num  == 1

#   cached_array = [0, 1, 1]
#   i = 3
#   until i >= num + 1
#     current = cached_array[cached_array[i - 1]] + cached_array[i - (cached_array[i - 1])]

#     cached_array[i] = current
#     i += 1
#   end
#   cached_array.delete_at(0)
#   return cached_array.join(' ')
# end
