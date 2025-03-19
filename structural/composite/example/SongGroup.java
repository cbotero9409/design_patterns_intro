import java.util.ArrayList;
import java.util.List;

public class SongGroup extends SongComponent {
    private List<SongComponent> songComponents = new ArrayList<>();
    private String groupName;
    private String groupDescription;

    public SongGroup(String groupName, String groupDescription) {
        this.groupName = groupName;
        this.groupDescription = groupDescription;
    }

    @Override
    public void add(SongComponent songComponent) {
        songComponents.add(songComponent);
    }

    @Override
    public void remove(SongComponent songComponent) {
        songComponents.remove(songComponent);
    }

    @Override
    public SongComponent getComponent(int index) {
        return songComponents.get(index);
    }

    @Override
    public void displaySongInfo() {
        System.out.println(getGroupName() + " " + getGroupDescription() + ":");
        for (SongComponent songComponent : songComponents) {
            songComponent.displaySongInfo();
        }
    }

    public String getGroupName() {
        return groupName;
    }

    public String getGroupDescription() {
        return groupDescription;
    }
}