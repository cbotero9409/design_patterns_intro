public abstract class Hoagie {

  final void makeSandwich() {
    cutBun();
    if(customerWantsMeat()) { addMeat(); }
    if(customerWantsCheese()) { addCheese(); }
    if(customerWantsVeggies()) { addVeggies(); }
    wrapSandwich();
  }

  public void cutBun() {
    System.out.println("Bun cut");
  }

  abstract void addMeat();
  abstract void addCheese();
  abstract void addVeggies();

  public boolean customerWantsMeat() { return true; }
  public boolean customerWantsCheese() { return true; }
  public boolean customerWantsVeggies() { return true; }

  public void wrapSandwich() {
    System.out.println("Sandwich wrapped");
  }
  
}