# vehicle_factory.rb

require_relative 'car'
require_relative 'motorcycle'
require_relative 'bicycle'

class VehicleFactory
  def create(type, attrs = {})
    case type
    when :car then Car.new(attrs)
    when :motorcycle then Motorcycle.new(attrs)
    when :bicycle then Bicycle.new(attrs)
    else raise ArgumentError, "Unknown vehicle type: #{type}"
    end
  end
end