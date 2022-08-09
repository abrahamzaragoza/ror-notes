require_relative 'shape'

class Rectangle < Shape
  attr_accessor :width, :length

  def initialize
    @width = 1.0
    @length = 1.0
    super
  end

  def get_area
    puts (@length * @width)
  end

  def get_perimeter
    puts ((2 * @length) * (2 * @width))
  end

  def to_s
    puts "Rectangle[Shape[color=#{@color}, filled=#{@filled}], width=#{@width}, length=#{@length}]"
  end
end
