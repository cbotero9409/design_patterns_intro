public class AccountNumberCheck {

  private int accountNumber = 1234567890;

  public int getAccountNumber() {return accountNumber;}

  public boolean accountActive(int accToCheck) {
    return getAccountNumber() == accToCheck;
  }
  
}