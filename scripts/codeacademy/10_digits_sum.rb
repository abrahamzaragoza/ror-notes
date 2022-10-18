# frozen_string_literal: true

def digits_sum(number1, number2)
  a = [] << number1 << number2
  a.sort!
  (a[0]..a[1]).sum
end

p digits_sum(1, 10)
p digits_sum(10, 1)
