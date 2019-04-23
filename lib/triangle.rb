class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, 
  
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end 
  
  def kind
    
  end 
  
  class TriangleError < StandardError
    
  
end
