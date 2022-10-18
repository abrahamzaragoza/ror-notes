# frozen_string_literal: true

def count_arguments(*args)
  args.count
end

p count_arguments(1, 2, 3, 4, 5, { a: 'yes' }, 'string', %w[a b c])
