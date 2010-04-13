package cn.saker.designpattern.gof.create.builder;

public class BuilderTest {

	public static void main(String[] args) {
		Builder builder = new NameBuilder();
		Director director = new Director(builder);
		director.construct();
		System.out.println(builder.getFullName());
	}

}
