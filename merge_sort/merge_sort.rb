class Array
  def merge_sort
    tmp = []
    if self.length > 1
      half = self.length/2
      tmp = self[0, half].merge_sort
      tmp = tmp + self[half, self.length-1].merge_sort
      tmp = tmp.merge
    else
      tmp = self
    end
    tmp
  end

  def merge
    tmp = []
    size = self.length
    while(tmp.length != size) do
      min = self[0]
      ((self.length.to_f/2).ceil..self.length-1).each do |i|
        if (self[i] <=> min) == -1
          min = self[i]
          self.delete_at i
          break
        elsif i == self.length-1 && self[0] == min
          self.delete_at 0
        end
        i += 1
      end
      tmp << min
    end
    tmp
  end
end
