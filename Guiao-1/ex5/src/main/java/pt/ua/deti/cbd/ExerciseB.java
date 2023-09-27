package pt.ua.deti.cbd;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import redis.clients.jedis.Jedis;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Scanner;

public class ExerciseB {
    private static final Logger logger = LogManager.getLogger(ExerciseB.class);
    private static final int LIMIT = 4;
    private static final int TIMESLOT = 60;

    public static void main(String[] args) {
        logger.debug("Current products limit: " + LIMIT);
        logger.debug("Current time slot: " + TIMESLOT + " minutes");
        try (Jedis jedis = new Jedis()) {
            logger.debug("Cleaning database...");
            jedis.flushAll();

            Scanner sc = new Scanner(System.in);
            String input;
            int productsNumber;

            while (true) {
                System.out.print("Input the name: ");
                input = sc.nextLine().toLowerCase().replace(" ", "_");
                logger.debug("Inputted name: " + input);

                // Break condition
                if (input.isEmpty()) {
                    logger.debug("Empty name. Exiting...");
                    break;
                }

                System.out.print("Input the number of products: ");
                productsNumber = Integer.parseInt(sc.nextLine());
                logger.debug("Inputted number of products: " + productsNumber);

                // Fetching orders
                Map<String, String> currentOrders;
                if (jedis.exists(input)) {
                    logger.debug("Key exists. Getting hash map...");
                    currentOrders = jedis.hgetAll(input);
                } else if (productsNumber > LIMIT) {
                    logger.info("No key exists, but order rate limit is exceeded. Aborting new order.");
                    continue;
                } else {
                    logger.debug(
                            "No key exists. Adding order with " + productsNumber + " product(s) to a new hash map...");
                    jedis.hset(input, LocalDateTime.now().toString(), String.valueOf(productsNumber));
                    logger.info("Current products: " + productsNumber);
                    continue;
                }

                // Check how many products were ordered in the last TIMESLOT minutes
                int productsInTime = 0;
                for (Map.Entry<String, String> entry : currentOrders.entrySet()) {
                    LocalDateTime temp = LocalDateTime.parse(entry.getKey());
                    if (temp.isAfter(LocalDateTime.now().minusMinutes(TIMESLOT))) {
                        logger.debug(
                                "New order with " + entry.getValue() + " product(s) in the last " + TIMESLOT + " minutes found.");
                        productsInTime += Integer.parseInt(entry.getValue());
                    }
                }
                logger.info(productsInTime + " product(s) were ordered in the last " + TIMESLOT + " minutes.");

                // Add order if possible
                boolean canAddOrder = (productsInTime + productsNumber) <= LIMIT;
                if (canAddOrder) {
                    logger.debug("Adding new order with " + productsNumber + " product(s) to the hash map...");
                    jedis.hset(input, LocalDateTime.now().toString(), String.valueOf(productsNumber));
                    logger.info("Current products: " + (productsInTime + productsNumber));
                } else {
                    logger.warn("Order rate limit exceeded!");
                }
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
    }
}
