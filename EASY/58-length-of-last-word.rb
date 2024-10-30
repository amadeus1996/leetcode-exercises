# Given a string s consisting of words and spaces, return the length of the last word in the string.
# A word is a maximal substring consisting of non-space characters only.

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  count = 0
  i = s.length - 1

  until s[i] != " " or i == -1
    i -= 1
  end

  until s[i] == " " or i == -1
    count += 1
    i -= 1
  end
  count
end