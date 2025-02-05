# motorcycle.rb

require_relative 'vehicle'

class Motorcycle < Vehicle
  def specifications
    formatted_specs("motorcycle", "and 2 wheels")
  end
end