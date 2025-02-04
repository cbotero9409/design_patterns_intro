import java.util.ArrayList;
import java.util.List;

public class PlayWithRemote {

  public static void main(String[] args) {
    ElectronicDevice newDevice = TVRemote.getDevice();

    TurnOn onCommand = new TurnOn(newDevice);
    DeviceButton onPressed = new DeviceButton(onCommand);
    onPressed.press();

    TurnOff offCommand = new TurnOff(newDevice);
    onPressed = new DeviceButton(offCommand);
    onPressed.press();

    Television theTV = new Television();
    Radio theRadio = new Radio();
    List<ElectronicDevice> allDevices = new ArrayList<ElectronicDevice>();
    allDevices.add(theTV);
    allDevices.add(theRadio);
    TurnItAllOff turnOffDevices = new TurnItAllOff(allDevices);
    DeviceButton turnThemOff = new DeviceButton(turnOffDevices);
    turnThemOff.press();
    turnThemOff.pressUndo();
  }

}