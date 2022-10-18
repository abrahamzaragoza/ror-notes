# frozen_string_literal: true

def string_mapping(str)
  result = {}
  str.chars.each_with_index do |char, index|
    result[char.to_sym] ||= []
    result[char.to_sym] << index
  end
  result
end

p string_mapping('dodo')
p string_mapping('zaragoza')
