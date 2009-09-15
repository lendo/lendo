package com.waioo.classloader;

/**
 * 此类主要是为了验证ClassLoader加载类的顺序
 * 在执行时需要设置"jvm -verbose:class"
 * 然后查看类的加载顺序，程序执行顺序以及哪些类会被加载
 * 
 * version 1.0 by Dan Du
 * 2009-9-15 下午04:11:17
 * @author Dan Du
 */
public class Main {
	public static void main(String[] args) {
		A a = new A();
		a.print();
		
//		B b = new B();
//		b.print();
		
        B b = null; //如果将上面两段代码删除，执行此段代码，注意类B是否会被加载
        
        a.print();
	}
}
