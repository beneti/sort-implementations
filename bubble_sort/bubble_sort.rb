class Array
  def bubble_sort
    swap = true
    j = 0
    while swap do
      swap = false
      tail = self.length-2-j
      for i in 0..tail do
        if (self[i] <=> self[i+1]) == 1
          self[i], self[i+1] = self[i+1], self[i]
          swap = true
        end
      end
      j += 1
    end
    self
  end
end
