# At a lemonade stand, each lemonade costs $5. Customers are standing in a queue to buy from
# you and order one at a time (in the order specified by bills). Each customer will only buy one
# lemonade and pay with either a $5, $10, or $20 bill. You must provide the correct change to each
# customer so that the net transaction is that the customer pays $5.
# Note that you do not have any change in hand at first.
# Given an integer array bills where bills[i] is the bill the ith customer pays, return true if you
# can provide every customer with the correct change, or false otherwise.

# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  a = 0
  b = 0
  0.upto(bills.length - 1) do |i|
    x = bills[i]
    ok = false
    if bills[i] > 5
      ok = true
      while bills[i] > 10 and b > 0
        bills[i] -= 10
        b -= 1
      end
      while bills[i] > 5 and a > 0
        bills[i] -= 5
        a -= 1
      end
      puts bills[i]
    end

    if bills[i] > 5 and ok
      return false
    end

    if x == 5
      a += 1
    elsif x == 10
      b += 1
    end
  end
  true
end
