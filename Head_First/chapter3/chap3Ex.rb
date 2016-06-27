class Rectangle
  attr_accessor :length, :width
  def area
    if length<0 || width < 0
      raise "Length or width can't be negative"
    end
    length*width
  end
end
class Square<Rectangle
  def length=(value)
    @length=value
    @width=value
  end
  def width=(value)
    @length=value
    @width=value
  end
end

rectangle = Rectangle.new
rectangle.width = 12
rectangle.length = 18
puts rectangle.area

square=Square.new
square.length=4
puts square.area

square2=Square.new
square2.length=6
puts square2.area

