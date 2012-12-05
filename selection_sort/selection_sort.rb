class Array
  def selection_sort
    self.each_with_index do |e, i|
      min = i
      for j in i+1..self.length-1
        min = j if (self[j] <=> self[min]) == -1
      end
      self[min], self[i] = self[i], self[min] if min != i
    end
    self
  end
end

