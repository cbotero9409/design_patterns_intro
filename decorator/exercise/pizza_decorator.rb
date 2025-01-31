# pizza_decorator.rb

require_relative 'pizza'

class PizzaDecorator < Pizza
  def initialize(pizza)
    @pizza = pizza
  end

  def description
    @pizza.description
  end

  def cost
    @pizza.cost
  end
end