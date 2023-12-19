package pt.ua.cbd.lab4.ex4;

import org.neo4j.driver.*;
import org.neo4j.driver.Record;

public class Main implements AutoCloseable {
    private final Driver driver;

    public Main(String uri) {
        driver = GraphDatabase.driver(uri, AuthTokens.none());
    }

    public static void main(String... args) {
        try (var db = new Main("bolt://localhost:7687")) {
            // db.deleteAll();
            // db.createNodes();
            // db.query1();
            db.query2();
        }
    }

    @Override
    public void close() throws RuntimeException {
        driver.close();
    }

    public void deleteAll() {
        try (var session = driver.session()) {
            session.executeWrite(tx -> {
                var query = new Query("MATCH (n) DETACH DELETE n");
                tx.run(query);
                return null;
            });
            System.out.println("Cleaned database.");
        }
    }

    private void createNodes() {
        try (var session = driver.session()) {
            session.executeWrite(tx -> {
                var query = new Query(
                        """
                                LOAD CSV WITH HEADERS FROM 'file:///resources/googleplaystore.csv' AS row
                                MERGE (a:App {name: row.App})
                                MERGE (c:Category {name: row.Category})
                                MERGE (cr:ContentRating {name: row.`Content Rating`})
                                MERGE (i:Installs {name: row.Installs})
                                MERGE (a)-[:CATEGORY]->(c)
                                MERGE (a)-[:CONTENT_RATING]->(cr)
                                MERGE (a)-[:INSTALLS]->(i)""");
                tx.run(query);
                return null;
            });
            System.out.println("Inserted nodes.");
        }
    }

    private void query1() {
        System.out.println("\n--- Query 1 ---");
        System.out.println(">> Find first 10 apps from HOUSE_AND_HOME, sorted alphabetically\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (a:App)-[:CATEGORY]->(c:Category {name: "HOUSE_AND_HOME"})
                                              RETURN a.name as name
                                              ORDER BY name
                                              LIMIT 10""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("name").asString());
            }
        }
    }

    private void query2() {
        System.out.println("\n--- Query 2 ---");
        System.out.println(">> Count the number of apps in each category, with descending order\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (a:App)-[:CATEGORY]->(c:Category)
                                              RETURN c.name as category, count(*) as count
                                              ORDER BY count DESC""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("category").asString() + ": " + record.get("count").asInt());
            }
        }
    }
}