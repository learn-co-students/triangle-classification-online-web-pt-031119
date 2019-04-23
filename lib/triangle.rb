class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a    #side1
    @b = b    #side2
    @c = c    #side3
  end

  def kind
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else
      if a == b && a == c
        :equilateral
      elsif a == b && a != c || b == c && a != c || a == c && a != bhihihih iihihihihihihi
        :isosceles
      elsif a != b && a != c && b != c
        :scalene
      end
    end
  end
  class TriangleError < StandardError
  end

end
