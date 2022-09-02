class Triangle
  # write code here
  attr_accessor :hypothenus, :adjacent, :opposite

  def initialize(hypothenus, adjacent, opposite)
    @hypothenus = hypothenus
    @adjacent = adjacent
    @opposite = opposite
  end

  def kind
    if (@hypothenus > 0 && @adjacent > 0 && @opposite > 0) && (((@hypothenus + @adjacent) > @opposite) && ((@adjacent + @opposite) > @hypothenus) && ((@opposite + @hypothenus) > @adjacent))
      if @hypothenus == @adjacent && @opposite == @adjacent
        :equilateral
      elsif @hypothenus == @adjacent || @hypothenus == @opposite || @adjacent == @opposite
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError  
    end 
  end
  

  class TriangleError < StandardError
  
  end
end
