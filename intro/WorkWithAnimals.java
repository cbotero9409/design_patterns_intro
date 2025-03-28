

public class WorkWithAnimals {
  public static void main(String[] args) {
    
    Dog fido = new Dog();
    fido.setName("Fido");
    System.out.println(fido.getName());
    fido.digHole();
    fido.setWeight(-1);

    changeObjectName(fido);
    System.out.println("Dog name after method call: " + fido.getName());

    Animal doggy = new Dog();
    Animal kitty = new Cat();
    System.out.println("Doggy says: " + doggy.getSound());
    System.out.println("Kitty says: " + kitty.getSound());

    Animal[] animals = new Animal[4];
    animals[0] = doggy;
    animals[1] = kitty;
    System.out.println("Doggy says: " + animals[0].getSound());
    System.out.println("Kitty says: " + animals[1].getSound());

    speakAnimal(doggy);
    ((Dog)doggy).digHole();

    Giraffe gira = new Giraffe();
    gira.setName("gira");
    System.out.println("Giraffe name: " + gira.getName());
  }

  public static void changeObjectName(Dog doggy) {
    doggy.setName("Marcus");
  }

  public static void speakAnimal(Animal animal) {
    System.out.println(animal.getSound());
  }

}