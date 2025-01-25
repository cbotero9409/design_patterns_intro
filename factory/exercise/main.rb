# main.rb

require_relative 'vehicle_factory'

factory = VehicleFactory.new

car = factory.create(:car, color: "red", year: 1998)
puts car.specifications
motorcycle = factory.create(:motorcycle, color: "green", year: 2024)
puts motorcycle.specifications
bicycle = factory.create(:bicycle, color: "blue", year: 2014)
puts bicycle.specifications
unknown = factory.create(:plane)

puts "Enter type of vehicle: "
type = gets.chomp
puts "Enter vehicle color: "
color = gets.chomp
puts "Enter vehicle year: "
year = gets.chomp
any_vehicle = factory.create(type.to_sym, color: color, year: year)
any_vehicle.specifications