class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @sides = []
    @sides += [s1, s2, s3]
  end

  def kind
    a = @sides[0]
    b = @sides[1]
    c = @sides[2]
    if @sides.each.any? {|s| s <= 0}
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif   @sides.uniq.size == 2
      return :isosceles
    elsif   @sides.reverse == @sides
      return :equilateral
    elsif  @sides.each do |s|
      i = 0
      @sides[i] != s
      i += 1
    end
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid Triangle."
    end
  end
end
