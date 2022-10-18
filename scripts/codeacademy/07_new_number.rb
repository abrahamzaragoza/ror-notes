# frozen_string_literal: true

def new_number?(number)
  numbers = number.to_s.split('').to_a
  return true if numbers.include?('0')

  numbers.permutation do |n|
    permuted_number = n.join.to_i
    return false if permuted_number < number
  end
  true
end

p new_number?(859)
p new_number?(11)
p new_number?(40)
p new_number?(83_730_392)
p new_number?(893_931_976)
