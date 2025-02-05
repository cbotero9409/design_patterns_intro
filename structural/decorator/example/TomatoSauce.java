package structural.decorator.example;
public class TomatoSauce extends ToppingDecorator {

  public TomatoSauce(Pizza newPizza) {
    super(newPizza);
  }

  public String getDescription() {
    return tempPizza.getDescription() + ", Tomato Sauce";
  }

  public double getCost() {
    return tempPizza.getCost() + 0.2;
  }

}