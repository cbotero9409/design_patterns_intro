# bank_account_proxy.rb

require_relative 'bank_account'

class BankAccountProxy
  def initialize(balance = 0, password = '1234')
    @bank_account = BankAccount.new(balance)
    @password = password
  end

  def deposit(amount)
    @bank_account.deposit(amount)
    puts "Deposited #{amount}, balance: #{get_balance}"
  end

  def withdraw(amount)
    if amount > get_balance
      puts 'Balance too low'
      return
    end

    if check_password
      @bank_account.withdraw(amount)
      puts "Withdrew #{amount}, balance: #{get_balance}"
    end
  end

  private

  def check_password
    print 'Password: '
    password = gets.chomp
    if password == @password
      true
    else
      puts 'Wrong password!'
      false
    end
  end

  def get_balance
    @bank_account.balance
  end
end