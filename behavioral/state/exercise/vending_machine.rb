# vending_machine.rb

require_relative 'idle'
require_relative 'has_money'
require_relative 'dispensing'

class VendingMachine
  attr_accessor :state, :money, :products, :idle, :has_money, :dispensing

  def initialize
    @idle = Idle.new(self)
    @has_money = HasMoney.new(self)
    @dispensing = Dispensing.new(self)
    @state = @idle
    @money = 0
    @products = { 'Candy' => 25, 'Chips' => 35, 'Soda' => 45 }
  end

  def insert_money(money)
    @state.insert_money(money)
  end

  def eject_money
    @state.eject_money
  end

  def dispense(product)
    @state.dispense(product)
  end
end