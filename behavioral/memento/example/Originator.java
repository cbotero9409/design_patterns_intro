public class Originator {
  private String article;

  public void setArticle(String article) {
    System.out.println("From Originator: Setting article to " + article);
    this.article = article;
  }

  public Memento storeInMemento() {
    System.out.println("From Originator: Saving to Memento.");
    return new Memento(article);
  }

  public String restoreFromMemento(Memento memento) {
    article = memento.getArticle();
    System.out.println("From Originator: Previous article saved in Memento: " + article);
    return article;
  }
}
