package dudan.java.beans;

import java.beans.XMLEncoder;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BeanToXMLServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest resquest,HttpServletResponse response){
		String userName = resquest.getParameter("userName");
		String password = resquest.getParameter("password");
		String url = resquest.getParameter("url");
		String dialect = resquest.getParameter("dialect");
		String driver = resquest.getParameter("driver");
		
		DBConfigBean bean = new DBConfigBean();
		if(dialect==null) bean.setDialect("");
		else bean.setDialect(dialect);
		if(driver==null) bean.setDriver(""); 
		else bean.setDriver(driver);
		if(password==null)bean.setPassword("");
		else bean.setPassword(password);
		if(url==null) bean.setUrl("");
		else bean.setUrl(url);
		if(userName==null) bean.setUserName("");
		else bean.setUserName(userName);
		
		FileOutputStream fos = null;
		BufferedOutputStream bos = null;
		try {
			fos = new FileOutputStream("db_config.xml");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		bos =  new BufferedOutputStream(fos);
		
		XMLEncoder encoder = new XMLEncoder(bos);
		
		encoder.writeObject(bean);
		encoder.close();
		try {
			response.sendRedirect("xmltobean.dudan");
		} catch (IOException e) {
			e.printStackTrace();
		}
	} 
	
	public void doPost(HttpServletRequest resquest,HttpServletResponse response){
		doGet(resquest,response);
	}
    
}
