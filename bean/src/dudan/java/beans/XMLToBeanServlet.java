package dudan.java.beans;

import java.beans.XMLDecoder;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XMLToBeanServlet extends HttpServlet {
	public void doGet(HttpServletRequest resquest, HttpServletResponse response) {
		FileInputStream fos = null;
		BufferedInputStream bos = null;
		try {
			fos = new FileInputStream("db_config.xml");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		bos =  new BufferedInputStream(fos);
		
		XMLDecoder encoder = new XMLDecoder(bos);
		DBConfigBean bean = (DBConfigBean)encoder.readObject();
		
		resquest.setAttribute("dialect", bean.getDialect());
		resquest.setAttribute("userName", bean.getUserName());
		resquest.setAttribute("password", bean.getPassword());
		resquest.setAttribute("url", bean.getUrl());
		resquest.setAttribute("driver", bean.getDriver());
		
		RequestDispatcher dispatcher = resquest.getRequestDispatcher("config.jsp");
		try {
			dispatcher.forward(resquest, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

        encoder.close(); 
	}
	
	public void doPost(HttpServletRequest resquest,HttpServletResponse response){
		doGet(resquest,response);
	}
}
