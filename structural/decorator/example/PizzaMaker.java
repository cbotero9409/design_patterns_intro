package structural.decorator.example;
public class PizzaMaker {

  public static void main(String[] args) {
    Pizza plainPizza = new Mozzarella(new TomatoSauce(new PlainPizza()));
    System.out.println(plainPizza.getDescription());
    System.out.println(plainPizza.getCost());
  }
  
}