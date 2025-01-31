# mushroom.rb

require_relative 'pizza_decorator'

class Mushroom < PizzaDecorator
  def description
    super + " + mushroom"
  end

  def cost
    super + 1.5
  end
end