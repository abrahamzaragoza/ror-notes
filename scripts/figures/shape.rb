class Shape
  attr_accessor :color, :filled

  def initialize()
    @color = "red"
    @filled = "true"
  end

  def is_filled
    puts @filled
  end

  def get_area
  end

  def get_perimeter
  end
  
  def to_s
    puts "Shape[color=#{@color}, filled=#{@filled}"
  end
end
