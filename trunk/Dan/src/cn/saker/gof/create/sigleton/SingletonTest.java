package cn.saker.designpattern.gof.create.sigleton;

public class SingletonTest {

	public static void main(String[] args) {
		SingletonOne so1 = SingletonOne.getInstance();
		SingletonOne so2 = SingletonOne.getInstance();
		
		System.out.println(so1==so2);
		System.out.println(so1.equals(so2));
		
		SingletonTwo st1 = SingletonTwo.getInstance();
		SingletonTwo st2 = SingletonTwo.getInstance();
		
		System.out.println(st1==st2);
		System.out.println(st1.equals(st2));
	}

}
