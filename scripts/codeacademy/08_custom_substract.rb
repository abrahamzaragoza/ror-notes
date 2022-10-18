=begin
  ~25 -> 25 2's complement -> -26
  borrow = ~25 & 3 -> binary AND of -26, 3 -> 2
  minuend = 25 ^ 3 -> exlusive OR -> 26
  subtrahend = 2 << 1 -> left shift -> 4

  second loop

  borrow = ~26 ^ 4 -> 4
  minuend = 26 ^ 4 - > 30
  subtrahend = 4 << 1 - > 8

  third loop

  borrow = ~30 & 8 -> 0
  minuend = 30 ^ 8 -> 22
  subtrahend = 0 << 1 -> 0

  result = 22
=end

def custom_substract(minuend, subtrahend)
  while subtrahend != 0 do
    borrow = (~minuend) & subtrahend
    minuend = minuend ^ subtrahend
    subtrahend = borrow << 1
  end
  minuend
end

p custom_substract(7, 2)
p custom_substract(23, 3)
p custom_substract(280, 30)
p custom_substract(25, 3)
