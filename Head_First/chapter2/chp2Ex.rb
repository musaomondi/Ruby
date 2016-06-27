class Rectangle
  attr_accessor :length, :width
  def area
  if length<0 || width < 0
    raise "Length or width can't be negative"
  end
  length*width
  end
end

def paragraph(string)
  "<p>#{string}</p>"
end

def image(source, width = 100, height = 100)
    "<img src='#{source}' width='#{width}' height='#{height}'/>"
end

rectangle = Rectangle.new
rectangle.width = 12
rectangle.length = 18
puts rectangle.area

puts paragraph("Hello, world!")
puts image("puppy.jpg", 800, 600)
