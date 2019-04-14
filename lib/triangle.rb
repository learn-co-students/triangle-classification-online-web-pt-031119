require "pry"

class Triangle
  
  attr_reader :side1, :side2, :side3, :triangle
  
  class TriangleError < StandardError
    # triangle error code
  end
  
  def initialize (side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1 
      @triangle = "invalid"
    elsif @side1 == 0 || @side2 == 0 || @side3 == 0
      @triangle = "invalid"
    else
      @triangle = "valid"
    end
  end
  
  def kind
    if @triangle == "invalid" 
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3 
      return :isosceles 
    else 
      return :scalene
    end
  end
end
