package creational.factory.example;

import java.util.Scanner;

public class EnemyShipTesting {

  public static void main(String[] args) {

    EnemyShipFactory factory = new EnemyShipFactory();
    EnemyShip enemy = null;

    Scanner userInput = new Scanner(System.in);
    String enemyShipOption = "";
    System.out.print("What type of ship? (U/R/B): ");

    if(userInput.hasNextLine()) {
      enemy = factory.makeEnemyShip(userInput.nextLine());
    }

    if(enemy != null) {
      doStuffEnemy(enemy);
    } else {
      System.out.println("Enter a valid option!");
      String[] newArgs = {"recursivo"};
      main(newArgs);
    }
  }

  public static void doStuffEnemy(EnemyShip enemy) {
    enemy.displayEnemyShip();
    enemy.followHeroShip();
    enemy.enemyShipShoots();
  }

}