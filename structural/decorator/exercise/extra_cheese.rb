# extra_cheese.rb

require_relative 'pizza_decorator'

class ExtraCheese < PizzaDecorator
  def description
    super + " + extra cheese"
  end

  def cost
    super + 2
  end
end