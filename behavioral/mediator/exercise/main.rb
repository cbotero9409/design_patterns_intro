# main.rb

require_relative 'smart_home_hub'
require_relative 'light'
require_relative 'thermostat'
require_relative 'alarm'

hub = SmartHomeHub.new

light1 = Light.new(hub)
light2 = Light.new(hub)
thermostat = Thermostat.new(hub)
alarm = Alarm.new(hub)

alarm.trigger
thermostat.set_temperature(30)