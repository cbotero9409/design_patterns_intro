# has_money.rb

require_relative 'state'

class HasMoney < State
  def insert_money(money)
    puts "You inserted $#{money} dollars."
    @vending_machine.money += money
    puts "Your money is $#{@vending_machine.money}."
  end

  def eject_money
    puts "$#{@vending_machine.money} dollars returned."
    @vending_machine.money = 0
    @vending_machine.state = @vending_machine.idle
  end

  def dispense(_product)
    puts "Select your product."
    @vending_machine.state = @vending_machine.dispensing
  end
end