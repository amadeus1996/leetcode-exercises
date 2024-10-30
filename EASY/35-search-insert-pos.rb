# Given a sorted array of distinct integers and a target value, return the index if the target is found.
# If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  helper(nums, target, 0, nums.length - 1)
end

def helper(nums, target, left, right)
  if left <= right
    mid = (right - left) / 2 + left
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      return helper(nums, target, mid + 1, right)
    else
      return helper(nums, target, left, mid - 1)
    end
  end
  left
end