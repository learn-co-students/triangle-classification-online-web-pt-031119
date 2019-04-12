class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
    
    # if a >= b + c || b >= a + c || c >= a + b
    #   raise TriangleError
    # end
    
    # if a <= 0 || b <= 0 || c <= 0 
    #   raise TriangleError
    # end
  end
  
  # def triangle 
  #   raise TriangleError if a >= b + c || b >= a + c || c >= a + b 
  
  #   if a <= 0 || b <= 0 || c <= 0 
  #     raise TriangleError
  #   end
  # end

  
  def kind
    raise TriangleError if a >= b + c || b >= a + c || c >= a + b 
  
    raise TriangleError if a <= 0 || b <= 0 || c <= 0 
    
    if a == b && a == c
      :equilateral
    elsif a == b || b == c || a == c 
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end