# You are given two strings of the same length s and t. In one step you can choose any character of t and
# replace it with another character.
# Return the minimum number of steps to make t an anagram of s.
# An Anagram of a string is a string that contains the same characters with a different (or the same)
# ordering.

# @param {String} s
# @param {String} t
# @return {Integer}
# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  a = Array.new(26, 0)
  count = 0
  s.each_char do |char|
    a[char.ord - 97] += 1
  end
  t.each_char do |char|
    aux = char.ord - 97
    if a[aux] > 0
      a[aux] -= 1
    else
      count += 1
    end
  end
  count
end