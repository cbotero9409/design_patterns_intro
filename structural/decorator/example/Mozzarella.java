public class Mozzarella extends ToppingDecorator {

  public Mozzarella(Pizza newPizza) {
    super(newPizza);
  }

  public String getDescription() {
    return tempPizza.getDescription() + ", Mozzarella";
  }

  public double getCost() {
    return tempPizza.getCost() + 0.5;
  }

}