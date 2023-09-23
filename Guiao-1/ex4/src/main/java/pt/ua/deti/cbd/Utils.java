package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.io.PrintWriter;
import java.util.List;

public class Utils {
    public static List<String> getFiltered(Jedis jedis, String key, String inputWord, boolean isReversed) {
        String inputWordPlusOne;
        char inputWordLastChar;

        inputWordLastChar = (char) (inputWord.charAt(inputWord.length() - 1) + 1);
        inputWordPlusOne = inputWord.substring(0, inputWord.length() - 1).concat(Character.toString(inputWordLastChar));

        return isReversed
                ? jedis.zrevrangeByLex(key, "(" + inputWordPlusOne, "[" + inputWord)
                : jedis.zrangeByLex(key, "[" + inputWord, "(" + inputWordPlusOne);
    }

    public static void printToSoutAndFile(String string, PrintWriter printWriter, boolean println) {
        if (println) {
            System.out.println(string);
            printWriter.println(string);
        } else {
            System.out.print(string);
            printWriter.print(string);
        }
    }
}
