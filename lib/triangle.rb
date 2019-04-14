require 'pry'
class Triangle
  attr_accessor :a, :b, :c, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      @triangle = "invalid"
    elsif @a == 0 || @b == 0 || @c == 0
      @triangle = "invalid"
    else
      @triangle = "valid"
    end
  end

  def kind
    if @triangle == "invalid"
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle!"
    end
  end
end
