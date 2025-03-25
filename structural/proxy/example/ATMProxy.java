public class ATMProxy implements GetATMData {
    private GetATMData realATMMachine = new ATMMachine();

    public ATMState getATMData() {
        return realATMMachine.getATMData();
    }

    public int getCashInMachine() {
        return realATMMachine.getCashInMachine();
    }
}
