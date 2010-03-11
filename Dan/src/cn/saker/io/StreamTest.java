package cn.saker.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class StreamTest {

	public static void main(String[] args) throws Exception {
		File file = new File("test.stream");
		if(!file.exists()){
			file.createNewFile();
		}
	    InputStream stream = new FileInputStream(file);
	    byte[] content = new byte[1];
	    StringBuffer s = new StringBuffer();
//	    while(stream.read(content)!=-1){
//	    	s.append(new String(content));
//	    }
	    
	    
	    String x = new StreamTest().simpleRead(stream);
	    System.out.println(x);
	    
	    stream.close();
	}
	
	public String simpleRead(InputStream stream) throws Exception {
		String text = null;
		
		if(stream!=null){
			int[] code = new int[1000];
			int eachCode = 0;
			int i = 0;
			while((eachCode = stream.read())!=-1){
				code[0] = eachCode;
				i++;
			}
			text = new String(code,0,code.length);
		}
		
		return text;
	}

}
