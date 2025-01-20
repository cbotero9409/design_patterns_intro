public class Giraffe extends Creature {

  private String name;
  private int weight;
  private String sound;

  @Override
  public void setName(String newName) {
    name = newName;
  }

  @Override
  public String getName() {
    return name;
  }

  @Override
  public void setWeight(int newWeight) {
    weight = newWeight;
  }

  @Override
  public int getWeight() {
    return weight;
  }
}