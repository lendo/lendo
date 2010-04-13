package cn.saker.designpattern.gof.create.factory;

public class SimpleFactory {
    public static Column create(int columnType){
    	Column column = null;
    	
    	try{
    		if(columnType==1){
        		column = (Column)CommonColumn.class.newInstance();
        	}else if(columnType==2){
        		column = (Column)CompositeColumn.class.newInstance();
        	}else if(columnType==3){
        		column = (Column)CustomColumn.class.newInstance();
        	}else{
        		// empty stub
        	}
    	}catch(Exception e){
    		
    	}
    	
    	return column;
    }
}
