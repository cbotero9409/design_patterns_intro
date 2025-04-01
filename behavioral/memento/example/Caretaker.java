import java.util.ArrayList;

class Caretaker {
  ArrayList<Memento> mementos = new ArrayList<>();
  
  public void addMemento(Memento memento) {
    mementos.add(memento);
  }
  
  public Memento getMemento(int index) {
    return mementos.get(index);
  }
}
