class Set
  def initialize
    @size = 0
    @contents = []
  end

  def size
    @size
  end

  def add(new_item)
    @contents[size] = new_item
    @size += 1
  end

  def remove(item)
    @size -= 1
  end

  def is_member(item)
    size.times do |i|
      if @contents[i] == item
        return true
      end
    end
    return false
  end
end

additional exercise:

finish remove (Write enough tests so I have 100% confidence),

write is_empty

implement Union, intersection, difference

remember: sets are unique
