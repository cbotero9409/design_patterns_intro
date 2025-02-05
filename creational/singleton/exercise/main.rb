# main.rb

require_relative 'app_config'
require_relative 'configuration1'
require_relative 'configuration2'

app_config1 = AppConfig.instance
config1 = Configuration1.new(app_config1)
config1.set_configuration
print "configurations from app_config1: "
puts app_config1.configurations

app_config2 = AppConfig.instance
config2 = Configuration2.new(app_config2)
config2.set_configuration
print "configurations from app_config2: "
puts app_config2.configurations

print "configurations from app_config1: "
puts app_config1.configurations

puts "config2 from app_config1: " + app_config1.get('config2')
puts "config1 from app_config2: " + app_config2.get('config1')

puts app_config1 == app_config2