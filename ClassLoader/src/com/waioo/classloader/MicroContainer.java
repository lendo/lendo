package com.waioo.classloader;
import java.util.ResourceBundle;

public class MicroContainer {
    private static ResourceBundle rb = null;
    
    private MicroContainer(){};
    
    public static MicroContainer getInstance(){
    	if(rb==null){
    		rb = ResourceBundle.getBundle("config");
    	}
    	
    	return new MicroContainer();
    }
    
    public Object getObject(String className){
    	Object object = null;
		try {
			Class clazz = Class.forName(className);
			object = clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return object;
    }
}
