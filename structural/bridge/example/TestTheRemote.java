public class TestTheRemote {

  public static void main(String[] args) {
    RemoteButton theTV = new TVRemoteMute(new TVDevice(1, 200));
    RemoteButton theTV2 = new TVRemotePause(new TVDevice(1, 200));

    System.out.println("Test TV with mute");
    theTV.buttonFivePressed();
    theTV.buttonSixPressed();
    theTV.buttonNinePressed();

    System.out.println("Test TV with pause");
    theTV2.buttonFivePressed();
    theTV2.buttonSixPressed();
    theTV2.buttonNinePressed();
  }
  
}