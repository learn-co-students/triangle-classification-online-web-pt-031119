class Triangle
  # write code here
  attr_accessor :side_a, :iside_b, :side_c 
  
  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end 
  
  def kind
    
    if side_a == side_b && side_b == side_c  
      :equilateral
    elsif side_a == side_b|| side_b == side_c || side_a == side_c
      :isosceles
    else 
      :scalene
  end 
  
  def validate_triangle
    real_traingle =[(side_a + side_b > side_c), (side_a + side_c > side_b), (side_b + side_c > side_a)]
    [(side_a, side_b, sied_c)].each {|t| real_triangle << false if t <=0}
    raise TriangleError if real_triangle.include? (false)
  end 
  
  class TriangleError < StandardError
  end 
  
end
