# Given two non-negative integers num1 and num2 represented as strings, return the
# product of num1 and num2, also represented as a string.
# Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  x = 0
  y = 0
  p = 1

  (num1.length - 1).downto(0) do |i|
    x = num1[i].to_i * p + x
    p *= 10
  end

  p = 1
  (num2.length - 1).downto(0) do |i|
    y = num2[i].to_i * p + y
    p *= 10
  end

  (x * y).to_s
end