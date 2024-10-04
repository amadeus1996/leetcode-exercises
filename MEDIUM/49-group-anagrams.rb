# Given an array of strings strs, group the anagrams together. You can return the answer
# in any order.

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = []
  t = Hash.new
  i = 0
  strs.each { |word|
    aux = word.chars.sort.join
    if !t[aux]
      result.append([word])
      t[aux] = i
      i += 1
    else
      result[t[aux]].append(word)
    end
  }
  result
end