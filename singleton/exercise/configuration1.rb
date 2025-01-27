# configuration1.rb

require_relative 'configurations'

class Configuration1 < Configurations
  def set_configuration
    apply_configuration('config1', '1234')
  end
end