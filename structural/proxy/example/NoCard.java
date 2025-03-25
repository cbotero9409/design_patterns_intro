public class NoCard implements ATMState {
    ATMMachine atmMachine;

    public NoCard(ATMMachine newATMMachine) {
        atmMachine = newATMMachine;
    }

    @Override
    public void insertCard() {
        System.out.println("Card inserted");
        atmMachine.setATMState(atmMachine.getYesCardState());
    }

    @Override
    public void ejectCard() {
        System.out.println("You didn't enter a card");
    }

    @Override
    public void insertPin(int pinEntered) {
        System.out.println("You have to enter a card first");
    }

    @Override
    public void requestCash(int cashToWithdraw) {
        System.out.println("You have to enter a card first");
    }
  
}
