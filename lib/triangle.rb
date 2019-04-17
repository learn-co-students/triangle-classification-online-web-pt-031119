class Triangle
  
  def initialize(left, right, bottom)
    @left = left 
    @right = right 
    @bottom = bottom
  end 
  
  def kind 
    
    if @right <= 0 || @left <= 0 || @bottom <= 0 
      raise TriangleError
    elsif @left + @right <= @bottom || @left + @bottom <= @right || @right + @bottom <= @left 
      raise TriangleError
      
      elsif @left == @right && @left == @bottom
        :equilateral 
      elsif @left == @right || @right == @bottom ||   @left == @bottom
        :isosceles 
      elsif @left != @right && @left != @bottom
        :scalene
    end 
    
  end
  
  class TriangleError < StandardError
    
  end
  
end
