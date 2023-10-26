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

public class AlineaB {
    private static final int LIMIT = 3;
    private static final int TIMESLOT = 1;

    private static final String uri = "mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000";
    private static final MongoClient mongoClient = MongoClients.create(uri);
    private static final MongoDatabase database = mongoClient.getDatabase("cbd");
    private static final MongoCollection<Document> collection = database.getCollection("orders");

    private static final PrintWriter printWriter;

    static {
        try {
            printWriter = new PrintWriter("CBD_L204b-out_107927.txt");
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static void printlnToFileAndSout(String string) {
        System.out.println(string);
        printWriter.println(string);
    }

    private static int getProductsInTime(String input) {
        List<Bson> pipeline = Arrays.asList(
                Aggregates.match(Filters.eq("name", input)),
                Aggregates.unwind("$orders"),
                Aggregates.match(Filters.gt("orders.timestamp", LocalDateTime.now().minusMinutes(TIMESLOT))),
                Aggregates.group("$_id", Accumulators.sum("count", "$orders.number"))
        );

        Document doc = collection.aggregate(pipeline).first();

        if (doc != null) {
            return (int) doc.get("count");
        }
        return 0;
    }

    public static void main(String[] args) {
        printlnToFileAndSout("Current products limit: " + LIMIT);
        printlnToFileAndSout("Current time slot: " + TIMESLOT + " minutes");

        Scanner sc = new Scanner(System.in);
        collection.drop();

        String nameInput;
        int productsInput;

        while (true) {
            System.out.print("\nInput the name: ");
            nameInput = sc.nextLine().toLowerCase().replace(" ", "_");

            // Break condition
            if (nameInput.isEmpty()) {
                printlnToFileAndSout("Exiting...");
                break;
            }

            System.out.print("Input the number of products: ");
            productsInput = Integer.parseInt(sc.nextLine());

            Document doc = collection.find(Filters.eq("name", nameInput)).limit(1).first();

            if (doc == null) {
                InsertOneResult insertResult = collection.insertOne(
                        new Document("name", nameInput).append("orders", List.of(new Document("timestamp", LocalDateTime.now()).append("number", productsInput))));

                if (insertResult.wasAcknowledged()) {
                    printlnToFileAndSout("Added! Current orders for " + nameInput + ": " + productsInput);
                } else {
                    printlnToFileAndSout("Adding order failed. Current orders for " + nameInput + ": 0");
                }
                continue;
            }

            int productsInTime = getProductsInTime(nameInput);

            if (productsInTime < LIMIT) {
                UpdateResult updateResult =
                        collection.updateOne(new Document("name", nameInput), Updates.push("orders", new Document("timestamp", LocalDateTime.now()).append("number", productsInput)));

                if (updateResult.wasAcknowledged()) {
                    printlnToFileAndSout("Updated! Current orders for " + nameInput + ": " + (productsInTime + 1));
                } else {
                    printlnToFileAndSout("Update failed. Current orders for " + nameInput + ": " + productsInTime);
                }
            } else {
                printlnToFileAndSout("Rate limit exceeded!");
            }
        }

        printWriter.close();
    }
}
