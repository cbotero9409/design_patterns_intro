# iterator.rb

class Iterator
  def initialize(collection)
    @collection = collection
    @index = 0
  end

  def next
    return unless has_next?

    @index += 1
    @collection.get_element(@index - 1)
  end

  def has_next?
    @index < @collection.size
  end
end