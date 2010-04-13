package cn.saker.classloader;

import java.net.URL;
import java.net.URLClassLoader;

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
	public static void main(String[] args) throws Exception {
//		A a = new A();
//		a.print();
		
//		B b = new B();
//		b.print();
		
        B b = null; //如果将上面两段代码删除，执行此段代码，注意类B是否会被加载
        
        /**
         * 注意这两段代码的区别，静态初始化代码是在:"类第一次被实例化的时候才被调用，而且仅仅调用一次"
         * 而不是"在类第一次被加载的时候被调用"
         */
//      Class clazz1 = Class.forName("com.waioo.classloader.A",false,ClassLoader.getSystemClassLoader());
        System.out.println(ClassLoader.getSystemClassLoader());
//      Class clazz2 = Class.forName("com.waioo.classloader.A",true,ClassLoader.getSystemClassLoader());
//      Printable p = (Printable)clazz.newInstance();
        
        URL url = new URL("file:/e:/workspace/eclipse/Dan/WebRoot/WEB-INF/classes/cn/saker/classloader");
        URLClassLoader classLoader = new URLClassLoader(new URL[]{url});
        Class clazz2 = classLoader.loadClass("cn.saker.classloader.A");
        System.out.println(clazz2.newInstance());
        Printable p1 = (Printable)clazz2.newInstance(); 
        p1.print();
        System.out.println("///////////////");
	}
}
