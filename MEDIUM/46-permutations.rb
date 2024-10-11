# Given an array nums of distinct integers, return all the possible permutations. You can return the
# answer in any order.

# @param {Integer[]} nums
# @return {Integer[][]}
def bkt(k, sol, nums, result)
  0.upto(nums.length - 1) do |i|
    sol[0] = true
    0.upto(k - 1) do |j|
      if sol[j] == nums[i]
        sol[0] = false
        break
      end
    end

    if sol[0]
      sol[k] = nums[i]
      if k == nums.length
        result.append(sol[1..])
      else
        bkt(k + 1, sol, nums, result)
      end
    end
  end
end

def permute(nums)
  sol = Array.new(nums.length, '-')
  result = []
  bkt(1, sol, nums, result)
  result
end