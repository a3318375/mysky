package mysky;

import redis.clients.jedis.Jedis;

public class redisTest {
	 public static void main(String[] args) {
	      //Connecting to Redis server on localhost
	      Jedis jedis = new Jedis("192.168.5.101",6379);
	      System.out.println("Connection to server sucessfully");
	      //set the data in redis string
	      jedis.set("tutorial-name", "Redis tutorial");
	     // Get the stored data and print it
	     System.out.println("Stored string in redis:: "+ jedis.get("tutorial-name"));
	 }
}
