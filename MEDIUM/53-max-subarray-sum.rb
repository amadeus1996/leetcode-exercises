# Given an integer array nums, find the subarray with the largest sum, and return its sum.
#
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max_sum = -100001
  aux = 0

  nums.each do |num|
    aux += num
    if aux > max_sum
      max_sum = aux
    end

    if aux < 0
      aux = 0
    end
  end
  max_sum
end