public class Sheep implements Animal {

  public Sheep() {
    System.out.println("Sheep is made");
  }
  
  public Animal makeCopy() {
    Sheep sheepObject = null;
    
    try { sheepObject = (Sheep) super.clone(); }
    catch (CloneNotSupportedException ex) {}

    return sheepObject;
  }

  public String toString() {
    return "Dolly is my hero, baaaaaa";
  }

}