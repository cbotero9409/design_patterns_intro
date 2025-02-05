# discounts

module Discounts

  class Discount
    def calculate(base_price)
      raise NotImplementedError, "This method has to be implemented"
    end
  end

  class StaticDiscount < Discount
    def calculate(base_price)
      [base_price - 1, 0].max
    end
  end

  class PercentDiscount < Discount
    def calculate(base_price)
      base_price * 0.9
    end
  end

  class NoDiscount < Discount
    def calculate(base_price)
      base_price
    end
  end

end