package pt.ua.cbd.lab3.ex3;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import com.datastax.oss.driver.api.core.cql.Row;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public class Main {
    private static @NotNull List<Row> exercise2_4(@NotNull CqlSession session) {
        ResultSet rs = session.execute("SELECT * FROM event WHERE author_username = 'joaosilva' " +
                                               "AND video_id = 2a949560-77bb-4f85-b604-1d4c694f3bd6 " +
                                               "AND username = 'anacosta' " +
                                               "LIMIT 5");
        return rs.all();
    }

    private static @NotNull List<Row> exercise2_7(@NotNull CqlSession session) {
        ResultSet rs = session.execute("SELECT * FROM video_followers WHERE author_username = 'joaosilva' " +
                                               "AND video_id = 2a949560-77bb-4f85-b604-1d4c694f3bd6");
        return rs.all();
    }

    private static @NotNull List<Row> exercise2_11(@NotNull CqlSession session) {
        ResultSet rs = session.execute("SELECT tag, count(*) FROM video_by_tag GROUP BY tag;");
        return rs.all();
    }

    private static @NotNull List<Row> exercise2_13(@NotNull CqlSession session) {
        ResultSet rs = session.execute("SELECT author_username, video_id, count(*) FROM event " +
                                               "GROUP BY author_username, video_id;");
        return rs.all();
    }

    public static void main(String[] args) {
        try (CqlSession session = CqlSession.builder().build()) {
            session.execute("USE cbd_lab3");

            System.out.println("Exercise 4");
            for (Row row : exercise2_4(session)) {
                System.out.println(row.getString("event"));
            }

            System.out.println("\nExercise 7");
            for (Row row : exercise2_7(session)) {
                System.out.printf(row.getString("follower_username") + ", ");
                System.out.printf(row.getString("follower_email") + ", ");
                System.out.printf(row.getString("follower_name") + ", ");
                System.out.printf(row.getInstant("follower_register_date") + "\n");
            }

            System.out.println("\nExercise 11");
            for (Row row : exercise2_11(session)) {
                System.out.printf(row.getString("tag") + ", ");
                System.out.printf(row.getLong("count") + "\n");
            }

            System.out.println("\nExercise 13");
            for (Row row : exercise2_13(session)) {
                System.out.printf(row.getString("author_username") + ", ");
                System.out.printf(row.getUuid("video_id") + ", ");
                System.out.printf(row.getLong("count") + "\n");
            }
        } catch (Exception e) {
            System.out.println("Could not complete queries! Error: " + e.getMessage());
        }
    }
}