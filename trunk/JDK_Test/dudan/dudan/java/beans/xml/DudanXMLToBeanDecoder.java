package dudan.java.beans.xml;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/**
 * 从XML文件生成JavaBean
 * 
 * 2008-10-11 上午12:52:45
 * @author 杜丹
 */
public class DudanXMLToBeanDecoder {
	
	public static void main(String[] args) {
		FileInputStream fos = null;
		BufferedInputStream bos = null;
		try {
			fos = new FileInputStream("user.xml");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		bos =  new BufferedInputStream(fos);
		
		java.beans.XMLDecoder encoder = new java.beans.XMLDecoder(bos);
		User user = (User)encoder.readObject();
		System.out.println(user.getAge());
		System.out.println(user.getId());
		System.out.println(user.getName());
        encoder.close(); 
	}

}
