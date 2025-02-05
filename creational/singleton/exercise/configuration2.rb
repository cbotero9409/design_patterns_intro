# configuration2.rb

require_relative 'configurations'

class Configuration2 < Configurations
  def set_configuration
    apply_configuration('config2', '5678')
  end
end