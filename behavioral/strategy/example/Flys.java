public interface Flys {
  String fly();
}

class ItFlys implements Flys {
  public String fly() {
    return "Flying High ;D";
  }
}

class CantFly implements Flys {
  public String fly() {
    return "I can't fly :(";
  }
}