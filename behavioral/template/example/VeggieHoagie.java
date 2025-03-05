public class VeggieHoagie extends Hoagie {

  private String veggiesUsed = "Lettuce, tomatoes, onions";

  @Override
  public boolean customerWantsCheese() { return false; }

  @Override
  public boolean customerWantsMeat() { return false; }

  @Override
  void addMeat() {}

  @Override
  void addCheese() {}

  @Override
  void addVeggies() {
    System.out.println("Adding veggies: " + veggiesUsed);
  }
  
}