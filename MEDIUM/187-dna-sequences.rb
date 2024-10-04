# The DNA sequence is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T'. For
# example, "ACGAATTCCG" is a DNA sequence. When studying DNA, it is useful to identify repeated
# sequences within the DNA.
# Given a string s that represents a DNA sequence, return all the 10-letter-long sequences (substrings)
# that occur more than once in a DNA molecule. You may return the answer in any order.

# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  t = Hash.new(0)
  result = Array.new
  0.upto(s.length - 10) do |i|
    aux = s[i, 10]
    if t[aux] != -1
      t[aux] += 1
    end
    if t[aux] > 1
      result.append(aux)
      t[aux] = -1
    end
  end
  result
end