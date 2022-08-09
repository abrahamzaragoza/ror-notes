require_relative 'shape'

class Circle < Shape
  attr_accessor :radius

  def initialize
    @radius = 1.0
    super
  end

  def get_area
    puts (Math::PI * (@radius ** 2))
  end

  def get_perimeter
    # 2 PI radius or PI * diameter
    puts (2 * Math::PI * @radius)
  end

  def to_s
    puts "Circle[Shape[color=#{@color}, filled=#{@filled}], radius=#{@radius}]"
  end
end
