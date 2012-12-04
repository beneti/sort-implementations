class Array
  def desc_insertion_sort
    for i in 1..self.length-1
      j = i
      val = self[i]
      while j > 0 && (self[j-1] <=> val) == -1 do
        self[j-1], self[j] = self[j], self[j-1]
        j -= 1
      end
      self[j] = val
    end
    self
  end
end
