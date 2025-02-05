public class VolumeDown implements Command {

  ElectronicDevice theDevice;

  public VolumeDown(ElectronicDevice newDevice) {
    theDevice = newDevice;
  }

  @Override
  public void execute() {
    theDevice.volumeDown();
  }

  @Override
  public void undo() {
    theDevice.volumeUp();
  }
}