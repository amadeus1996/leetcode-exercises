# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract
# 1 from it.

# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  count = 0
  until num == 0
    if num & 1 == 1
      num -= 1
    else
      num >>= 1
    end
    count += 1
  end
  count
end