# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack,
# or -1 if needle is not part of haystack.

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  aux = haystack.index(needle)
  unless aux.nil?
    return aux
  end
  -1
end