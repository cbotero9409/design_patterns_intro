import java.text.DecimalFormat;

class TaxVisitor implements Visitor {
    private DecimalFormat df = new DecimalFormat("#.##");

    @Override
    public double visit(Liquor liquorItem) {
      System.out.println("Liquor item: Price with Tax");
      return Double.parseDouble(df.format((liquorItem.getPrice() * 0.10) + liquorItem.getPrice()));
    }

    @Override
    public double visit(Tobacco tobaccoItem) {
      System.out.println("Tobacco item: Price with Tax");
      return Double.parseDouble(df.format((tobaccoItem.getPrice() * 0.30) + tobaccoItem.getPrice()));
    }

    @Override
    public double visit(Necessity necessityItem) {
      System.out.println("Necessity item: Price with Tax");
      return Double.parseDouble(df.format((necessityItem.getPrice() * 0.00) + necessityItem.getPrice()));
    }
  
}
