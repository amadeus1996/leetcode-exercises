# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the
# range that is missing from the array.

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  n = nums.length
  1.upto(n - 1) do |i|
    nums[0] ^= nums[i]
    n ^= i
  end
  nums[0] ^ n
end