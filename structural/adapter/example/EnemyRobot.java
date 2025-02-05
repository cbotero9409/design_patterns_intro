package structural.adapter.example;
public class EnemyRobot {

  public void smashWithHands() {
    System.out.println("Enemy Robot causes 6 damage with its hands");
  }

  public void walkForward() {
    System.out.println("Enemy Robot walks forward 5 spaces");
  }

  public void reactToHuman(String driverName) {
    System.out.println("Enemy Robot tramps on " + driverName);
  }
  
}