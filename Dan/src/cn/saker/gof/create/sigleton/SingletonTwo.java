package cn.saker.designpattern.gof.create.sigleton;

public class SingletonTwo {
	private static SingletonTwo singleton = new SingletonTwo();
	
	private SingletonTwo(){}
	
	public static SingletonTwo getInstance(){
		return singleton;
	}
}
