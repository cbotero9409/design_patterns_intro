package structural.adapter.example;
public class EnemyTank implements EnemyAttacker {

  @Override
  public void fireWeapon() {
    System.out.println("Enemy Tank does 9 damage");
  }

  @Override
  public void driveForward() {
    System.out.println("Enemy Tank moves 3 spaces");
  }

  @Override
  public void assignDriver(String driverName) {
    System.out.println(driverName + " is driving the tank");
  }
  
}