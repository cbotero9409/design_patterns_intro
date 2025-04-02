public class VisitorTest {
  public static void main(String[] args) {
    TaxVisitor taxCalc = new TaxVisitor();
    TaxHolidayVisitor taxHolidayCalc = new TaxHolidayVisitor();

    Necessity milk = new Necessity(1.23);
    Liquor vodka = new Liquor(5.99);
    Tobacco cigars = new Tobacco(10.00);

    System.out.println(milk.accept(taxCalc) + "\n");
    System.out.println(vodka.accept(taxCalc) + "\n");
    System.out.println(cigars.accept(taxCalc) + "\n");

    System.out.println("Tax Holiday\n");

    System.out.println(milk.accept(taxHolidayCalc) + "\n");
    System.out.println(vodka.accept(taxHolidayCalc) + "\n");
    System.out.println(cigars.accept(taxHolidayCalc) + "\n");
  }
}
