# vehicle.rb

class Vehicle
  attr_accessor :color, :year

  def initialize(attr = {})
    @color = attr[:color]
    @year = attr[:year]
  end

  def specifications
    raise NotImplementedError, "You must implement method 'specifications' in the subclass"
  end

  private
  
  def formatted_specs(type, details)
    "I'm a #{color} #{type} from #{year} #{details}"
  end
end