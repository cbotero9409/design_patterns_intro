public class ItalianHoagie extends Hoagie {

  private String meatUsed = "Salami, pepperoni and ham";
  private String cheeseUsed = "Provolone";
  private String veggiesUsed = "Lettuce, tomatoes, onions";

  @Override
  void addMeat() {
    System.out.println("Adding meat: " + meatUsed);
  }

  @Override
  void addCheese() {
    System.out.println("Adding cheese: " + cheeseUsed);
  }

  @Override
  void addVeggies() {
    System.out.println("Adding veggies: " + veggiesUsed);
  }
  
}