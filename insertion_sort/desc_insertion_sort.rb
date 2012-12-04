class Array
  def desc_insertion_sort
    for i in 1..self.length-1
      j = i
      val = self[i]
      while j > 0 && self[j-1] < val do
        bigger = self[j-1]
        self[j-1] = self[j]
        self[j] = bigger
        j -= 1
      end
      self[j] = val
    end
    self
  end
end
