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
	    while(stream.read(content)!=-1){
	    	s.append(new String(content));
	    }
	    
	    System.out.println(s.toString());
	    
	    stream.close();
	}
}
