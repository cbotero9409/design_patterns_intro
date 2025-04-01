# caretaker.rb

class Caretaker
  def initialize
    @mementos = []
  end

  def add_memento(memento)
    @mementos << memento
  end

  def last_memento
    @mementos.pop
  end
end