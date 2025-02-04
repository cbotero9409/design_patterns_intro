# order_pizza_command.rb

require_relative 'command'

class OrderPizzaCommand < Command
  def initialize(chef)
    @chef = chef
  end

  def execute
    @chef.prepare_pizza
  end
end