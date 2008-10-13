package dudan.java.beans.xml;

import java.beans.XMLEncoder;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 从JavaBean生成XML文件
 * 如果JavaBean的属性的值为默认初始值,那么将不会输出该节点到输出流
 * 例如：当int=0,String=null,boolean=false,自定义类型=null的时候,将会忽略该节点
 * 注意：即使String="",系统仍然会输出该节点
 * 
 * 在从XML文件加载到JavaBean对象的时候,同样会根据这些默认值进行填充
 * 
 * 2008-10-11 上午12:53:24
 * @author 杜丹
 */
public class DudanBeanToXMLEncoder {
	public static void main(String[] args) {
		FileOutputStream fos = null;
		BufferedOutputStream bos = null;
		try {
			fos = new FileOutputStream("user.xml");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		bos =  new BufferedOutputStream(fos);
		
		XMLEncoder encoder = new XMLEncoder(bos);
		
		User user = new User();
		user.setAge(10);
		user.setBirth(new Date());
		user.setId("0x4535435");
		user.setName("杜丹");
		user.setPassword("111111");
		user.setScore(98);
		
		List list = new ArrayList();
		Role role = null;
		for(int i=0;i<2;i++){
			role = new Role();
			role.setId(i);
			role.setRoleName("角色" + i);
			role.setRoleCode(String.valueOf(10 + i));
			list.add(role);
		}
		user.setList(list);
		
		encoder.writeObject(user);
        encoder.close(); 
	}
}
