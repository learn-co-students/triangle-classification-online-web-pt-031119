require 'pry'
class Triangle
  attr_reader :s1, :s2, :s3


  def initialize(s1, s2, s3)
    @sides = []
    @sides += [s1, s2, s3]
    binding.pry
  end

  def kind(s1, s2, s3)
    #conditional that determines which triangle the numbers given equates to & returns said triangle
    #triangle options are :equilateral, :scalene and :isosceles
    #:equilateral -> each side is equal
    if s1 == s2 == s3
    #  return :equilateral
    #end
    #:scalene -> each side is different
    #:isosceles -> has two equal sides
    #method should raise custom error is triangle is invalid & violates triangle inequality
    #triangle inequality -> sum of 2 sides doesn't exceed the 3rd
  end

  #class TriangleError < StandardError
  #  def message
  #    "This is not a valid Triangle."
  #  end
  #end
end
