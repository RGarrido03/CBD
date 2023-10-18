package pt.ua.deti.cbd;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Accumulators;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.InsertOneResult;
import com.mongodb.client.result.UpdateResult;
import org.bson.Document;
import org.bson.conversions.Bson;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class AlineaA {
    private static final int PRODUCTS_LIMIT = 30;
    private static final int TIMESLOT = 60;

    private static final String uri = "mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000";
    private static final MongoClient mongoClient = MongoClients.create(uri);
    private static final MongoDatabase database = mongoClient.getDatabase("cbd");
    private static final MongoCollection<Document> collection = database.getCollection("orders");

    private static final PrintWriter printWriter;

    static {
        try {
            printWriter = new PrintWriter("CBD_L204a-out_107927.txt");
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static void printlnToFileAndSout(String string) {
        System.out.println(string);
        printWriter.println(string);
    }

    private static int getOrdersInTime(String input) {
        List<Bson> pipeline = Arrays.asList(Aggregates.match(Filters.eq("name", input)), Aggregates.unwind("$orders"),
                                            Aggregates.match(
                                                    Filters.gt("orders", LocalDateTime.now().minusMinutes(TIMESLOT))),
                                            Aggregates.group("$_id", Accumulators.sum("count", 1)));

        Document doc = collection.aggregate(pipeline).first();

        if (doc != null) {
            return (int) doc.get("count");
        }
        return 0;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        collection.drop();

        String input;

        while (true) {
            System.out.print("\nInput the name: ");
            input = sc.nextLine().toLowerCase().replace(" ", "_");

            // Break condition
            if (input.isEmpty()) {
                printlnToFileAndSout("Exiting...");
                break;
            }

            Document doc = collection.find(Filters.eq("name", input)).first();

            if (doc == null) {
                InsertOneResult insertResult = collection.insertOne(
                        new Document("name", input).append("orders", List.of(LocalDateTime.now())));

                if (insertResult.wasAcknowledged()) {
                    printlnToFileAndSout("Added! Current orders for " + input + ": 1");
                } else {
                    printlnToFileAndSout("Adding order failed. Current orders for " + input + ": 0");
                }
                continue;
            }

            int ordersInTime = getOrdersInTime(input);

            if (ordersInTime < PRODUCTS_LIMIT) {
                UpdateResult updateResult =
                        collection.updateOne(new Document("name", input), Updates.push("orders", LocalDateTime.now()));

                if (updateResult.wasAcknowledged()) {
                    printlnToFileAndSout("Updated! Current orders for " + input + ": " + (ordersInTime + 1));
                } else {
                    printlnToFileAndSout("Update failed. Current orders for " + input + ": " + ordersInTime);
                }
            } else {
                printlnToFileAndSout("Rate limit exceeded!");
            }
        }

        printWriter.close();
    }
}
