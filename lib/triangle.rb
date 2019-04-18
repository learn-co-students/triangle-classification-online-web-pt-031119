#require "pry"

class Triangle

 attr_reader :a, :b, :c
 
 class TriangleError < StandardError
   
  end

 def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
 end
 
  def equilateral?
    true if a == b && b == c
  end

  def isosceles?
    true if a == b || b == c || a == c
  end

  def scalene?
    true if a != b || b != c || a != c
  end
 
   def length_illegal?
    true if a <= 0 || b <= 0 || c <= 0
  end    

  def triangle_inequality_illegal?
    true if a + b <= c || b + c <= a || a + c <= b
  end
    
    
 
  def kind
   # binding.pry
    if length_illegal? || triangle_inequality_illegal?
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else scalene?
      :scalene
    end
    
  end

end
