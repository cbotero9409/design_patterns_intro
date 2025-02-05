public class VolumeUp implements Command {

  ElectronicDevice theDevice;

  public VolumeUp(ElectronicDevice newDevice) {
    theDevice = newDevice;
  }

  @Override
  public void execute() {
    theDevice.volumeUp();
  }

  @Override
  public void undo() {
    theDevice.volumeDown();
  }
}