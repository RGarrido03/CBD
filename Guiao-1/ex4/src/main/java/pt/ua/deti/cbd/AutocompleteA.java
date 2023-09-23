package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.Scanner;

public class AutocompleteA {
    public static String WORDS_KEY = "words";

    public static void main(String[] args) {
        try (Jedis jedis = new Jedis(); PrintWriter printWriter = new PrintWriter(new FileWriter("CBD-14a-out.txt"))) {
            Scanner sc = new Scanner(Objects.requireNonNull(
                    AutocompleteA.class.getClassLoader().getResourceAsStream("names.txt")
            ));

            Utils.printToSoutAndFile("Getting server ready by getting all words...", printWriter, true);
            jedis.del(WORDS_KEY);
            while (sc.hasNext()) {
                jedis.zadd(WORDS_KEY, 0, sc.next());
            }

            Scanner sc2 = new Scanner(System.in);
            String inputWord;

            while (true) {
                Utils.printToSoutAndFile("\nSearch for ('Enter' for quit): ", printWriter, false);
                inputWord = sc2.nextLine();
                printWriter.println(inputWord);
                if (inputWord.isEmpty()) break;

                Utils.getFiltered(jedis, WORDS_KEY, inputWord, false).forEach((String s) -> Utils.printToSoutAndFile(s, printWriter, true));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
