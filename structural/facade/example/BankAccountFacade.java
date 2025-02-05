public class BankAccountFacade {

  private int accountNumber;
  private int securityCode;

  AccountNumberCheck acctChecker;
  SecurityCodeCheck codeChecker;
  FundsCheck fundChecker;
  WelcomeToBank bankWelcome;

  public BankAccountFacade(int newAcctNum, int newSecCode) {
    accountNumber = newAcctNum;
    securityCode = newSecCode;

    bankWelcome = new WelcomeToBank();
    acctChecker = new AccountNumberCheck();
    codeChecker = new SecurityCodeCheck();
    fundChecker = new FundsCheck();

  }

  public int getAccountNumber() {
    return accountNumber;
  }

  public int getSecurityCode() {
    return securityCode;
  }

  public void withdrawCash(double cashToGet) {
    if(acctChecker.accountActive(getAccountNumber()) && codeChecker.codeValid(getSecurityCode())) {
      fundChecker.haveEnoughMoney(cashToGet);
    } else System.out.println("Transaction failed");
  }

  public void depositCash(double cashToDeposit) {
    if(acctChecker.accountActive(getAccountNumber()) && codeChecker.codeValid(getSecurityCode())) {
      fundChecker.makeDeposit(cashToDeposit);
    } else System.out.println("Transaction failed");
  }

}