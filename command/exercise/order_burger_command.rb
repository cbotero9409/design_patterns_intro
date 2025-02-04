# order_burger_command.rb

require_relative 'command'

class OrderBurgerCommand < Command
  def initialize(chef)
    @chef = chef
  end

  def execute
    @chef.prepare_burger
  end
end