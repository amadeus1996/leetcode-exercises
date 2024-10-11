# You are given a 0-indexed array of positive integers nums. Find the number of triplets (i, j, k) that
# meet the following conditions:
# 0 <= i < j < k < nums.length
# nums[i], nums[j], and nums[k] are pairwise distinct.
# In other words, nums[i] != nums[j], nums[i] != nums[k], and nums[j] != nums[k].
# Return the number of triplets that meet the conditions.

# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
  n = nums.length
  count = 0
  0.upto(n - 3) do |i|
    (i + 1).upto(n - 2) do |j|
      if nums[i] != nums[j]
        (j + 1).upto(n - 1) do |k|
          if nums[j] != nums[k] and nums[i] != nums[k]
            count += 1
          end
        end
      end
    end
  end
  count
end