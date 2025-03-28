# alarm.rb

require_relative 'smart_device'

class Alarm < SmartDevice
  def trigger
    puts "Alarm: Intruder detected!"
    @mediator.notify(self, :alarm_triggered)
  end
end
