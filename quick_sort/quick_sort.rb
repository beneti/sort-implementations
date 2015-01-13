class Array
  def quick_sort
    return self if self.size <= 1
    pivot = self[self.length/2]
    left = self.select {|l| l < pivot}
    right = self.select {|r| r > pivot}
    pivots = self.select {|p| p == pivot}
    left.quick_sort + pivots + right.quick_sort
  end  

  def quick_sort2
    return self if self.size <= 1
    pivot = self[(rand(self.length)-1)]
    i = 0
    left = []
    right = []
    pivots = []
    self.each do |val|
      left << val if val < pivot
      right << val if val > pivot
      pivots << pivot if val == pivot
    end
    left.quick_sort2 + pivots + right.quick_sort2
  end
end