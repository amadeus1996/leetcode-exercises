# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value
# to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

# @param {Integer} x
# @return {Integer}
def reverse(x)
  int_max = 2 ** 31 - 1
  aux = 0
  y = x > 0 ? 0 : -1
  x = x.abs

  until x == 0 do
    aux = aux * 10 + x % 10
    if y and aux > int_max + 1
      return 0
    elsif !y and aux > int_max
      return 0
    end
    x /= 10
  end

  y < 0 ? -aux : aux
end