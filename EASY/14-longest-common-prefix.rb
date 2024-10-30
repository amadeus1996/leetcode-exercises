# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  res = ""
  n1 = strs[0].length - 1
  n2 = strs.length - 1
  ok = true
  0.upto(n1) do |i|
    1.upto(n2) do |j|
      if strs[j][i] != strs[0][i]
        ok = false
        break
      end
    end

    unless ok
      return res
    end
    res << strs[0][i]
  end
  res
end