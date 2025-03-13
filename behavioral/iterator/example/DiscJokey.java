import java.util.Iterator;

public class DiscJokey {
    
    SongIterator iter70sSongs;
    SongIterator iter80sSongs;
    SongIterator iter90sSongs;
    
    public DiscJokey(SongIterator newSongsOfThe70s, SongIterator newSongsOfThe80s, SongIterator newSongsOfThe90s) {
        iter70sSongs = newSongsOfThe70s;
        iter80sSongs = newSongsOfThe80s;
        iter90sSongs = newSongsOfThe90s;
    }
    
    public void showTheSongs() {
        Iterator songs70s = iter70sSongs.createIterator();
        Iterator songs80s = iter80sSongs.createIterator();
        Iterator songs90s = iter90sSongs.createIterator();
        
        System.out.println("Songs of the 70s\n");
        printTheSongs(songs70s);
        
        System.out.println("\nSongs of the 80s\n");
        printTheSongs(songs80s);
        
        System.out.println("\nSongs of the 90s\n");
        printTheSongs(songs90s);
    }
    
    public void printTheSongs(Iterator songsIterator) {
        while (songsIterator.hasNext()) {
        SongInfo songInfo = (SongInfo) songsIterator.next();
        System.out.println(songInfo.getSongName());
        System.out.println(songInfo.getBandName());
        System.out.println(songInfo.getYearReleased() + "\n");
        }
    }
}