package cn.saker.nosql.mongodb;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

public class FirstTest {

	public static void main(String[] args) throws Exception {
		Mongo mongo = new Mongo("127.0.0.1", 27017);   
        //如果没有对应的users数据库，数据库会为此创建一个   
        DB db = mongo.getDB("users");   
        //如果没有对应的userCollection，数据库会创建一个   
        DBCollection coll = db.getCollection("userCollection");   
        long x = System.currentTimeMillis();
        System.out.println(System.currentTimeMillis());
        for(int i=0;i<100000;i++){
        	DBObject user = new BasicDBObject();   
            user.put("name", "dan");   
            user.put("password", "lendo"); 
            DBObject address = new BasicDBObject();
            address.put("phone", "4435079");
            address.put("createDate", new Date());
            user.put("address", address);

            coll.insert(user);  
        }
        long y = System.currentTimeMillis();
        System.out.println(System.currentTimeMillis());
        System.out.println((y-x)/1000);
        
        db.dropDatabase();
	}
}
