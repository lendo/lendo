package com.waioo.parser;

import java.io.File;
import java.io.FileReader;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;


public class TestParser {
	public static void main(String[] args) throws Exception {
		TestParser a = new TestParser();
		File file = new File("E:\\workspace\\eclipse\\parser\\example\\index.htm");
		long size = file.length();
		String sizeStr = String.valueOf(size);
		char data[]= new char[Integer.parseInt(sizeStr)];
		FileReader fr = new FileReader(file);
		int num = fr.read(data);
		String str=new String(data,0,num); 
		StringBuffer sb = new StringBuffer();
		sb.append(str);
		
		SAXReader reader = new SAXReader();
	    Document document = reader.read(file);
	    List list = document.selectNodes("//block");
	    
	    int len = list.size();
	    Element e = null;
	    for(int i=0;i<len;i++){
	    	e = (Element)list.get(i);
	    	System.out.println(e.attributeValue("id"));
	    	System.out.println(e.element("blocktitle").getText());
	    	System.out.println(e.element("blockbody").getText());
	    	System.out.println("-----------------------------------------------------------");
	    	
	    }
	}	
}
