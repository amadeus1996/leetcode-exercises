# Given an array of integers arr and two integers k and threshold, return the number of sub-arrays of
# size k and average greater than or equal to threshold.

# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} threshold
# @return {Integer}
def num_of_subarrays(arr, k, threshold)
  aux_threshold = k * threshold
  aux_sum = arr[0...k].sum
  count = 0
  if aux_sum >= aux_threshold
    count += 1
  end

  k.upto(arr.length - 1) do |i|
    aux_sum -= arr[i - k]
    aux_sum += arr[i]
    if aux_sum >= aux_threshold
      count += 1
    end
  end
  count
end