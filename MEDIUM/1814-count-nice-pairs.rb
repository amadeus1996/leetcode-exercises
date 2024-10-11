# You are given an array nums that consists of non-negative integers. Let us define rev(x) as the
# reverse of the non-negative integer x. For example, rev(123) = 321, and rev(120) = 21. A pair of
# indices (i, j) is nice if it satisfies all of the following conditions:
# 0 <= i < j < nums.length
# nums[i] + rev(nums[j]) == nums[j] + rev(nums[i])
# Return the number of nice pairs of indices. Since that number can be too large, return it modulo 10^9 + 7.

# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  t = Hash.new
  count = 0

  0.upto(nums.length - 1) do |i|
    aux = nums[i].to_s.reverse.to_i
    diff = nums[i] - aux
    if t.key?(diff)
      count += t[diff]
      t[diff] += 1
    else
      t[diff] = 1
    end
  end
  count % (10**9 + 7)
end