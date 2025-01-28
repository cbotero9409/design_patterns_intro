# pizza_director.rb

class PizzaDirector
  def initialize(pizza_builder)
    @pizza_builder = pizza_builder
  end

  def make_basic_pizza
    @pizza_builder.choose_size(4)
                  .add_cheese('mozzarella')
                  .add_sauce('ketchup')
  end

  def make_premium_pizza
    make_basic_pizza
    @pizza_builder.add_toppings(['chicken', 'onion'])
  end
end