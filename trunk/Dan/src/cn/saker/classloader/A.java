package cn.saker.classloader;

public class A implements Printable {
	static {
		System.out.println("Initilize the static code......");
	}
    public void print(){
    	System.out.println("----------------from A."); 
    }
}
