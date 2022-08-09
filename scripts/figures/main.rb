require_relative 'circle'
require_relative 'rectangle'
require_relative 'square'

puts "Circle"

ball = Circle.new
puts ball
puts ball.color
ball.get_area
ball.get_perimeter

20.times { print "-" }
puts "Rectangle"

brick = Rectangle.new
brick.width = 3.0
brick.length = 1.5
brick.get_area
brick.get_perimeter

20.times { print "-" }
puts "Square"

picture = Square.new
puts picture.get_side
picture.set_side(3.5)
picture.get_area
picture.set_length(10.5)
picture.get_area
picture.get_perimeter