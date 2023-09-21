package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.params.ZParams;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.Scanner;
import static pt.ua.deti.cbd.Utils.getFiltered;

public class AutocompleteB {
    public static String WORDS_KEY = "words";
    public static String WORDSALPHA_KEY = "wordsAlpha";
    public static String FILTEREDWORDS_KEY = "filteredWords";
    public static String FILTEREDWORDSWITHSCORE_KEY = "filteredWordsWithScore";

    public static void main(String[] args) {
        try (Jedis jedis = new Jedis(); PrintWriter printWriter = new PrintWriter(new FileWriter("CBD-14b-out.txt"))) {
            Scanner sc = new Scanner(Objects.requireNonNull(
                    AutocompleteB.class.getClassLoader().getResourceAsStream("nomes-pt-2021.csv")
            ));

            Utils.printToSoutAndFile("Getting server ready by getting all words...", printWriter, true);
            jedis.del(WORDS_KEY);
            jedis.del(WORDSALPHA_KEY);
            sc.useDelimiter("[\n\r,;]+");

            while (sc.hasNext()) {
                String word = sc.next();
                int score = Integer.parseInt(sc.next());
                jedis.zadd(WORDS_KEY, score, word);
                jedis.zadd(WORDSALPHA_KEY, 0, word);
            }

            Scanner sc2 = new Scanner(System.in);
            String inputWord;

            while (true) {
                Utils.printToSoutAndFile("\nSearch for ('Enter' for quit): ", printWriter, false);
                inputWord = sc2.nextLine();
                printWriter.println(inputWord);
                if (inputWord.isEmpty()) break;

                jedis.del(FILTEREDWORDS_KEY);
                getFiltered(jedis, WORDSALPHA_KEY, inputWord, true).forEach(
                        (String fw) -> jedis.zadd(FILTEREDWORDS_KEY, 0, fw)
                );

                ZParams zParams = new ZParams();
                zParams.weights(0, 1);
                jedis.zinterstore(FILTEREDWORDSWITHSCORE_KEY, zParams, FILTEREDWORDS_KEY, WORDS_KEY);

                jedis.zrevrange(FILTEREDWORDSWITHSCORE_KEY, 0, -1).forEach((String s) -> Utils.printToSoutAndFile(s, printWriter, true));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
