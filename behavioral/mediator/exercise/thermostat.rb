# thermostat.rb

require_relative 'smart_device'

class Thermostat < SmartDevice
  def set_temperature(temp)
    puts "Thermostat: Temperature set to #{temp}°C."
    @mediator.notify(self, :temperature_changed)
  end
end