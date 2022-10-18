def recursive_reverse_string(str, len, reverse = '')
  return reverse if str.empty?

  reverse.insert(-1, str.slice!(-1))
  recursive_reverse_string(str, len, reverse)
end

string = 'zaragoza'
p recursive_reverse_string(string, string.length)
