# pizza.rb

class Pizza
  def initialize
    @size = nil
    @cheese = nil
    @sauce = nil
    @toppings = nil
  end

  def set_size(size)
    @size = size
  end

  def set_cheese(cheese)
    @cheese = cheese
  end

  def set_sauce(sauce)
    @sauce = sauce
  end

  def set_toppings(toppings)
    @toppings = toppings
  end

  def details
    pizza_details = "Pizza of #{@size} portions with #{@cheese} cheese"
    pizza_details += if @toppings
                      ", #{@sauce} sauce and toppings(#{@toppings.join(', ')})."
                    else
                      " and #{@sauce} sauce."
                    end
    pizza_details
  end
end