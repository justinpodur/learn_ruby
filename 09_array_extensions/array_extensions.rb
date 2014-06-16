class Array
  def sum
    #self.size == 0 ? 0 : self.inject(&:+)
    if self.size == 0 
    	return 0
    else
    	self.inject {|sum, n| sum += n}
    end

  end
  def square
    self.map { |n| n * n }
  end
  def square!
    self.map! { |n| n * n }
  end
end
