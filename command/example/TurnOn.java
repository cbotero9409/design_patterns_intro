public class TurnOn implements Command {

  ElectronicDevice theDevice;

  public TurnOn(ElectronicDevice newDevice) {
    theDevice = newDevice;
  }

  @Override
  public void execute() {
    theDevice.on();
  }

  @Override
  public void undo() {
    theDevice.off();
  }
}