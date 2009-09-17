package com.waioo.base;

import java.sql.Connection;

import org.smartlib.pool.core.PoolManager;
import org.smartlib.pool.core.PoolManagerImpl;

public class ConnectionFactory {
	
	private static ConnectionFactory factory = null;
	
	private ConnectionFactory(){};
	
    public static ConnectionFactory getInstance(){
    	if(factory==null){
    		return new ConnectionFactory();
    	}else{
    		return factory;
    	}
    }
    
    public Connection getConnection(String poolName){
    	Connection conn = null;
    	
    	try{
    		PoolManager pm = new PoolManagerImpl("D:\\javaworkspace\\SQL\\config\\pool-config.xml");
    		return pm.getConnection(poolName);
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return conn;
    }

}
