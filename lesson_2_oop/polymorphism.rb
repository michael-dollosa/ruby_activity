class PolymophismSample
  def speak
    puts "This is an example of Polymorphism"
  end
end

class Polygon < PolymophismSample
  def speak
    puts "A polygon is a flat, two-dimensional (2D) shape with straight sides that is fully closed"
  end
end

#example of polymorphism are methods from parents being different based on type of child
class Square < Polygon
  def speak
    puts "I am a square and have 4 sides"
  end
end

class Triangle < Polygon
  def speak
    puts "I am a square and have 3 sides"
  end
end

polygon = Polygon.new()
polygon.speak
square = Square.new()
square.speak
triangle = Triangle.new()
triangle.speak

