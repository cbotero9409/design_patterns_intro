# pizza_builder.rb

require_relative 'pizza'

class PizzaBuilder
  def initialize
    @pizza = Pizza.new
  end
  
  def choose_size(size)
    @pizza.set_size(size)
    self
  end

  def add_cheese(cheese)
    @pizza.set_cheese(cheese)
    self
  end

  def add_sauce(sauce)
    @pizza.set_sauce(sauce)
    self
  end

  def add_toppings(toppings)
    @pizza.set_toppings(toppings)
    self
  end

  def deliver_pizza
    pizza = @pizza
    @pizza = Pizza.new
    pizza
  end
end