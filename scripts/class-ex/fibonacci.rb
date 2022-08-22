# this one only gives the result
def fib(n)
  return n if n < 2
  fib(n-1) + fib(n-2)
end

fib(10)

# this one prints all secuence
def recursive_fibonacci(old_value, new_value, limit)
  return if old_value > limit

  puts old_value

  recursive_fibonacci(new_value, new_value + old_value, limit)
end

recursive_fibonacci 0, 1, 20
