# restaurant.rb

require_relative 'chef'
require_relative 'waiter'
require_relative 'order_pizza_command'
require_relative 'order_burger_command'

chef = Chef.new
waiter = Waiter.new

pizza_order = OrderPizzaCommand.new(chef)
burger_order = OrderBurgerCommand.new(chef)

waiter.take_order(pizza_order)
waiter.take_order(burger_order)
waiter.execute_orders