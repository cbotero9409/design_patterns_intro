# state.rb

class State
  def initialize(vending_machine)
    @vending_machine = vending_machine
  end

  def insert_money(_money)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def eject_money
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def dispense(_product)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end