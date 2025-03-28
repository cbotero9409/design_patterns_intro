public class DivideNumbers implements Chain {
    private Chain nextInChain;

    @Override
    public void setNextChain(Chain nextChain) {
        nextInChain = nextChain;
    }

    @Override
    public void calculate(Numbers request) {
        if (request.getCalculationWanted().equals("divide")) {
            System.out.println(request.getNumber1() + " / " + request.getNumber2() + " = " + (request.getNumber1() / request.getNumber2()));
        } else {
            System.out.println("Only works for add, substract, mult and divide");
        }
    }
  
}
