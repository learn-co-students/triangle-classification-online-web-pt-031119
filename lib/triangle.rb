require 'pry'

class Triangle

  
  def initialize(side1,side2,side3)
    #binding.pry
    @triSides = []
    @side1 = side1
    @triSides << @side1
    @side2 = side2
    @triSides << @side2
    @side3 = side3
    @triSides << @side3

  end

  def tri_ineq
    sorted = @triSides.sort
    greatest_side = sorted.pop
    greatest_side < sorted.sum

  end

  def valid?
    
    if @triSides.all?(&:positive?) && tri_ineq == true
      true
    else
      false
      
    end

  end

  def kind
    if valid? == true
    
      if @side1 == @side2 && @side1 == @side3
        :equilateral
        
      elsif @side2 == @side3 && @side2 != @side1
        :isosceles

      elsif @side1 == @side3 && @side1 != @side2
        :isosceles

      elsif @side1 == @side2 && @side1 != @side3
        :isosceles

      elsif @side1 != @side2 && @side1 != @side3
        :scalene
      end

    elsif valid? == false
      raise TriangleError
      
    end

  end

  class TriangleError < StandardError
    def message
      "error message."

    end

  end

end
