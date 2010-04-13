package cn.saker.designpattern.gof.create.sigleton;

public class SingletonOne {
	private static SingletonOne singleton = null;
	
    private SingletonOne(){}
    
    public static synchronized SingletonOne getInstance(){
    	if(singleton==null){
    		singleton = new SingletonOne();
    	}
    	
    	return singleton;
    }
}
