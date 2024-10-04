# Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  aux = 1
  negative = n < 0
  n = n.abs

  while n != 0
    if (n & 1) != 0
      aux *= x
    end

    x *= x
    n >>= 1
  end

  !negative ? aux : 1 / aux
end
