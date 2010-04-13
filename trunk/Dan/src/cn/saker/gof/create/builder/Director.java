package cn.saker.designpattern.gof.create.builder;

public class Director {
    private Builder builder = null;
    
    public Director(Builder builder){
    	this.builder = builder;
    }
    
    public void construct(){
    	builder.buildFirstName();
    	builder.buildMiddleName();
    	builder.buildLastName();
    }
}
