public class TestMemento {
  public static void main(String[] args) {
    Originator originator = new Originator();
    Caretaker caretaker = new Caretaker();

    originator.setArticle("Article 1");
    caretaker.addMemento(originator.storeInMemento());

    originator.setArticle("Article 2");
    caretaker.addMemento(originator.storeInMemento());

    originator.setArticle("Article 3");
    System.out.println("Current Article: " + originator.restoreFromMemento(caretaker.getMemento(1)));
  }
}
