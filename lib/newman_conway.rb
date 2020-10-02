

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  arr = Array.new(num, 0)

  n = 0
  while n <= num
    if n == 1 || n == 2
      arr[n] = 1
    else
      arr[n] = arr[arr[n - 1]] + arr[n - arr[n - 1]]
    end

    n += 1
  end

  arr[1..(arr.length - 1)].join(' ')
end