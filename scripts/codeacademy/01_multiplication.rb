# frozen_string_literal: true

def multiplication(multiplicand, multiplier)
  result = multiplicand
  (1...multiplier).each { result += multiplicand }
  result
end

p multiplication(5, 3)
p multiplication(8, 8)
