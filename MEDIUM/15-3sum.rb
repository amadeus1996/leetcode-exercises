# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that
# i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
# Notice that the solution set must not contain duplicate triplets.

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = Array.new
  j = 0, k = 0
  n = nums.length
  nums = nums.sort

  (0...n).each { |i|
    if i > 0 and nums[i] == nums[i - 1]
      next
    end

    j = i + 1
    k = n - 1

    while j < k
      sum = nums[i] + nums[j] + nums[k]
      if sum > 0
        k -= 1
      elsif sum < 0
        j += 1
      else
        result.append([nums[i], nums[j], nums[k]])
        j += 1
        while nums[j] == nums[j - 1] and j < k
          j += 1
        end
      end
    end
  }
  result
end