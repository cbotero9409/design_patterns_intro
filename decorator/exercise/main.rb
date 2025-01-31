# main.rb

require_relative 'pizza'
require_relative 'extra_cheese'
require_relative 'pepperoni'
require_relative 'mushroom'

pizza = Pizza.new
puts "#{pizza.description}: $#{pizza.cost}"

pizza_with_cheese = ExtraCheese.new(pizza)
puts "#{pizza_with_cheese.description}: $#{pizza_with_cheese.cost}"

full_pizza = Mushroom.new(Pepperoni.new(ExtraCheese.new(pizza)))
puts "#{full_pizza.description}: $#{full_pizza.cost}"