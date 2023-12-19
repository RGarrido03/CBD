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
            db.deleteAll();
            db.createNodes();
            db.query1();
            db.query2();
            db.query3();
            db.query4();
            db.query5();
            db.query6();
            db.query7();
            db.query8();
            db.query9();
            db.query10();
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

    private void query3() {
        System.out.println("\n--- Query 3 ---");
        System.out.println(">> List 20 apps with 50M+ installs, ordered by descending name\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (a:App)-[:INSTALLS]->(i:Installs {name: "50,000,000+"})
                                              RETURN a.name as app
                                              ORDER BY app DESC
                                              LIMIT 20""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("app").asString());
            }
        }
    }

    private void query4() {
        System.out.println("\n--- Query 4 ---");
        System.out.println(">> List 20 games with 50M+ installs\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category {name: "GAME"})<-[:CATEGORY]-(a:App)-[:INSTALLS]->(i:Installs {name: "50,000,000+"})
                                              RETURN a.name as app
                                              LIMIT 20""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("app").asString());
            }
        }
    }

    private void query5() {
        System.out.println("\n--- Query 5 ---");
        System.out.println(">> List the number of games for each rating, sorted by count\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category {name: "GAME"})<-[:CATEGORY]-(a:App)-[:CONTENT_RATING]->(cr:ContentRating)
                                              RETURN cr.name AS rating, count(*) AS count
                                              ORDER BY count DESC""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("rating").asString() + ": " + record.get("count").asInt());
            }
        }
    }

    private void query6() {
        System.out.println("\n--- Query 6 ---");
        System.out.println(">> Show install statistics for category Family\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category {name: "FAMILY"})<-[:CATEGORY]-(a:App)-[:INSTALLS]->(i:Installs)
                                              RETURN i.name as installs, count(*) AS count
                                              ORDER BY installs""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("installs").asString() + ": " + record.get("count").asInt());
            }
        }
    }

    private void query7() {
        System.out.println("\n--- Query 7 ---");
        System.out.println(">> Show popular navigation apps\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category {name: "MAPS_AND_NAVIGATION"})<-[:CATEGORY]-(a:App)-[:INSTALLS]->(i:Installs {name: "50,000,000+"})
                                              RETURN a.name as app
                                              ORDER BY app""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("app").asString());
            }
        }
    }

    private void query8() {
        System.out.println("\n--- Query 8 ---");
        System.out.println(">> Show the most popular apps and their categories\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category)<-[:CATEGORY]-(a:App)-[:INSTALLS]->(i:Installs {name: "500,000,000+"})
                                              RETURN a.name as app, c.name as category""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("app").asString() + ": " + record.get("category").asString());
            }
        }
    }

    private void query9() {
        System.out.println("\n--- Query 9 ---");
        System.out.println(">> Show info about Instagram\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (c:Category)<-[:CATEGORY]-(a:App {name: "Instagram"})-[:INSTALLS]->(i:Installs)
                                              RETURN a.name as name, c.name as category, i.name as installs""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println("Name: " + record.get("name").asString());
                System.out.println("Category: " + record.get("category").asString());
                System.out.println("Installs: " + record.get("installs").asString());
            }
        }
    }

    private void query10() {
        System.out.println("\n--- Query 10 ---");
        System.out.println(">> Show installs stats regarding apps meant for teens\n");

        try (var session = driver.session()) {
            var result = session.executeRead(tx -> {
                var query = new Query("""
                                              MATCH (cr:ContentRating {name: "Teen"})<-[:CONTENT_RATING]-(a:App)-[:INSTALLS]->(i:Installs)
                                              RETURN i.name as installs, count(*) as count""");
                var r = tx.run(query);
                return r.list();
            });
            for (Record record : result) {
                System.out.println(record.get("installs").asString() + ": " + record.get("count").asInt());
            }
        }
    }
}