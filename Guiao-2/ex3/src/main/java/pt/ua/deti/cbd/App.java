package pt.ua.deti.cbd;

import com.mongodb.client.*;
import com.mongodb.client.model.*;
import com.mongodb.client.result.InsertOneResult;
import com.mongodb.client.result.UpdateResult;
import org.bson.Document;
import org.bson.conversions.Bson;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

public class App {
    private static final String uri = "mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000";
    private static final MongoClient mongoClient = MongoClients.create(uri);
    private static final MongoDatabase database = mongoClient.getDatabase("cbd");
    private static final MongoCollection<Document> collection = database.getCollection("restaurants");

    private static final PrintWriter printWriter;

    static {
        try {
            printWriter = new PrintWriter("CBD_L203_107927.txt");
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static void printlnToFileAndSout(String string) {
        System.out.println(string);
        printWriter.println(string);
    }

    private static void exA() {
        // Insert
        Document doc =
                new Document().append("address", new Document()).append("localidade", "").append("gastronomia", "")
                              .append("grades", List.of()).append("nome", "").append("restaurant_id", 999999990);

        InsertOneResult result = App.collection.insertOne(doc);
        if (result.wasAcknowledged()) {
            System.out.println("Inserted sucessfully. ID is " + result.getInsertedId());
        }


        // Update
        Bson filter = Filters.eq("restaurant_id", doc.get("restaurant_id"));
        Bson update = Updates.set("localidade", "exA");
        UpdateOptions options = new UpdateOptions().upsert(true);

        UpdateResult result2 = App.collection.updateOne(filter, update, options);
        if (result2.wasAcknowledged()) {
            System.out.println("Updated sucessfully.");
        }


        // Search (and delete)
        Document doc2 = App.collection.findOneAndDelete(Filters.eq("restaurant_id", 999999990));
        assert doc2 != null;
        System.out.println(doc2.toJson());
    }

    private static void exB() {
        App.collection.dropIndexes();

        FindIterable<Document> cursor =
                App.collection.find(Filters.and(Filters.eq("localidade", "Brooklyn"), Filters.eq("name", "Mc")));
        System.out.println("Before indexes: " + cursor.explain().toBsonDocument().get("executionStats").asDocument()
                                                      .get("executionTimeMillis").asInt32().getValue() + "ms");

        // Create indexes
        App.collection.createIndex(Indexes.ascending("localidade"));
        App.collection.createIndex(Indexes.ascending("gastronomia"));
        App.collection.createIndex(Indexes.text("nome"));

        FindIterable<Document> cursor2 =
                App.collection.find(Filters.and(Filters.eq("localidade", "Brooklyn"), Filters.eq("name", "Mc")));
        System.out.println("After indexes: " + cursor2.explain().toBsonDocument().get("executionStats").asDocument()
                                                      .get("executionTimeMillis").asInt32().getValue() + "ms");
    }

    private static void exC_3() {
        Bson projectionFields = Projections.fields(
                Projections.include("restaurant_id", "nome", "localidade", "gastronomia", "address.zipcode"),
                Projections.excludeId());

        // collection.find().projection(projectionFields).forEach(document -> System.out.println(document.toJson()));

        System.out.println(App.collection.countDocuments() + " documents. First one:");

        Document doc = App.collection.find().projection(projectionFields).first();
        if (doc != null) {
            System.out.println(doc.toJson());
        }
    }

    private static void exC_12() {
        Bson projectionFields =
                Projections.fields(Projections.include("restaurant_id", "nome", "localidade", "gastronomia"),
                                   Projections.excludeId());

        Bson filter = Filters.in("localidade", Arrays.asList("Staten Island", "Queens", "Brooklyn"));

        App.collection.find(filter).projection(projectionFields)
                      .forEach(document -> System.out.println(document.toJson()));
    }

    private static void exC_14() {
        Bson projectionFields = Projections.fields(Projections.include("nome", "grades"), Projections.excludeId());

        Bson find = Filters.elemMatch("grades", new Document("grade", "A").append("score", 10).append("date",
                                                                                                      LocalDateTime.parse(
                                                                                                              "2014-08-11T00:00:00")));

        App.collection.find(find).projection(projectionFields)
                      .forEach(document -> System.out.println(document.toJson()));
    }

    private static void exC_20() {
        App.collection.aggregate(Arrays.asList(
                   Aggregates.group("$nome", Accumulators.sum("numGrades", new Document("$size", "$grades"))),
                   Aggregates.sort(Sorts.descending("numGrades")), Aggregates.limit(3)))
                      .forEach(document -> System.out.println(document.toJson()));
    }

    private static void exC_22() {
        App.collection.aggregate(List.of(Aggregates.group("$localidade", Accumulators.sum("total", 1))))
                      .forEach(document -> System.out.println(document.toJson()));
    }

    private static int countLocalidades() {
        AtomicInteger count = new AtomicInteger();

        collection.distinct("localidade", String.class).forEach(string -> count.getAndIncrement());

        return count.get();
    }

    private static Map<String, Integer> countRestByLocalidade() {
        Map<String, Integer> map = new HashMap<>();

        collection.aggregate(List.of(Aggregates.group("$localidade", Accumulators.sum("total", 1))))
                  .forEach(document -> map.put(document.getString("_id"), document.getInteger("total")));

        return map;
    }

    private static List<String> getRestWithNameCloserTo(String name) {
        List<String> list = new ArrayList<>();

        App.collection.createIndex(Indexes.text("nome"));

        Bson filter = Filters.regex("nome", name);
        collection.find(filter).forEach(document -> list.add(document.get("nome").toString()));

        return list;
    }

    public static void main(String[] args) {
        // Uncomment code as needed
        // App.exA();
        // App.exB();
        // App.exC_3();
        // App.exC_12();
        // App.exC_14();
        // App.exC_20();
        // App.exC_22();

        // countLocalidades()
        printlnToFileAndSout("Número de localidades distintas: " + countLocalidades());

        // countRestByLocalidade()
        printlnToFileAndSout("\nNúmero de restaurantes por localidade:");
        countRestByLocalidade().forEach((key, value) -> printlnToFileAndSout(" -> " + key + " - " + value));

        // getRestWithNameCloserTo(String name)
        printlnToFileAndSout("\nNome de restaurantes contendo 'Park' no nome:");
        getRestWithNameCloserTo("Park").forEach(string -> printlnToFileAndSout(" -> " + string));

        printWriter.close();
    }
}
