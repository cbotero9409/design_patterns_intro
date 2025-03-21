# dispensing.rb

require_relative 'state'

class Dispensing < State
  def insert_money(money)
    puts "You inserted $#{money} dollars."
    @vending_machine.money += money
    puts "Your money is $#{@vending_machine.money}."
  end

  def eject_money
    puts "Cannot return money while dispensing."
  end

  def dispense(product)
    puts "Dispensing your product '#{product}'."
    if @vending_machine.products[product] > @vending_machine.money
      puts "You need to insert $#{@vending_machine.products[product] - @vending_machine.money} more dollars."
      return
    end
    @vending_machine.money -= @vending_machine.products[product]
    @vending_machine.state = @vending_machine.money.zero? ? @vending_machine.idle : @vending_machine.has_money
  end
end