# main.rb

require_relative 'bank_account_proxy'

account = BankAccountProxy.new(100)
account.deposit(50)
account.withdraw(10)
account.withdraw(100)