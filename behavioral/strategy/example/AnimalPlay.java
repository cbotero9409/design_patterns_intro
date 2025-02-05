package behavioral.strategy.example;
public class AnimalPlay {
  static public void main(String[] args) {
    Animal sparky = new Dog();
    Animal piolin = new Bird();

    System.out.println("Dog: " + sparky.tryToFly());
    System.out.println("Bird: " + piolin.tryToFly());

    sparky.setFlyingAbility(new ItFlys());
    System.out.println("Dog: " + sparky.tryToFly());
  }
}