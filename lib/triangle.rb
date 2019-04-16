class Triangle
 attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c

    if a >= b + c || b >= a + c || c >= a + b
      raise TriangleError
    end

    if a <= 0 || b <= 0 || c <= 0 
      raise TriangleError
    end
  end


  def kind
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
