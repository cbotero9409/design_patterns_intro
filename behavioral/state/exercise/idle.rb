# idle.rb

require_relative 'state'

class Idle < State
  def insert_money(money)
    puts "You inserted $#{money} dollars."
    @vending_machine.money += money
    @vending_machine.state = @vending_machine.has_money
    puts "Your money is $#{@vending_machine.money}."
  end

  def eject_money
    puts "You haven't inserted any money."
  end

  def dispense(_product)
    puts "You need to insert money first."
  end
end