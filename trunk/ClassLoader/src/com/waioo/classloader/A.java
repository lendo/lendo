package com.waioo.classloader;

public class A implements Printable {
	static {
		System.out.println("Inlitianize the static code......");
	}
    public void print(){
    	System.out.println("----------------from A."); 
    }
}
