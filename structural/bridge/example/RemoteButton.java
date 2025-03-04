public abstract class RemoteButton {

  private EntertainmentDevice theDevice;

  public RemoteButton(EntertainmentDevice newDevice) {
    theDevice = newDevice;
  }

  public void buttonFivePressed() {
    theDevice.buttonFivePressed();
  }

  public void buttonSixPressed() {
    theDevice.buttonSixPressed();
  }

  public void deviceFeedBack() {
    theDevice.deviceFeedBack();
  }

  public abstract void buttonNinePressed();
}