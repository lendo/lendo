package dudan.java.util.collection;



public class A {
	public static void main(String[] args) {
//		Date date1 = null;
//		Date date2 = null;
//		System.out.println(date1==date2);
//		System.out.println(date1==null ? date2==null:date1.equals(date2));
		
		String str1 = new String("dudan");
		
		Object obj = str1;
		
		System.out.println(str1.equals(obj));
		
		String str2 = "dudan";
		String str3 = new String("dudan");
		System.out.println(str2==str3);
		System.out.println(str2==null ? str3==null:str2.equals(str3));
		
		String a = "123";
		String anew = new String("123");
		
		String b = "456";
		String bnew = new String("456");
		
		String c = a + b;
		String cnew = anew + bnew;
		
		System.out.println(c == cnew);
		System.out.println(c.equals(cnew));
	}

}
