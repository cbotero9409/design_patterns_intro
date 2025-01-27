
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;

public class Singleton {

  private static Singleton firstInstance = null;

  String[] scrabbleLetters = {
    "A", "A", "A", "A", "A", "A", "A", "A", "A",  // 9 A
    "B", "B",                                    // 2 B
    "C", "C",                                    // 2 C
    "D", "D", "D", "D",                          // 4 D
    "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", // 12 E
    "F", "F",                                    // 2 F
    "G", "G", "G",                               // 3 G
    "H", "H",                                    // 2 H
    "I", "I", "I", "I", "I", "I", "I", "I", "I", // 9 I
    "J",                                         // 1 J
    "K",                                         // 1 K
    "L", "L", "L", "L",                          // 4 L
    "M", "M",                                    // 2 M
    "N", "N", "N", "N", "N", "N",                // 6 N
    "O", "O", "O", "O", "O", "O", "O", "O",      // 8 O
    "P", "P",                                    // 2 P
    "Q",                                         // 1 Q
    "R", "R", "R", "R", "R", "R",                // 6 R
    "S", "S", "S", "S",                          // 4 S
    "T", "T", "T", "T", "T", "T",                // 6 T
    "U", "U", "U", "U",                          // 4 U
    "V", "V",                                    // 2 V
    "W", "W",                                    // 2 W
    "X",                                         // 1 X
    "Y", "Y",                                    // 2 Y
    "Z",                                         // 1 Z
    " ", " "                                     // 2 espacios en blanco (comodines)
  };

  private LinkedList<String> letterList = new LinkedList<String> (Arrays.asList(scrabbleLetters));

  private Singleton(){};

  public static Singleton getInstance() {
    if (firstInstance == null) { firstInstance = new Singleton(); }
    Collections.shuffle(firstInstance.letterList);
    return firstInstance;
  }

  public LinkedList<String> getLetterList() {
    return firstInstance.letterList;
  }

  public LinkedList<String> getTiles(int howManyTiles) {
    LinkedList<String> tilesToSend = new LinkedList<String>();
    for(int i = 0; i <= howManyTiles; i++) {
      tilesToSend.add(firstInstance.letterList.remove(0));
    }
    return tilesToSend;
  }

}