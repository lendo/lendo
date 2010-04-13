package cn.saker.designpattern.gof.create.factory;

public class SimpleFactoryTest {
	public static void main(String[] args) {
		Column column0 = SimpleFactory.create(1);
		Column column2 = SimpleFactory.create(2);
		Column column4 = SimpleFactory.create(3);
		
		System.out.println(column0.getColumnName() + "--" + column0.getColumnProperty());
		System.out.println(column2.getColumnName() + "--" + column2.getColumnProperty());
		System.out.println(column4.getColumnName() + "--" + column4.getColumnProperty());
	}
}
