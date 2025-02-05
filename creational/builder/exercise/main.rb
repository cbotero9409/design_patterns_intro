# main.rb

require_relative 'pizza_builder'
require_relative 'pizza_director'

pizza_builder = PizzaBuilder.new
pizza_director = PizzaDirector.new(pizza_builder)

pizza_director.make_basic_pizza
pizza = pizza_builder.deliver_pizza
puts pizza.details

pizza_director.make_premium_pizza
pizza = pizza_builder.deliver_pizza
puts pizza.details