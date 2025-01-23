# discount_calculator.rb

class DiscountCalculator

  def initialize(base_price, discount_type)
    @discount_type = discount_type
    @base_price = base_price
  end

  def calculate_final_price
    @discount_type.calculate(@base_price)
  end

end