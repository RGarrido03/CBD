package pt.ua.deti.cbd;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import redis.clients.jedis.Jedis;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Scanner;

public class ExerciseB {
    private static final Logger logger = LogManager.getLogger(ExerciseB.class);
    private static final int LIMIT = 4;
    private static final int TIMESLOT = 60;

    public static void main(String[] args) {
        logger.debug("Current order limit: " + LIMIT);
        logger.debug("Current time slot: " + TIMESLOT + " minutes");
        try (Jedis jedis = new Jedis()) {
            logger.debug("Cleaning database...");
            jedis.flushAll();

            Scanner sc = new Scanner(System.in);
            String input;

            while (true) {
                System.out.print("Input the name: ");
                input = sc.nextLine().toLowerCase().replace(" ", "_");
                logger.debug("Name: " + input);

                // Break condition
                if (input.isEmpty()) {
                    logger.debug("Empty name. Exiting...");
                    break;
                }

                // Fetching orders
                List<String> currentOrders;
                if (jedis.exists(input)) {
                    logger.debug("Key exists. Getting list...");
                    currentOrders = jedis.lrange(input, 0, -1);
                } else {
                    logger.debug("No key exists. Adding order to a new list...");
                    jedis.rpush(input, LocalDateTime.now().toString());
                    logger.info("Current orders: 1");
                    continue;
                }

                // Check how many orders were made in the last TIMESLOT minutes
                int ordersInTime = 0;
                for (String s : currentOrders) {
                    LocalDateTime temp = LocalDateTime.parse(s);
                    if (temp.isAfter(LocalDateTime.now().minusMinutes(TIMESLOT))) {
                        logger.debug("New order in the last " + TIMESLOT + " minutes found.");
                        ordersInTime++;
                    }
                }
                logger.info(ordersInTime + " orders were made in the last " + TIMESLOT + " minutes.");

                // Add order if possible
                boolean canAddOrder = ordersInTime < LIMIT;
                if (canAddOrder) {
                    logger.debug("Adding new order to list...");
                    jedis.rpush(input, LocalDateTime.now().toString());
                    logger.info("Current orders: " + (ordersInTime + 1));
                } else {
                    logger.warn("Order rate limit exceeded!");
                }
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
    }
}
