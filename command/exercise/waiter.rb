# waiter.rb

class Waiter
  def initialize
    @orders = []
  end

  def take_order(order)
    @orders << order
  end

  def execute_orders
    @orders.each(&:execute)
    @orders.clear
  end

  def undo_last_order
    last_order = @orders.pop
    puts "Undoing last order..." if last_order
  end
end