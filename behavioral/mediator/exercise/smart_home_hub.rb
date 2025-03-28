# smart_home_hub.rb

require_relative 'smart_home_mediator'

class SmartHomeHub < SmartHomeMediator
  def initialize
    @devices = []
  end

  def register_device(device)
    @devices << device
  end

  def notify(sender, event)
    case event
    when :alarm_triggered
      puts "Hub: Alarm triggered! Turning on lights..."
      @devices.each { |device| device.turn_on if device.is_a?(Light) }
    when :temperature_changed
      puts "Hub: Temperature changed! Notifying the system..."
    end
  end
end