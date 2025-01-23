# main.rb

require_relative 'discounts'
require_relative 'discount_calculator'

include Discounts

base_price = 30

static = DiscountCalculator.new(base_price, StaticDiscount.new)
percent = DiscountCalculator.new(base_price, PercentDiscount.new)
without = DiscountCalculator.new(base_price, NoDiscount.new)

puts "static discount: #{static.calculate_final_price}"
puts "percent discount: #{percent.calculate_final_price}"
puts "without discount: #{without.calculate_final_price}"