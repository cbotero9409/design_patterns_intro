# car.rb

require_relative 'vehicle'

class Car < Vehicle
  def specifications
    formatted_specs("car", "and 4 wheels")
  end
end