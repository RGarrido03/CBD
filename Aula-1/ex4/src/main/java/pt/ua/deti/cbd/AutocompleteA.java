package pt.ua.deti.cbd;

import redis.clients.jedis.Jedis;

import java.util.Objects;
import java.util.Scanner;

public class AutocompleteA {
    public static void main(String[] args) {
        try (Jedis jedis = new Jedis()) {
            Scanner sc = new Scanner(Objects.requireNonNull(
                    AutocompleteA.class.getClassLoader().getResourceAsStream("names.txt")
            ));

            System.out.println("Getting server ready by getting all words...");
            jedis.del("words");
            while (sc.hasNext()) {
                String temp = sc.next();
                jedis.zadd("words", 0, temp);
            }

            Scanner sc2 = new Scanner(System.in);
            String inputWord;
            String inputWordPlusOne;
            char inputWordLastChar;

            while (true) {
                System.out.print("\nSearch for ('Enter' for quit): ");
                inputWord = sc2.nextLine();

                if (inputWord.isEmpty()) {
                    System.exit(0);
                }

                inputWordLastChar = (char) (inputWord.charAt(inputWord.length() - 1) + 1);
                inputWordPlusOne = inputWord.substring(0, inputWord.length() - 1).concat(Character.toString(inputWordLastChar));

                System.out.println(inputWordPlusOne);
                jedis.zrangeByLex("words", "[" + inputWord, "(" + inputWordPlusOne).forEach(System.out::println);
            }


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
