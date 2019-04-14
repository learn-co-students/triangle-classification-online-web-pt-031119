class Triangle
  attr_accessor :one, :two, :three
 def initialize(x,y,z)
   @one = x
   @two = y
   @three = z
 end
  
  def kind
   triangle_test
    if one == two && two == three
      :equilateral
    elsif one == two || two == three || one == three
      :isosceles
    else
      :scalene
    end
  
   end
 
 def triangle_test
    triangle_test = [(one + two > three), (one + three > two), (two + three > one)]
     [one, two, three].each { |s| triangle_test << false if s <= 0 }
       raise TriangleError if triangle_test.include?(false)
 end
 
 
 class TriangleError < StandardError
    # triangle error code
  end 
  
end



