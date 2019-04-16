require 'pry'

class Triangle

  attr_reader :sides, :a, :b, :c

  def initialize(a, b, c)
    @sides = [a, b, c]
    @a = a
    @b = b
    @c = c
  end

  def min_num_illegal?
    self.sides.any? {|side| side <= 0}
  end

  def triangle_inequality_illegal?
    true if a + b <= c || a + c <= b || b + c <= a
  end

  def equilateral?
    true if a == b && b == c
  end

  def isosceles?
    true if a == b || a == c || b == c
  end

  def scalene?
    true if a != b && a!= c && b!= c
  end

  def kind
    if self.min_num_illegal? || self.triangle_inequality_illegal?
      raise TriangleError
    elsif self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
