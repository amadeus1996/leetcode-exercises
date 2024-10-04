# Given a string s, find the length of the longest substring without repeating characters.

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  n = s.length
  i = 0
  j = 0
  count = 0
  lmax = 0
  t = Hash.new(0)

  until i == n do
    count += 1
    t[s[i]] += 1
    if t[s[i]] > 1
      if count - 1 > lmax
        lmax = count - 1
      end
      while t[s[i]] > 1 and j < i do
        t[s[j]] -= 1
        j += 1
        count -= 1
      end
    end
    i += 1
  end
  if count > lmax
    lmax = count
  end
  lmax
end
