package cbd.aula1;

import redis.clients.jedis.Jedis;

public class SimplePost {
    private static void setTest(Jedis jedis, String key, String[] users) {
        System.out.println("Starting set test");
        jedis.del(key); // remove if exists to avoid wrong type

        for (String user : users) {
            jedis.sadd(key, user);
        }
        jedis.smembers(key).forEach(System.out::println);
    }

    private static void listTest(Jedis jedis, String key, String[] users) {
        System.out.println("Starting list test");
        jedis.del(key); // remove if exists to avoid wrong type

        for (String user : users) {
            jedis.rpush(key, user);
        }

        jedis.lrange(key, 0, jedis.llen(key)).forEach(System.out::println);
    }

    private static void hashTest(Jedis jedis, String key, String[] keys, String[] values) {
        System.out.println("Starting list test");
        jedis.del(key); // remove if exists to avoid wrong type

        for (int i = 0; i < keys.length; i++) {
            jedis.hset(key, keys[i], values[i]);
        }

        jedis.hgetAll(key).entrySet().forEach(System.out::println);
    }

    public static void main(String[] args) {
        Jedis jedis = new Jedis();

        String[] users = { "Ana", "Pedro", "Maria", "Luis" };

        setTest(jedis, "set_key", users);
        listTest(jedis, "list_key", users);
        hashTest(jedis, "hash_key", users, users);

        jedis.close();
    }
}