# You are given a positive integer n, you can do the following operation any number of times:
# Add or subtract a power of 2 from n.
# Return the minimum number of operations to make n equal to 0.
# A number x is power of 2 if x == 2i where i >= 0.

# @param {Integer} n
# @return {Integer}
def min_operations(n)
  x = n
  length = 0
  operations = 0
  index = 0

  while x > 0 do
    if n & 1 == 1
      length += 1
      operations += 1
    elsif length > 1
      operations -= (length - 2)
      x += 2 ** (index - length)
      length = 1
    elsif length == 1
      x -= 2 ** (index + 1)
      length -= 1
    end
    index += 1
    n >>= 1
  end
  operations
end
