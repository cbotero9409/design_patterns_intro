# light.rb

require_relative 'smart_device'

class Light < SmartDevice
  def self.light_number
    @light_number ||= 0
    @light_number += 1
  end

  def initialize(mediator)
    super(mediator)
    @light_number = self.class.light_number
  end

  def turn_on
    puts "Light#{@light_number}: Turning on!"
  end
end