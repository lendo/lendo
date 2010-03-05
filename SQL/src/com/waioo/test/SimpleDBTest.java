package com.waioo.test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.waioo.base.ConnectionFactory;

import junit.framework.TestCase;

public class SimpleDBTest extends TestCase {
    public void testConnectionIsValid(){
    	try{
    		
        	for(int i=0;i<1;i++){
        		ConnectionFactory factory = ConnectionFactory.getInstance();
            	Connection conn = factory.getConnection("Pool_SQL");
            	
            	Statement st = conn.createStatement();
            	System.out.println(conn.getWarnings());
            	
        		ResultSet rs = st.executeQuery("select * from user");
            	while(rs.next()){
            		System.out.print("" + rs.getString(1));
            		System.out.print(" " + rs.getString(2));
            		System.out.print(" " + rs.getString(3));
            		System.out.print(" " + rs.getString(4));
            		System.out.println(" " + rs.getString(5));
            	}
            	conn.close();
        	}
        	
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    }
}
