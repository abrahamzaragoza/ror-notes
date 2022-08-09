require_relative 'rectangle'

class Square < Rectangle
  def initialize
    super
  end

  def get_side
    @length
  end

  def set_side(side)
    @length = side
    @width = side
  end

  def set_width(side)
    set_side = side

    # method with more logic
    # if side == @length
    #   @width = side
    # else
    #   puts "width should be equal to lenght"
    # end
  end

  def set_length(side)
    set_side(side)
  end

  def to_s
    puts "Square[Shape[color=#{@color}, filled=#{@filled}], width=#{@width}, length=#{@length}]"
  end
end
