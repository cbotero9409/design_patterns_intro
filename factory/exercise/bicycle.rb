# bicycle.rb

require_relative 'vehicle'

class Bicycle < Vehicle
  def specifications
    formatted_specs("bicycle", "and don't have an engine")
  end
end