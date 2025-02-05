# pepperoni.rb

require_relative 'pizza_decorator'

class Pepperoni < PizzaDecorator
  def description
    super + " + pepperoni"
  end

  def cost
    super + 3
  end
end