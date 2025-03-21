# main.rb

require_relative 'vending_machine'

vending_machine = VendingMachine.new
vending_machine.insert_money(25)
vending_machine.dispense('Soda')
vending_machine.insert_money(25)
vending_machine.insert_money(25)
vending_machine.dispense('Chips')
vending_machine.eject_money
vending_machine.dispense('Candy')
vending_machine.insert_money(10)
vending_machine.dispense('Candy')
vending_machine.insert_money(25)
vending_machine.dispense('Soda')
vending_machine.eject_money
vending_machine.dispense('Chips')
vending_machine.insert_money(25)
vending_machine.dispense('Chips')
vending_machine.insert_money(25)
vending_machine.dispense('Soda')